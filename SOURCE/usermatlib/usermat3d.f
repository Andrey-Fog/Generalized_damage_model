*deck,usermat3d    USERDISTRIB  parallel                                gal
      subroutine usermat3d(
     &                   matId, elemId,kDomIntPt, kLayer, kSectPt,
     &                   ldstep,isubst,keycut,
     &                   nDirect,nShear,ncomp,nStatev,nProp,
     &                   Time,dTime,Temp,dTemp,
     &                   stress,ustatev,dsdePl,sedEl,sedPl,epseq,
     &                   Strain,dStrain, epsPl, prop, coords, 
     &                   var0, defGrad_t, defGrad,
     &                   tsstif, epsZZ, cutFactor, 
     &                   var1, var2, var3, var4, var5,
     &                   var6, var7)
c      
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS:"USERMAT3D"::usermat3d 
c*************************************************************************
c     input arguments
c     ===============
c      matId     (int,sc,i)               material #
c      elemId    (int,sc,i)               element #
c      kDomIntPt (int,sc,i)               "k"th domain integration point
c      kLayer    (int,sc,i)               "k"th layer
c      kSectPt   (int,sc,i)               "k"th Section point
c      ldstep    (int,sc,i)               load step number
c      isubst    (int,sc,i)               substep number
c      nDirect   (int,sc,in)              # of direct components
c      nShear    (int,sc,in)              # of shear components
c      ncomp     (int,sc,in)              nDirect + nShear
c      nstatev   (int,sc,l)               Number of state variables
c      nProp     (int,sc,l)               Number of material ocnstants
c
c      Temp      (dp,sc,in)               temperature at beginning of
c                                         time increment
c      dTemp     (dp,sc,in)               temperature increment 
c      Time      (dp,sc,in)               time at beginning of increment (t)
c      dTime     (dp,sc,in)               current time increment (dt)
c
c      Strain   (dp,ar(ncomp),i)          Strain at beginning of time increment
c      dStrain  (dp,ar(ncomp),i)          Strain increment
c      prop     (dp,ar(nprop),i)          Material constants defined by TB,USER
c      coords   (dp,ar(3),i)              current coordinates
c      defGrad_t(dp,ar(3,3),i)            Deformation gradient at time t
c      defGrad  (dp,ar(3,3),i)            Deformation gradient at time t+dt
c
c     input output arguments              
c     ======================             
c      stress   (dp,ar(nTesn),io)         stress
c      ustatev   (dp,ar(nstatev),io)      user state variable
c      sedEl    (dp,sc,io)                elastic work
c      sedPl    (dp,sc,io)                plastic work
c      epseq    (dp,sc,io)                equivalent plastic strain
c      tsstif   (dp,ar(2),io)             transverse shear stiffness
c                                         tsstif(1) - Gxz
c                                         tsstif(2) - Gyz
c                                         tsstif(1) is also used to calculate hourglass
c                                         stiffness, this value must be defined when low
c                                         order element, such as 181, 182, 185 with uniform 
c                                         integration is used.
c      var?     (dp,sc,io)                not used, they are reserved arguments 
c                                         for further development
c
c     output arguments
c     ================
c      keycut   (int,sc,io)               loading bisect/cut control
c                                         0 - no bisect/cut
c                                         1 - bisect/cut 
c                                         (factor will be determined by ANSYS solution control)
c      dsdePl   (dp,ar(ncomp,ncomp),io)   material jacobian matrix
c      epsZZ    (dp,sc,o)                 strain epsZZ for plane stress,
c                                         define it when accounting for thickness change 
c                                         in shell and plane stress states
c      cutFactor(dp,sc,o)                 time step size cut-back factor 
c                                         define it if a smaller step size is wished
c                                         recommended value is 0~1
c
c*************************************************************************
c
c      ncomp   6   for 3D  (nshear=3)
c      ncomp   4   for plane strain or axisymmetric (nShear = 1)
c
c      stresss and strains, plastic strain vectors
c          11, 22, 33, 12, 23, 13    for 3D
c          11, 22, 33, 12            for plane strain or axisymmetry
c
c      material jacobian matrix
c        3D
c           dsdePl    |  1111   1122   1133   1112   1123   1113 |
c           dsdePl    |  2211   2222   2233   2212   2223   2213 |
c           dsdePl    |  3311   3322   3333   3312   3323   3313 |
c           dsdePl    |  1211   1222   1233   1212   1223   1213 |
c           dsdePl    |  2311   2322   2333   2312   2323   2313 |
c           dsdePl    |  1311   1322   1333   1312   1323   1313 |
c        plane strain or axisymmetric (11, 22, 33, 12)
c           dsdePl    |  1111   1122   1133   1112 |
c           dsdePl    |  2211   2222   2233   2212 |
c           dsdePl    |  3311   3322   3333   3312 |
c           dsdePl    |  1211   1222   1233   1212 |
c
c*************************************************************************


