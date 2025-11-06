        !COMPILER-GENERATED INTERFACE MODULE: Thu Nov  6 15:26:02 2025
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE USERMAT__genmod
          INTERFACE 
            SUBROUTINE USERMAT(MATID,ELEMID,KDOMINTPT,KLAYER,KSECTPT,   &
     &LDSTEP,ISUBST,KEYCUT,NDIRECT,NSHEAR,NCOMP,NSTATEV,NPROP,TIME,DTIME&
     &,TEMP,DTEMP,STRESS,USTATEV,DSDEPL,SEDEL,SEDPL,EPSEQ,STRAIN,DSTRAIN&
     &,EPSPL,PROP,COORDS,VAR0,DEFGRAD_T,DEFGRAD,TSSTIF,EPSZZ,CUTFACTOR, &
     &PVOLDER,HRMFLG,VAR3,VAR4,VAR5,VAR6,VAR7)
              INTEGER(KIND=4) :: NPROP
              INTEGER(KIND=4) :: NSTATEV
              INTEGER(KIND=4) :: NCOMP
              INTEGER(KIND=4) :: MATID
              INTEGER(KIND=4) :: ELEMID
              INTEGER(KIND=4) :: KDOMINTPT
              INTEGER(KIND=4) :: KLAYER
              INTEGER(KIND=4) :: KSECTPT
              INTEGER(KIND=4) :: LDSTEP
              INTEGER(KIND=4) :: ISUBST
              INTEGER(KIND=4) :: KEYCUT
              INTEGER(KIND=4) :: NDIRECT
              INTEGER(KIND=4) :: NSHEAR
              REAL(KIND=8) :: TIME
              REAL(KIND=8) :: DTIME
              REAL(KIND=8) :: TEMP
              REAL(KIND=8) :: DTEMP
              REAL(KIND=8) :: STRESS(NCOMP)
              REAL(KIND=8) :: USTATEV(NSTATEV)
              REAL(KIND=8) :: DSDEPL(NCOMP,NCOMP)
              REAL(KIND=8) :: SEDEL
              REAL(KIND=8) :: SEDPL
              REAL(KIND=8) :: EPSEQ
              REAL(KIND=8) :: STRAIN(NCOMP)
              REAL(KIND=8) :: DSTRAIN(NCOMP)
              REAL(KIND=8) :: EPSPL(NCOMP)
              REAL(KIND=8) :: PROP(NPROP)
              REAL(KIND=8) :: COORDS(3)
              REAL(KIND=8) :: VAR0
              REAL(KIND=8) :: DEFGRAD_T(3,3)
              REAL(KIND=8) :: DEFGRAD(3,3)
              REAL(KIND=8) :: TSSTIF(2)
              REAL(KIND=8) :: EPSZZ
              REAL(KIND=8) :: CUTFACTOR
              REAL(KIND=8) :: PVOLDER(3)
              REAL(KIND=8) :: HRMFLG
              REAL(KIND=8) :: VAR3
              REAL(KIND=8) :: VAR4
              REAL(KIND=8) :: VAR5
              REAL(KIND=8) :: VAR6
              REAL(KIND=8) :: VAR7
            END SUBROUTINE USERMAT
          END INTERFACE 
        END MODULE USERMAT__genmod
