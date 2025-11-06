        !COMPILER-GENERATED INTERFACE MODULE: Thu Nov  6 15:26:02 2025
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE USERMAT_HARM__genmod
          INTERFACE 
            SUBROUTINE USERMAT_HARM(MATID,ELEMID,KDOMINTPT,KLAYER,      &
     &KSECTPT,LDSTEP,ISUBST,KEYCUT,NDIRECT,NSHEAR,NCOMP,NPROP,FREQ,DFREQ&
     &,TEMP,STRESS,JACOBI,TSSTIF,STRAIN,PROP,COORDS)
              INTEGER(KIND=4) :: NPROP
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
              REAL(KIND=8) :: FREQ
              REAL(KIND=8) :: DFREQ
              REAL(KIND=8) :: TEMP
              REAL(KIND=8) :: STRESS(NCOMP,2)
              REAL(KIND=8) :: JACOBI(NCOMP,NCOMP,2)
              REAL(KIND=8) :: TSSTIF(2)
              REAL(KIND=8) :: STRAIN(NCOMP,2)
              REAL(KIND=8) :: PROP(NPROP)
              REAL(KIND=8) :: COORDS(3)
            END SUBROUTINE USERMAT_HARM
          END INTERFACE 
        END MODULE USERMAT_HARM__genmod
