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
c            ustatev(1)                     - equivalent plastic strain
c            ustatev(2) - statev(1+ncomp)   - plastic strain vector
c            ustatev(nStatev)               - von-Mises stress
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

      ! Определение входных и выходных параметров (соответствует документации ANSYS)
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
      ! Локальные переменные
      integer, parameter :: nvars = 42
      double precision :: params(60), vars(nvars)
      double precision :: F(nvars), Jac(nvars,nvars)      
      double precision :: e_total(6), delta_t
      integer i, j, NR_iter,NR_maxiter
      double precision tol, normF
      logical converged

      ! Инициализация параметров из prop
      params(1) = dTime
      
      ! Преобразование тензоров из Voigt в полные тензоры
      e_total(1:3) = Strain(1:3) + dStrain(1:3)
      e_total(4:6) = Strain(4:6) + dStrain(4:6)
      params(2:7) = e_total

      ! Загрузка начальных состояний из ustatev
      params(8:13) = ustatev(1:6)   ! e_pl_0
      params(14:19) = ustatev(7:12)  ! e_cr_0
      params(20:25) = ustatev(13:18) ! X1_0
      params(26:31) = ustatev(19:24) ! X2_0
      params(32:37) = ustatev(25:30) ! X3_0
      params(38) = ustatev(31)       ! D_pl_0
      params(39) = ustatev(32)       ! D_cr_0
      params(40) = ustatev(33)       ! e_pl_eqv_0
      params(41) = ustatev(34)       ! e_cr_eqv_0

      ! Материальные константы
      params(42) = prop(1)  ! Young
      params(43) = prop(2)  ! nu
      params(44) = prop(3)  ! sigma_y0
      params(45) = prop(4)  ! A (creep)
      params(46) = prop(5)  ! n (creep)
      params(47) = prop(6)  ! q (creep)
      params(48) = prop(7)  ! A_cr
      params(49) = prop(8)  ! r (creep damage)
      params(50) = prop(9)  ! C1_X
      params(51) = prop(10) ! C2_X
      params(52) = prop(11) ! C3_X
      params(53) = prop(12) ! gamma1_X
      params(54) = prop(13) ! gamma2_X
      params(55) = prop(14) ! gamma3_X
      params(56) = prop(15) ! K
      params(57) = prop(16) ! m
      params(58) = prop(17) ! S
      params(59) = prop(18) ! s
      params(60) = prop(19) ! k

      ! Начальное приближение для переменных
      vars(1) = ustatev(31)   ! D_pl
      vars(2) = ustatev(32)   ! D_cr
      vars(3) = 0.0           ! R (начальное значение)
      vars(4) = 0.0           ! dlambda
      vars(5) = ustatev(33)   ! e_pl_eqv
      vars(6) = ustatev(34)   ! e_cr_eqv
      vars(7:12) = stress     ! sigma
      vars(13:18) = ustatev(1:6)  ! e_pl
      vars(19:24) = ustatev(7:12) ! e_cr
      vars(25:30) = ustatev(13:18) ! X1
      vars(31:36) = ustatev(19:24) ! X2
      vars(37:42) = ustatev(25:30) ! X3

      ! Параметры решения Ньютона-Рафсона
      NR_maxiter = 50
      tol = 1.0d-8
      converged = .false.

      do NR_iter = 1, NR_maxiter
        ! Вычисление невязок
        call material_residuals(params, vars, F)
        
        ! Проверка сходимости
        normF = sqrt(sum(F**2))
        if (normF < tol) then
          converged = .true.
          exit
        endif

        ! Вычисление якобиана
        call material_jacobian(params, vars, Jac)

        ! Решение линейной системы J*dx = -F
        call solve_linear_system(Jac, F, nvars)

        ! Обновление переменных
        vars = vars - F  ! F теперь содержит решение dx

        ! Ограничение переменных (например, поврежденность не может быть отрицательной)
        where (vars(1:2) < 0.0) vars(1:2) = 0.0  ! D_pl, D_cr
        if (vars(5) < 0.0) vars(5) = 0.0  ! e_pl_eqv
        if (vars(6) < 0.0) vars(6) = 0.0  ! e_cr_eqv
      enddo

      if (.not. converged) then
        keycut = 1  ! Требовать сокращения шага
        return
      endif

      ! Обновление state variables и напряжений
      ustatev(1:6) = vars(13:18)   ! e_pl
      ustatev(7:12) = vars(19:24)  ! e_cr
      ustatev(13:18) = vars(25:30) ! X1
      ustatev(19:24) = vars(31:36) ! X2
      ustatev(25:30) = vars(37:42) ! X3
      ustatev(31) = vars(1)        ! D_pl
      ustatev(32) = vars(2)        ! D_cr
      ustatev(33) = vars(5)        ! e_pl_eqv
      ustatev(34) = vars(6)        ! e_cr_eqv
      stress = vars(7:12)          ! sigma

      ! Вычисление матрицы касательных модулей
      call compute_tangent_matrix(params, vars, dsdePl)

      ! Дополнительные расчеты
      !Упругая энергия
      sedEl = 0.5d0*sum(stress * (e_total - vars(13:18) - vars(19:24))) 
      ! Пластическая диссипация (требует дополнительного расчета)
      sedPl = 0.0d0  
      epseq = vars(5) ! Эквивалентная пластическая деформация

      keycut = 0  ! Успешное завершение

      return
      end subroutine

! Вспомогательные подпрограммы
      subroutine solve_linear_system(J, F, n)
      integer n
      double precision J(n,n), F(n)
      ! Решение системы линейных уравнений (LAPACK)
      end subroutine

      subroutine compute_tangent_matrix(params, vars, dsdePl)
          double precision params(60), vars(42), dsdePl(6,6)
      ! Вычисление матрицы касательных модулей
      end subroutine