#include "impcom.inc"
c
      EXTERNAL material_residuals_wrapper, material_jacobian
      EXTERNAL compute_elastic_tensor, compute_yield_function
      EXTERNAL solve_linear_system, compute_tangent_matrix
      integer matId, elemId, kDomIntPt, kLayer, kSectPt,
     &        ldstep, isubst, keycut,
     &        nDirect, nShear, ncomp, nStatev, nProp

      
      double precision Time, dTime, Temp, dTemp,
     &       stress(ncomp), ustatev(nStatev), dsdePl(ncomp,ncomp),
     &       sedEl, sedPl, epseq, Strain(ncomp), dStrain(ncomp),
     &       epsPl(ncomp), prop(nProp), coords(3), 
     &       defGrad_t(3,3), defGrad(3,3),
     &       tsstif(2), epsZZ, cutFactor, pVolDer(3),
     &       hrmflg

      double precision var0, var1, var2, var3, var4, var5,
     &                 var6, var7
      !local
      integer, parameter :: nvars = 42
      double precision :: params(60), vars(nvars)
      double precision :: F(nvars) = 0.0d0, Jac(nvars,nvars) = 0.0d0 
      double precision :: e_total(6)
      integer i, j, NR_iter,NR_maxiter
      double precision tol, normF
      double precision  stress_trial(6), e_el_trial(6), X_total(6), 
     &            s_eff_trial(6)
      double precision Young, nue ,D_sum_0, sigma_y0, 
     &             e_pl_eqv, K_Iso, m_Iso, phi_pl, norm_s_minus_X
      logical converged, plastic_loading
      !initialization
      params(1) = dTime
      NR_maxiter = 50
      tol = 1.0d-8
      converged = .false.
      !total strain
      e_total(1:6) = Strain(1:6) + dStrain(1:6)
      
      !Parameters (58):
!1-6: e_total components
!7-12: e_pl_0 components
!13-18: e_cr_0 components
!19-24: X1_0 components
!25-30: X2_0 components
!31-36: X3_0 components
!37: D_pl_0
!38: D_cr_0
!39: e_pl_eqv_0....
      !material properties
!40: Young
!41: nu
!42: sigma_y0
!43: A_iso
!44: B_iso
!45: A_cr
!46: B_cr
!47: C1_X
!48: gamma1_X
!49: C2_X
!50: gamma2_X
!51: C3_X
!52: gamma3_X
!53: A_lem
!54: B_lem
!55: C_lem
!56: A_dmg
!57: B_dmg
      params(1:6) = e_total
      !get from ustatev
      params(7:39) = ustatev(7:39)   !
      params(40:57) = prop(1:18)
      params(58)=dtime
      
      Young = prop(1) 
      nue = prop(2)
      sigma_y0  = prop(3) 
      K_Iso = prop(15)
      m_Iso = prop(16)
      

      

      ! elastic predictor
      call compute_elastic_tensor(Young, nue, dsdePl)
       ! trial elastic
      e_el_trial(1:6) = e_total(1:6) - ustatev(1:6) - ustatev(7:12)
      stress_trial = 0.0d0
      do i = 1, 6
       do j = 1, 6
        stress_trial(i) = stress_trial(i) + dsdePl(i,j) * e_el_trial(j)
       enddo
      enddo
      !Initial damage
      
      stress_trial = stress_trial 
      call compute_deviator(stress_trial, s_eff_trial)
      D_sum_0 = ustatev(31) + ustatev(32) - ustatev(31) * ustatev(32)
      s_eff_trial = s_eff_trial / (1.0d0 - (D_sum_0))
      !Total back stress
      X_total(1:6) = ustatev(13:18) + ustatev(19:24) + ustatev(25:30)
      !Plastic surface
      call compute_yield_function(s_eff_trial, X_total, sigma_y0, 
     &                e_pl_eqv,
     &                K_Iso, m_Iso, phi_pl, norm_s_minus_X)

      plastic_loading = (phi_pl > 0.0d0)

      if (.not. plastic_loading) then
        !ELASTIC
            stress(1:6) = stress_trial(1:6)
        
            !Stiffness
            dsdePl = dsdePl * (1.0d0 - D_sum_0)
        
            !Creep
            if (dTime > 0.0d0) then
              !call solve_creep_only(params, ustatev, stress)
            endif
        
            ! state variables for creep
            !ustatev(7:12) = ustatev(7:12)  ! e_cr обновится в solve_creep_only
            !ustatev(34) = ustatev(34)      ! e_cr_eqv обновится в solve_creep_only
            converged = .true.
            if (Time <= 0.0d0 .and. dTime <= 0.0d0) then
                ustatev = 0.0d0
                stress = 0.0d0
                keycut = 0
                return
            endif
        else
        !PLASTIC
            ! initial values
            !Variables (39):
            !1-6: sigma_eff components
            !7-12: e_pl components
            !13-18: e_cr components
            !19-24: X1 components
            !25-30: X2 components
            !31-36: X3 components
            !37: D_pl
            !38: D_cr
            !39: Depseqv
          vars(1:6) = stress_trial(1:6)  ! D_pl
          vars(7:38) = ustatev(7:38)
          vars(39)=0
          do NR_iter = 1, NR_maxiter
                ! residual
                call material_residuals_wrapper(params, vars, F)
        
                ! Check
                normF = sqrt(sum(F**2))
                if (normF < tol) then
                  converged = .true.
                  exit
                endif

                ! Jacobi
                call material_jacobian_wrapper(params, vars, Jac)

                ! Solve J*dx = -F
                call solve_linear_system(Jac, F, nvars)

                ! Update
                vars = vars - F  ! F here is dx

                !limitations
                where (vars(1:2) < 0.0) vars(1:2) = 0.0  ! D_pl, D_cr
                if (vars(5) < 0.0) vars(5) = 0.0  ! e_pl_eqv
                if (vars(6) < 0.0) vars(6) = 0.0  ! e_cr_eqv
              enddo
      endif
      if (.not. converged) then
        keycut = 1 
        return
      endif

      !Update state variables 
      ustatev(1:39) = F(1:39)   
      stress = F(1:6)          


      call compute_tangent_matrix(params, vars, dsdePl)

      sedEl = 0.5d0*sum(stress * (e_total - vars(13:18) - vars(19:24))) 
      sedPl = 0.0d0  
      epseq = vars(5) 
      if (Time <= 0.0d0 .and. dTime <= 0.0d0) then
                ustatev = 0.0d0
                stress = 0.0d0
                keycut = 0
                return
      endif
      keycut = 0 
      return
      end subroutine



