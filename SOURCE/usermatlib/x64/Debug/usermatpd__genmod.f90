        !COMPILER-GENERATED INTERFACE MODULE: Thu Nov  6 15:26:02 2025
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE USERMATPD__genmod
          INTERFACE 
            SUBROUTINE USERMATPD(MATID,NOEL,NPT,LAYER,KSPT,JSTEP,KINC,  &
     &KEYCUT,NDI,NSHR,NTENS,NSTATV,NPROP,TIME,DTIME,TEMP,DTEMP,STRESS,  &
     &STATEV,DDSDDE,SSE,SPD,EPSEQ,STRAN,DSTRAN,EPSPL,PROPS,COORDS,VAR0, &
     &DFGRD0,DFGRD1,TSSTIF,EPSZZ,VAR1,VAR2,VAR3,VAR4,VAR5,VAR6,VAR7,VAR8&
     &)
              INTEGER(KIND=4) :: NPROP
              INTEGER(KIND=4) :: NSTATV
              INTEGER(KIND=4) :: NTENS
              INTEGER(KIND=4) :: MATID
              INTEGER(KIND=4) :: NOEL
              INTEGER(KIND=4) :: NPT
              INTEGER(KIND=4) :: LAYER
              INTEGER(KIND=4) :: KSPT
              INTEGER(KIND=4) :: JSTEP
              INTEGER(KIND=4) :: KINC
              INTEGER(KIND=4) :: KEYCUT
              INTEGER(KIND=4) :: NDI
              INTEGER(KIND=4) :: NSHR
              REAL(KIND=8) :: TIME
              REAL(KIND=8) :: DTIME
              REAL(KIND=8) :: TEMP
              REAL(KIND=8) :: DTEMP
              REAL(KIND=8) :: STRESS(NTENS)
              REAL(KIND=8) :: STATEV(NSTATV)
              REAL(KIND=8) :: DDSDDE(NTENS,NTENS)
              REAL(KIND=8) :: SSE
              REAL(KIND=8) :: SPD
              REAL(KIND=8) :: EPSEQ
              REAL(KIND=8) :: STRAN(NTENS)
              REAL(KIND=8) :: DSTRAN(NTENS)
              REAL(KIND=8) :: EPSPL(NTENS)
              REAL(KIND=8) :: PROPS(NPROP)
              REAL(KIND=8) :: COORDS(3)
              REAL(KIND=8) :: VAR0
              REAL(KIND=8) :: DFGRD0(3,3)
              REAL(KIND=8) :: DFGRD1(3,3)
              REAL(KIND=8) :: TSSTIF(2)
              REAL(KIND=8) :: EPSZZ
              REAL(KIND=8) :: VAR1
              REAL(KIND=8) :: VAR2
              REAL(KIND=8) :: VAR3
              REAL(KIND=8) :: VAR4
              REAL(KIND=8) :: VAR5
              REAL(KIND=8) :: VAR6
              REAL(KIND=8) :: VAR7
              REAL(KIND=8) :: VAR8
            END SUBROUTINE USERMATPD
          END INTERFACE 
        END MODULE USERMATPD__genmod
