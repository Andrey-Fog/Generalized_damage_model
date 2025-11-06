subroutine material_jacobian(par01, par02, par03, par04, par05, par06, &
      par07, par40, par42, par43, par45, par46, par47, par48, &
      par49, par50, par51, par52, par53, par54, par55, par56, &
      par57, par58, par59, par60, var01, var02, var04, var05, &
      var06, var07, var08, var09, var10, var11, var12, var13, &
      var14, var15, var16, var17, var18, var19, var20, var21, &
      var22, var23, var24, var25, var26, var27, var28, var29, &
      var30, var31, var32, var33, var34, var35, var36, var37, &
      var38, var39, var40, var41, var42, out_result)
implicit none
!double precision params(60), vars(42), J(42,42)
REAL*8, intent(in) :: par01
REAL*8, intent(in) :: par02
REAL*8, intent(in) :: par03
REAL*8, intent(in) :: par04
REAL*8, intent(in) :: par05
REAL*8, intent(in) :: par06
REAL*8, intent(in) :: par07
REAL*8, intent(in) :: par40
REAL*8, intent(in) :: par42
REAL*8, intent(in) :: par43
REAL*8, intent(in) :: par45
REAL*8, intent(in) :: par46
REAL*8, intent(in) :: par47
REAL*8, intent(in) :: par48
REAL*8, intent(in) :: par49
REAL*8, intent(in) :: par50
REAL*8, intent(in) :: par51
REAL*8, intent(in) :: par52
REAL*8, intent(in) :: par53
REAL*8, intent(in) :: par54
REAL*8, intent(in) :: par55
REAL*8, intent(in) :: par56
REAL*8, intent(in) :: par57
REAL*8, intent(in) :: par58
REAL*8, intent(in) :: par59
REAL*8, intent(in) :: par60
REAL*8, intent(in) :: var01
REAL*8, intent(in) :: var02
REAL*8, intent(in) :: var04
REAL*8, intent(in) :: var05
REAL*8, intent(in) :: var06
REAL*8, intent(in) :: var07
REAL*8, intent(in) :: var08
REAL*8, intent(in) :: var09
REAL*8, intent(in) :: var10
REAL*8, intent(in) :: var11
REAL*8, intent(in) :: var12
REAL*8, intent(in) :: var13
REAL*8, intent(in) :: var14
REAL*8, intent(in) :: var15
REAL*8, intent(in) :: var16
REAL*8, intent(in) :: var17
REAL*8, intent(in) :: var18
REAL*8, intent(in) :: var19
REAL*8, intent(in) :: var20
REAL*8, intent(in) :: var21
REAL*8, intent(in) :: var22
REAL*8, intent(in) :: var23
REAL*8, intent(in) :: var24
REAL*8, intent(in) :: var25
REAL*8, intent(in) :: var26
REAL*8, intent(in) :: var27
REAL*8, intent(in) :: var28
REAL*8, intent(in) :: var29
REAL*8, intent(in) :: var30
REAL*8, intent(in) :: var31
REAL*8, intent(in) :: var32
REAL*8, intent(in) :: var33
REAL*8, intent(in) :: var34
REAL*8, intent(in) :: var35
REAL*8, intent(in) :: var36
REAL*8, intent(in) :: var37
REAL*8, intent(in) :: var38
REAL*8, intent(in) :: var39
REAL*8, intent(in) :: var40
REAL*8, intent(in) :: var41
REAL*8, intent(in) :: var42
REAL*8, intent(out), dimension(1:42, 1:42) :: out_result
out_result(1, 1) = -par42*par43*(var02 - 1)*(par03 - var14 &
      - var20)/((1 - 2*par43)*(par43 + 1)) - par42*par43*(var02 - 1)*( &
      par04 - var15 - var21)/((1 - 2*par43)*(par43 + 1)) - (var02 - 1)* &
      (par42*par43/((1 - 2*par43)*(par43 + 1)) + 2*par42/(2*par43 + 2)) &
      *(par02 - var13 - var19)
out_result(2, 1) = -par42*par43*(var02 - 1)*(par02 - var13 &
      - var19)/((1 - 2*par43)*(par43 + 1)) - par42*par43*(var02 - 1)*( &
      par04 - var15 - var21)/((1 - 2*par43)*(par43 + 1)) - (var02 - 1)* &
      (par42*par43/((1 - 2*par43)*(par43 + 1)) + 2*par42/(2*par43 + 2)) &
      *(par03 - var14 - var20)
out_result(3, 1) = -par42*par43*(var02 - 1)*(par02 - var13 &
      - var19)/((1 - 2*par43)*(par43 + 1)) - par42*par43*(var02 - 1)*( &
      par03 - var14 - var20)/((1 - 2*par43)*(par43 + 1)) - (var02 - 1)* &
      (par42*par43/((1 - 2*par43)*(par43 + 1)) + 2*par42/(2*par43 + 2)) &
      *(par04 - var15 - var21)
out_result(4, 1) = -par42*(var02 - 1)*(par05 - var16 - &
      var22)/(2*par43 + 2)
out_result(5, 1) = -par42*(var02 - 1)*(par06 - var17 - &
      var23)/(2*par43 + 2)
out_result(6, 1) = -par42*(var02 - 1)*(par07 - var18 - &
      var24)/(2*par43 + 2)
out_result(7, 1) = (3*var10*(1 - var02)*(var10/(var01*var02 &
      - var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11*(1 - var02)*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 &
      - var02 + 1)**2 + 3*var12*(1 - var02)*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/4.0d0)*(-2.0d0/3.0d0*var07*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39) + (3.0d0/ &
      4.0d0)*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38) + (3.0d0/4.0d0)*((4.0d0/3.0d0)*var07*(1 &
      - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/ &
      3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var25 - var31 - var37))/sqrt(3 &
      *(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40 &
      )**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 1) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/ &
      2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 &
      - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) - 1.5d0*par01* &
      par45*var06**par47*((2.0d0/3.0d0)*var07*(1 - var02)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.0d0/3.0d0*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 1.0d0/3.0d0*var09*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)
out_result(9, 1) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/ &
      2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 &
      - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) - 1.5d0*par01* &
      par45*var06**par47*(-1.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2 + (2.0d0/3.0d0)*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 1.0d0/3.0d0*var09*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)
out_result(10, 1) = -1.5d0*par01*par45*var06**par47*((1.0d0 &
      /2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var02)/( &
      var01*var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/ &
      2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 &
      - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) - 1.5d0*par01* &
      par45*var06**par47*(-1.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2 - 1.0d0/3.0d0*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 + (2.0d0/3.0d0)*var09*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)
out_result(11, 1) = -1.5d0*par01*par45*var06**par47*var10*( &
      1 - var02)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.5d0*par01*par45*var06**par47*var10*(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)*(3*var10**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var11**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var12**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - var01 &
      - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2))/((var01*var02 - &
      var01 - var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(12, 1) = -1.5d0*par01*par45*var06**par47*var11*( &
      1 - var02)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.5d0*par01*par45*var06**par47*var11*(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)*(3*var10**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var11**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var12**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - var01 &
      - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2))/((var01*var02 - &
      var01 - var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(13, 1) = -1.5d0*par01*par45*var06**par47*var12*( &
      1 - var02)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.5d0*par01*par45*var06**par47*var12*(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)*(3*var10**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var11**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var12**2*(2 - 2*var02)/(var01*var02 - var01 - &
      var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 - var01 &
      - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2))/((var01*var02 - &
      var01 - var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(14, 1) = -1.0d0/2.0d0*par01*par45*par46*var06** &
      par47*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46)*(3*var10**2*(2 - 2*var02)/(var01* &
      var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var02)/(var01* &
      var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var02)/(var01* &
      var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 &
      - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var02) &
      /(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*( &
      1 - var02)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*( &
      1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(15, 1) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*((1.0d0/2.0d0)*((3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2*(-3*var10**2*( &
      2 - 2*var02)/(var01*var02 - var01 - var02 + 1)**3 - 3*var11**2*(2 &
      - 2*var02)/(var01*var02 - var01 - var02 + 1)**3 - 3*var12**2*(2 - &
      2*var02)/(var01*var02 - var01 - var02 + 1)**3 - 3.0d0/2.0d0*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*( &
      1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)* &
      var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2) - 3.0d0/ &
      2.0d0*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0* &
      var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/ &
      3.0d0)*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2) - 3.0d0/2.0d0*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/ &
      3.0d0)*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 + &
      1)**2))/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**2 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))*((2.0d0/3.0d0)*var07*(1 - var02)/(var01*var02 - var01 &
      - var02 + 1)**2 + (2.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2 + (2.0d0/3.0d0)*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2)/(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))*(3*var10**2/(var01*var02 &
      - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2) + (1.0d0/2.0d0)*(0.666666666666667d0*par43 + (3 - 6*par43)* &
      ((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(3 &
      *var10**2*(2 - 2*var02)/(var01*var02 - var01 - var02 + 1)**3 + 3* &
      var11**2*(2 - 2*var02)/(var01*var02 - var01 - var02 + 1)**3 + 3* &
      var12**2*(2 - 2*var02)/(var01*var02 - var01 - var02 + 1)**3 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0* &
      var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - var01 - var02 + 1) &
      **2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/ &
      3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *((4.0d0/3.0d0)*var07*(1 - var02)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - &
      var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2))/(par42*par58*(1 - var01)**2) + ( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **3))*(var01*var02 - var01 - var02 + 1)**(-par60)/(( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)) + par60*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(-par40 + var05)*(var02 - 1)*(var01*var02 - var01 - &
      var02 + 1)**(-par60)/(var01*var02 - var01 - var02 + 1) + 1
out_result(16, 1) = -1.0d0/2.0d0*par01*par48*par49*(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0 &
      )*par49)*(3*var10**2*(2 - 2*var02)/(var01*var02 - var01 - var02 + &
      1)**3 + 3*var11**2*(2 - 2*var02)/(var01*var02 - var01 - var02 + 1 &
      )**3 + 3*var12**2*(2 - 2*var02)/(var01*var02 - var01 - var02 + 1) &
      **3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/ &
      3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 &
      - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0 &
      /3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *((4.0d0/3.0d0)*var07*(1 - var02)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - &
      var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - &
      var01 - var02 + 1)**2))/(3*var10**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)
out_result(17, 1) = 0
out_result(18, 1) = 0
out_result(19, 1) = 0
out_result(20, 1) = 0
out_result(21, 1) = 0
out_result(22, 1) = 0
out_result(23, 1) = 0
out_result(24, 1) = 0
out_result(25, 1) = 0
out_result(26, 1) = 0
out_result(27, 1) = 0
out_result(28, 1) = 0
out_result(29, 1) = 0
out_result(30, 1) = 0
out_result(31, 1) = 0
out_result(32, 1) = 0
out_result(33, 1) = 0
out_result(34, 1) = 0
out_result(35, 1) = 0
out_result(36, 1) = -var04*(1.0d0*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 0.5d0*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 0.5d0*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2)/sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2) - var04*(1.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)*(-3*var10*( &
      1 - var02)*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)/(var01*var02 - var01 - var02 + 1)**2 - 3*var11*(1 &
      - var02)*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)/(var01*var02 - var01 - var02 + 1)**2 - 3*var12*(1 - &
      var02)*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)/(var01*var02 - var01 - var02 + 1)**2 - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39) - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 &
      - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)* &
      var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)) &
      /(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(37, 1) = -var04*(-0.5d0*var07*(1 - var02)/(var01 &
      *var02 - var01 - var02 + 1)**2 + 1.0d0*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 0.5d0*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2)/sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2) - var04*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)*(-3*var10*( &
      1 - var02)*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)/(var01*var02 - var01 - var02 + 1)**2 - 3*var11*(1 &
      - var02)*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)/(var01*var02 - var01 - var02 + 1)**2 - 3*var12*(1 - &
      var02)*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)/(var01*var02 - var01 - var02 + 1)**2 - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39) - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 &
      - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)* &
      var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)) &
      /(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(38, 1) = -var04*(-0.5d0*var07*(1 - var02)/(var01 &
      *var02 - var01 - var02 + 1)**2 - 0.5d0*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 + 1.0d0*var09*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2)/sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2) - var04*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)*(-3*var10*( &
      1 - var02)*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)/(var01*var02 - var01 - var02 + 1)**2 - 3*var11*(1 &
      - var02)*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)/(var01*var02 - var01 - var02 + 1)**2 - 3*var12*(1 - &
      var02)*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)/(var01*var02 - var01 - var02 + 1)**2 - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39) - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var02)/(var01*var02 &
      - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)* &
      var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 + 1)** &
      2)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)) &
      /(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(39, 1) = -1.5d0*var04*var10*(1 - var02)/((var01* &
      var02 - var01 - var02 + 1)**2*sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)) - var04*(1.5d0* &
      var10/(var01*var02 - var01 - var02 + 1) - 1.5d0*var28 - 1.5d0* &
      var34 - 1.5d0*var40)*(-3*var10*(1 - var02)*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - var01 &
      - var02 + 1)**2 - 3*var11*(1 - var02)*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 - &
      var02 + 1)**2 - 3*var12*(1 - var02)*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - var02 &
      + 1)**2 - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1) - var27 - var33 - var39) - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + &
      (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/3.0d0)*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37))/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(40, 1) = -1.5d0*var04*var11*(1 - var02)/((var01* &
      var02 - var01 - var02 + 1)**2*sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)) - var04*(1.5d0* &
      var11/(var01*var02 - var01 - var02 + 1) - 1.5d0*var29 - 1.5d0* &
      var35 - 1.5d0*var41)*(-3*var10*(1 - var02)*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - var01 &
      - var02 + 1)**2 - 3*var11*(1 - var02)*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 - &
      var02 + 1)**2 - 3*var12*(1 - var02)*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - var02 &
      + 1)**2 - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1) - var27 - var33 - var39) - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + &
      (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/3.0d0)*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37))/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(41, 1) = -1.5d0*var04*var12*(1 - var02)/((var01* &
      var02 - var01 - var02 + 1)**2*sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)) - var04*(1.5d0* &
      var12/(var01*var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0* &
      var36 - 1.5d0*var42)*(-3*var10*(1 - var02)*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - var01 &
      - var02 + 1)**2 - 3*var11*(1 - var02)*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 - &
      var02 + 1)**2 - 3*var12*(1 - var02)*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - var02 &
      + 1)**2 - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1) - var27 - var33 - var39) - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var02)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var02)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var02)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + &
      (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)*var07*(1 - var02)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var02)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var02)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/3.0d0)*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37))/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(42, 1) = 0
out_result(1, 2) = -par42*par43*(var01 - 1)*(par03 - var14 &
      - var20)/((1 - 2*par43)*(par43 + 1)) - par42*par43*(var01 - 1)*( &
      par04 - var15 - var21)/((1 - 2*par43)*(par43 + 1)) - (var01 - 1)* &
      (par42*par43/((1 - 2*par43)*(par43 + 1)) + 2*par42/(2*par43 + 2)) &
      *(par02 - var13 - var19)
out_result(2, 2) = -par42*par43*(var01 - 1)*(par02 - var13 &
      - var19)/((1 - 2*par43)*(par43 + 1)) - par42*par43*(var01 - 1)*( &
      par04 - var15 - var21)/((1 - 2*par43)*(par43 + 1)) - (var01 - 1)* &
      (par42*par43/((1 - 2*par43)*(par43 + 1)) + 2*par42/(2*par43 + 2)) &
      *(par03 - var14 - var20)
out_result(3, 2) = -par42*par43*(var01 - 1)*(par02 - var13 &
      - var19)/((1 - 2*par43)*(par43 + 1)) - par42*par43*(var01 - 1)*( &
      par03 - var14 - var20)/((1 - 2*par43)*(par43 + 1)) - (var01 - 1)* &
      (par42*par43/((1 - 2*par43)*(par43 + 1)) + 2*par42/(2*par43 + 2)) &
      *(par04 - var15 - var21)
out_result(4, 2) = -par42*(var01 - 1)*(par05 - var16 - &
      var22)/(2*par43 + 2)
out_result(5, 2) = -par42*(var01 - 1)*(par06 - var17 - &
      var23)/(2*par43 + 2)
out_result(6, 2) = -par42*(var01 - 1)*(par07 - var18 - &
      var24)/(2*par43 + 2)
out_result(7, 2) = (3*var10*(1 - var01)*(var10/(var01*var02 &
      - var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11*(1 - var01)*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 &
      - var02 + 1)**2 + 3*var12*(1 - var01)*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/4.0d0)*(-2.0d0/3.0d0*var07*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39) + (3.0d0/ &
      4.0d0)*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38) + (3.0d0/4.0d0)*((4.0d0/3.0d0)*var07*(1 &
      - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/ &
      3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var25 - var31 - var37))/sqrt(3 &
      *(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40 &
      )**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 2) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/ &
      2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 &
      - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) - 1.5d0*par01* &
      par45*var06**par47*((2.0d0/3.0d0)*var07*(1 - var01)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.0d0/3.0d0*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 1.0d0/3.0d0*var09*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)
out_result(9, 2) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/ &
      2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 &
      - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) - 1.5d0*par01* &
      par45*var06**par47*(-1.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2 + (2.0d0/3.0d0)*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 1.0d0/3.0d0*var09*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)
out_result(10, 2) = -1.5d0*par01*par45*var06**par47*((1.0d0 &
      /2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var01)/( &
      var01*var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/ &
      2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 &
      - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08 &
      *(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) - 1.5d0*par01* &
      par45*var06**par47*(-1.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2 - 1.0d0/3.0d0*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 + (2.0d0/3.0d0)*var09*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)
out_result(11, 2) = -1.5d0*par01*par45*var06**par47*var10*( &
      1 - var01)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.5d0*par01*par45*var06**par47*var10*(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)*(3*var10**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var11**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var12**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - var01 &
      - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2))/((var01*var02 - &
      var01 - var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(12, 2) = -1.5d0*par01*par45*var06**par47*var11*( &
      1 - var01)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.5d0*par01*par45*var06**par47*var11*(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)*(3*var10**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var11**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var12**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - var01 &
      - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2))/((var01*var02 - &
      var01 - var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(13, 2) = -1.5d0*par01*par45*var06**par47*var12*( &
      1 - var01)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)**2 - 1.5d0*par01*par45*var06**par47*var12*(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)*(3*var10**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var11**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + 3*var12**2*(2 - 2*var01)/(var01*var02 - var01 - &
      var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - &
      var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 - var01 &
      - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2))/((var01*var02 - &
      var01 - var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(14, 2) = -1.0d0/2.0d0*par01*par45*par46*var06** &
      par47*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46)*(3*var10**2*(2 - 2*var01)/(var01* &
      var02 - var01 - var02 + 1)**3 + 3*var11**2*(2 - 2*var01)/(var01* &
      var02 - var01 - var02 + 1)**3 + 3*var12**2*(2 - 2*var01)/(var01* &
      var02 - var01 - var02 + 1)**3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 &
      - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - var01) &
      /(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*( &
      1 - var01)/(var01*var02 - var01 - var02 + 1)**2) + (3.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))*((4.0d0/3.0d0)*var07*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*( &
      1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2))/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(15, 2) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*((1.0d0/2.0d0)*((3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2*(-3*var10**2*( &
      2 - 2*var01)/(var01*var02 - var01 - var02 + 1)**3 - 3*var11**2*(2 &
      - 2*var01)/(var01*var02 - var01 - var02 + 1)**3 - 3*var12**2*(2 - &
      2*var01)/(var01*var02 - var01 - var02 + 1)**3 - 3.0d0/2.0d0*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0*var07*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*( &
      1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)* &
      var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2) - 3.0d0/ &
      2.0d0*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0* &
      var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + (4.0d0/ &
      3.0d0)*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2) - 3.0d0/2.0d0*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))*((4.0d0/ &
      3.0d0)*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 + &
      1)**2))/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**2 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))*((2.0d0/3.0d0)*var07*(1 - var01)/(var01*var02 - var01 &
      - var02 + 1)**2 + (2.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2 + (2.0d0/3.0d0)*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2)/(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))*(3*var10**2/(var01*var02 &
      - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2) + (1.0d0/2.0d0)*(0.666666666666667d0*par43 + (3 - 6*par43)* &
      ((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(3 &
      *var10**2*(2 - 2*var01)/(var01*var02 - var01 - var02 + 1)**3 + 3* &
      var11**2*(2 - 2*var01)/(var01*var02 - var01 - var02 + 1)**3 + 3* &
      var12**2*(2 - 2*var01)/(var01*var02 - var01 - var02 + 1)**3 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/3.0d0* &
      var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - var01 - var02 + 1) &
      **2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/ &
      3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *((4.0d0/3.0d0)*var07*(1 - var01)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - &
      var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2))/(par42*par58*(1 - var01)**2))*(var01* &
      var02 - var01 - var02 + 1)**(-par60)/((0.666666666666667d0*par43 &
      + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) + &
      0.666666666666667d0)*(3*var10**2/(var01*var02 - var01 - var02 + 1 &
      )**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)) + par60*((1.0d0/2.0d0)*(0.666666666666667d0* &
      par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) + (1.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3* &
      var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 &
      - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) + &
      0.666666666666667d0)*(3*var10**2/(var01*var02 - var01 - var02 + 1 &
      )**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)/(par42*par58*(1 - var01)**2))**par59*(-par40 + &
      var05)*(var01 - 1)*(var01*var02 - var01 - var02 + 1)**(-par60)/( &
      var01*var02 - var01 - var02 + 1)
out_result(16, 2) = -1.0d0/2.0d0*par01*par48*par49*(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0 &
      )*par49)*(3*var10**2*(2 - 2*var01)/(var01*var02 - var01 - var02 + &
      1)**3 + 3*var11**2*(2 - 2*var01)/(var01*var02 - var01 - var02 + 1 &
      )**3 + 3*var12**2*(2 - 2*var01)/(var01*var02 - var01 - var02 + 1) &
      **3 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0/ &
      3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2) + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 &
      - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))*(-2.0d0 &
      /3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2) + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *((4.0d0/3.0d0)*var07*(1 - var01)/(var01*var02 - var01 - var02 + &
      1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - &
      var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - &
      var01 - var02 + 1)**2))/(3*var10**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 1
out_result(17, 2) = 0
out_result(18, 2) = 0
out_result(19, 2) = 0
out_result(20, 2) = 0
out_result(21, 2) = 0
out_result(22, 2) = 0
out_result(23, 2) = 0
out_result(24, 2) = 0
out_result(25, 2) = 0
out_result(26, 2) = 0
out_result(27, 2) = 0
out_result(28, 2) = 0
out_result(29, 2) = 0
out_result(30, 2) = 0
out_result(31, 2) = 0
out_result(32, 2) = 0
out_result(33, 2) = 0
out_result(34, 2) = 0
out_result(35, 2) = 0
out_result(36, 2) = -var04*(1.0d0*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 0.5d0*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 0.5d0*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2)/sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2) - var04*(1.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)*(-3*var10*( &
      1 - var01)*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)/(var01*var02 - var01 - var02 + 1)**2 - 3*var11*(1 &
      - var01)*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)/(var01*var02 - var01 - var02 + 1)**2 - 3*var12*(1 - &
      var01)*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)/(var01*var02 - var01 - var02 + 1)**2 - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39) - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 &
      - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)* &
      var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)) &
      /(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(37, 2) = -var04*(-0.5d0*var07*(1 - var01)/(var01 &
      *var02 - var01 - var02 + 1)**2 + 1.0d0*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 0.5d0*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2)/sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2) - var04*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)*(-3*var10*( &
      1 - var01)*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)/(var01*var02 - var01 - var02 + 1)**2 - 3*var11*(1 &
      - var01)*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)/(var01*var02 - var01 - var02 + 1)**2 - 3*var12*(1 - &
      var01)*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)/(var01*var02 - var01 - var02 + 1)**2 - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39) - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 &
      - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)* &
      var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)) &
      /(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(38, 2) = -var04*(-0.5d0*var07*(1 - var01)/(var01 &
      *var02 - var01 - var02 + 1)**2 - 0.5d0*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 + 1.0d0*var09*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2)/sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2) - var04*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)*(-3*var10*( &
      1 - var01)*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)/(var01*var02 - var01 - var02 + 1)**2 - 3*var11*(1 &
      - var01)*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)/(var01*var02 - var01 - var02 + 1)**2 - 3*var12*(1 - &
      var01)*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)/(var01*var02 - var01 - var02 + 1)**2 - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2 + (4.0d0/3.0d0)*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39) - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var01)/(var01*var02 &
      - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var08*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)* &
      var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - 2.0d0/ &
      3.0d0*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 - &
      2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 + 1)** &
      2)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)) &
      /(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(39, 2) = -1.5d0*var04*var10*(1 - var01)/((var01* &
      var02 - var01 - var02 + 1)**2*sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)) - var04*(1.5d0* &
      var10/(var01*var02 - var01 - var02 + 1) - 1.5d0*var28 - 1.5d0* &
      var34 - 1.5d0*var40)*(-3*var10*(1 - var01)*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - var01 &
      - var02 + 1)**2 - 3*var11*(1 - var01)*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 - &
      var02 + 1)**2 - 3*var12*(1 - var01)*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - var02 &
      + 1)**2 - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1) - var27 - var33 - var39) - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + &
      (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/3.0d0)*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37))/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(40, 2) = -1.5d0*var04*var11*(1 - var01)/((var01* &
      var02 - var01 - var02 + 1)**2*sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)) - var04*(1.5d0* &
      var11/(var01*var02 - var01 - var02 + 1) - 1.5d0*var29 - 1.5d0* &
      var35 - 1.5d0*var41)*(-3*var10*(1 - var01)*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - var01 &
      - var02 + 1)**2 - 3*var11*(1 - var01)*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 - &
      var02 + 1)**2 - 3*var12*(1 - var01)*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - var02 &
      + 1)**2 - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1) - var27 - var33 - var39) - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + &
      (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/3.0d0)*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37))/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(41, 2) = -1.5d0*var04*var12*(1 - var01)/((var01* &
      var02 - var01 - var02 + 1)**2*sqrt(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)) - var04*(1.5d0* &
      var12/(var01*var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0* &
      var36 - 1.5d0*var42)*(-3*var10*(1 - var01)*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)/(var01*var02 - var01 &
      - var02 + 1)**2 - 3*var11*(1 - var01)*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)/(var01*var02 - var01 - &
      var02 + 1)**2 - 3*var12*(1 - var01)*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)/(var01*var02 - var01 - var02 &
      + 1)**2 - 3.0d0/4.0d0*(-2.0d0/3.0d0*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 + (4.0d0/3.0d0)*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2)*(-1.0d0/3.0d0*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1) - var27 - var33 - var39) - 3.0d0/4.0d0*(-2.0d0 &
      /3.0d0*var07*(1 - var01)/(var01*var02 - var01 - var02 + 1)**2 + ( &
      4.0d0/3.0d0)*var08*(1 - var01)/(var01*var02 - var01 - var02 + 1) &
      **2 - 2.0d0/3.0d0*var09*(1 - var01)/(var01*var02 - var01 - var02 &
      + 1)**2)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + &
      (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38) - 3.0d0/4.0d0*((4.0d0/3.0d0)*var07*(1 - var01)/(var01* &
      var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var08*(1 - var01)/( &
      var01*var02 - var01 - var02 + 1)**2 - 2.0d0/3.0d0*var09*(1 - &
      var01)/(var01*var02 - var01 - var02 + 1)**2)*((2.0d0/3.0d0)*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37))/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(42, 2) = 0
out_result(1, 3) = 0
out_result(2, 3) = 0
out_result(3, 3) = 0
out_result(4, 3) = 0
out_result(5, 3) = 0
out_result(6, 3) = 0
out_result(7, 3) = -1
out_result(8, 3) = 0
out_result(9, 3) = 0
out_result(10, 3) = 0
out_result(11, 3) = 0
out_result(12, 3) = 0
out_result(13, 3) = 0
out_result(14, 3) = 0
out_result(15, 3) = 0
out_result(16, 3) = 0
out_result(17, 3) = 0
out_result(18, 3) = 0
out_result(19, 3) = 0
out_result(20, 3) = 0
out_result(21, 3) = 0
out_result(22, 3) = 0
out_result(23, 3) = 0
out_result(24, 3) = 0
out_result(25, 3) = 0
out_result(26, 3) = 0
out_result(27, 3) = 0
out_result(28, 3) = 0
out_result(29, 3) = 0
out_result(30, 3) = 0
out_result(31, 3) = 0
out_result(32, 3) = 0
out_result(33, 3) = 0
out_result(34, 3) = 0
out_result(35, 3) = 1
out_result(36, 3) = 0
out_result(37, 3) = 0
out_result(38, 3) = 0
out_result(39, 3) = 0
out_result(40, 3) = 0
out_result(41, 3) = 0
out_result(42, 3) = 0
out_result(1, 4) = 0
out_result(2, 4) = 0
out_result(3, 4) = 0
out_result(4, 4) = 0
out_result(5, 4) = 0
out_result(6, 4) = 0
out_result(7, 4) = 0
out_result(8, 4) = 0
out_result(9, 4) = 0
out_result(10, 4) = 0
out_result(11, 4) = 0
out_result(12, 4) = 0
out_result(13, 4) = 0
out_result(14, 4) = 0
out_result(15, 4) = 0
out_result(16, 4) = 0
out_result(17, 4) = 0
out_result(18, 4) = 0
out_result(19, 4) = 0
out_result(20, 4) = 0
out_result(21, 4) = 0
out_result(22, 4) = 0
out_result(23, 4) = 0
out_result(24, 4) = 0
out_result(25, 4) = 0
out_result(26, 4) = 0
out_result(27, 4) = 0
out_result(28, 4) = 0
out_result(29, 4) = 0
out_result(30, 4) = 0
out_result(31, 4) = 0
out_result(32, 4) = 0
out_result(33, 4) = 0
out_result(34, 4) = 0
out_result(35, 4) = 0
out_result(36, 4) = -(1.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1) - &
      0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var25 - &
      1.5d0*var31 - 1.5d0*var37)/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(37, 4) = -(-0.5d0*var07/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1) - &
      0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(38, 4) = -(-0.5d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1) + &
      1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(39, 4) = -(1.5d0*var10/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)/sqrt(3*( &
      var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(40, 4) = -(1.5d0*var11/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)/sqrt(3*( &
      var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(41, 4) = -(1.5d0*var12/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)/sqrt(3*( &
      var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(42, 4) = -1
out_result(1, 5) = 0
out_result(2, 5) = 0
out_result(3, 5) = 0
out_result(4, 5) = 0
out_result(5, 5) = 0
out_result(6, 5) = 0
out_result(7, 5) = 0
out_result(8, 5) = 0
out_result(9, 5) = 0
out_result(10, 5) = 0
out_result(11, 5) = 0
out_result(12, 5) = 0
out_result(13, 5) = 0
out_result(14, 5) = 0
out_result(15, 5) = -((1.0d0/2.0d0)*(0.666666666666667d0* &
      par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) + (1.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3* &
      var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 &
      - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) + &
      0.666666666666667d0)*(3*var10**2/(var01*var02 - var01 - var02 + 1 &
      )**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)/(par42*par58*(1 - var01)**2))**par59*(var01*var02 &
      - var01 - var02 + 1)**(-par60)
out_result(16, 5) = 0
out_result(17, 5) = par52*var25
out_result(18, 5) = par52*var26
out_result(19, 5) = par52*var27
out_result(20, 5) = par52*var28
out_result(21, 5) = par52*var29
out_result(22, 5) = par52*var30
out_result(23, 5) = par51*var31
out_result(24, 5) = par51*var32
out_result(25, 5) = par51*var33
out_result(26, 5) = par51*var34
out_result(27, 5) = par51*var35
out_result(28, 5) = par51*var36
out_result(29, 5) = par55*var37
out_result(30, 5) = par55*var38
out_result(31, 5) = par55*var39
out_result(32, 5) = par55*var40
out_result(33, 5) = par55*var41
out_result(34, 5) = par55*var42
out_result(35, 5) = -par56*par57*var05**par57/var05
out_result(36, 5) = 0
out_result(37, 5) = 0
out_result(38, 5) = 0
out_result(39, 5) = 0
out_result(40, 5) = 0
out_result(41, 5) = 0
out_result(42, 5) = 1
out_result(1, 6) = 0
out_result(2, 6) = 0
out_result(3, 6) = 0
out_result(4, 6) = 0
out_result(5, 6) = 0
out_result(6, 6) = 0
out_result(7, 6) = 0
out_result(8, 6) = -1.5d0*par01*par45*par47*var06**par47*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/var06
out_result(9, 6) = -1.5d0*par01*par45*par47*var06**par47*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 &
      - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/var06
out_result(10, 6) = -1.5d0*par01*par45*par47*var06**par47*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 &
      - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/var06
out_result(11, 6) = -1.5d0*par01*par45*par47*var06**par47* &
      var10*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var06*(var01*var02 - &
      var01 - var02 + 1))
out_result(12, 6) = -1.5d0*par01*par45*par47*var06**par47* &
      var11*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var06*(var01*var02 - &
      var01 - var02 + 1))
out_result(13, 6) = -1.5d0*par01*par45*par47*var06**par47* &
      var12*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var06*(var01*var02 - &
      var01 - var02 + 1))
out_result(14, 6) = -par01*par45*par47*var06**par47*(3* &
      var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 &
      - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0 &
      )*par46)/var06 + 1
out_result(15, 6) = 0
out_result(16, 6) = 0
out_result(17, 6) = 0
out_result(18, 6) = 0
out_result(19, 6) = 0
out_result(20, 6) = 0
out_result(21, 6) = 0
out_result(22, 6) = 0
out_result(23, 6) = 0
out_result(24, 6) = 0
out_result(25, 6) = 0
out_result(26, 6) = 0
out_result(27, 6) = 0
out_result(28, 6) = 0
out_result(29, 6) = 0
out_result(30, 6) = 0
out_result(31, 6) = 0
out_result(32, 6) = 0
out_result(33, 6) = 0
out_result(34, 6) = 0
out_result(35, 6) = 0
out_result(36, 6) = 0
out_result(37, 6) = 0
out_result(38, 6) = 0
out_result(39, 6) = 0
out_result(40, 6) = 0
out_result(41, 6) = 0
out_result(42, 6) = 0
out_result(1, 7) = 1
out_result(2, 7) = 0
out_result(3, 7) = 0
out_result(4, 7) = 0
out_result(5, 7) = 0
out_result(6, 7) = 0
out_result(7, 7) = (-1.0d0/2.0d0*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) - 1.0d0/2.0d0*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + ((2.0d0/3.0d0) &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - var25 - var31 - var37)/(var01*var02 - &
      var01 - var02 + 1))/sqrt(3*(var10/(var01*var02 - var01 - var02 + &
      1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - &
      var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - &
      var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 7) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) + 2*((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) - 1.0d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(9, 7) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) + 2*((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.5d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(10, 7) = -1.5d0*par01*par45*var06**par47*((1.0d0 &
      /2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1) + 2*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      /(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.5d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(11, 7) = -1.5d0*par01*par45*var06**par47*var10* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) - (-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) + 2*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 &
      + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - &
      var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(12, 7) = -1.5d0*par01*par45*var06**par47*var11* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) - (-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) + 2*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 &
      + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - &
      var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(13, 7) = -1.5d0*par01*par45*var06**par47*var12* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) - (-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) + 2*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 &
      + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - &
      var02 + 1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(14, 7) = -1.0d0/2.0d0*par01*par45*par46*var06** &
      par47*(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1) + 2*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      /(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46)/(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(15, 7) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*((1.0d0/2.0d0)*((3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2*((-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) + ( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - 2*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 &
      + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 &
      - var01 - var02 + 1))/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**2 + (2.0d0/3.0d0)*(3 - 6*par43)*((1.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))/((var01*var02 - var01 - var02 + 1)*(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)))*(3* &
      var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 &
      - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*( &
      1 - var01)**2) + (1.0d0/2.0d0)*(0.666666666666667d0*par43 + (3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(- &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) + 2*((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))/(par42*par58*(1 - var01)**2))*(var01* &
      var02 - var01 - var02 + 1)**(-par60)/((0.666666666666667d0*par43 &
      + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) + &
      0.666666666666667d0)*(3*var10**2/(var01*var02 - var01 - var02 + 1 &
      )**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(16, 7) = -1.0d0/2.0d0*par01*par48*par49*(-( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) + 2*((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par49)/(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(17, 7) = 0
out_result(18, 7) = 0
out_result(19, 7) = 0
out_result(20, 7) = 0
out_result(21, 7) = 0
out_result(22, 7) = 0
out_result(23, 7) = 0
out_result(24, 7) = 0
out_result(25, 7) = 0
out_result(26, 7) = 0
out_result(27, 7) = 0
out_result(28, 7) = 0
out_result(29, 7) = 0
out_result(30, 7) = 0
out_result(31, 7) = 0
out_result(32, 7) = 0
out_result(33, 7) = 0
out_result(34, 7) = 0
out_result(35, 7) = 0
out_result(36, 7) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38)/(var01*var02 - var01 - var02 &
      + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37) &
      /(var01*var02 - var01 - var02 + 1))*(1.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var25 - &
      1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) - 1.0d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(37, 7) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38)/(var01*var02 - var01 - var02 &
      + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37) &
      /(var01*var02 - var01 - var02 + 1))*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 0.5d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(38, 7) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38)/(var01*var02 - var01 - var02 &
      + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37) &
      /(var01*var02 - var01 - var02 + 1))*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 0.5d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(39, 7) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38)/(var01*var02 - var01 - var02 &
      + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37) &
      /(var01*var02 - var01 - var02 + 1))*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(40, 7) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38)/(var01*var02 - var01 - var02 &
      + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37) &
      /(var01*var02 - var01 - var02 + 1))*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(41, 7) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var26 - var32 - var38)/(var01*var02 - var01 - var02 &
      + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0 &
      *var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37) &
      /(var01*var02 - var01 - var02 + 1))*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(42, 7) = 0
out_result(1, 8) = 0
out_result(2, 8) = 1
out_result(3, 8) = 0
out_result(4, 8) = 0
out_result(5, 8) = 0
out_result(6, 8) = 0
out_result(7, 8) = (-1.0d0/2.0d0*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) + (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*((2.0d0/ &
      3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/(var01* &
      var02 - var01 - var02 + 1))/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 8) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) + 2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 &
      - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.5d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(9, 8) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) + 2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 &
      - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) - 1.0d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(10, 8) = -1.5d0*par01*par45*var06**par47*((1.0d0 &
      /2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) + 2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      /(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.5d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(11, 8) = -1.5d0*par01*par45*var06**par47*var10* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) + 2*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) - ((2.0d0 &
      /3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + &
      1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - var02 + &
      1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(12, 8) = -1.5d0*par01*par45*var06**par47*var11* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) + 2*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) - ((2.0d0 &
      /3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + &
      1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - var02 + &
      1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(13, 8) = -1.5d0*par01*par45*var06**par47*var12* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) + 2*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) - ((2.0d0 &
      /3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + &
      1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - var02 + &
      1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(14, 8) = -1.0d0/2.0d0*par01*par45*par46*var06** &
      par47*(-(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) + 2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      /(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46)/(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(15, 8) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*((1.0d0/2.0d0)*((3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2*((-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) - 2 &
      *(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) + ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1))/(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**2 + (2.0d0/3.0d0)*(3 - 6*par43)*((1.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))/((var01*var02 - var01 - var02 + 1)*(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)))*(3* &
      var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 &
      - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*( &
      1 - var01)**2) + (1.0d0/2.0d0)*(0.666666666666667d0*par43 + (3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(- &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) + 2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 &
      - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))/(par42*par58*(1 - var01)**2))*(var01* &
      var02 - var01 - var02 + 1)**(-par60)/((0.666666666666667d0*par43 &
      + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) + &
      0.666666666666667d0)*(3*var10**2/(var01*var02 - var01 - var02 + 1 &
      )**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(16, 8) = -1.0d0/2.0d0*par01*par48*par49*(-( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) + 2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 &
      - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 &
      - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par49)/(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(17, 8) = 0
out_result(18, 8) = 0
out_result(19, 8) = 0
out_result(20, 8) = 0
out_result(21, 8) = 0
out_result(22, 8) = 0
out_result(23, 8) = 0
out_result(24, 8) = 0
out_result(25, 8) = 0
out_result(26, 8) = 0
out_result(27, 8) = 0
out_result(28, 8) = 0
out_result(29, 8) = 0
out_result(30, 8) = 0
out_result(31, 8) = 0
out_result(32, 8) = 0
out_result(33, 8) = 0
out_result(34, 8) = 0
out_result(35, 8) = 0
out_result(36, 8) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var25 - &
      1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 0.5d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(37, 8) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) - 1.0d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(38, 8) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 0.5d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(39, 8) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(40, 8) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(41, 8) = -var04*((1.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)/(var01*var02 &
      - var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(42, 8) = 0
out_result(1, 9) = 0
out_result(2, 9) = 0
out_result(3, 9) = 1
out_result(4, 9) = 0
out_result(5, 9) = 0
out_result(6, 9) = 0
out_result(7, 9) = ((-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/2.0d0*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*((2.0d0/ &
      3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/(var01* &
      var02 - var01 - var02 + 1))/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 9) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.5d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(9, 9) = -1.5d0*par01*par45*var06**par47*((1.0d0/ &
      2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      *(2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.5d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(10, 9) = -1.5d0*par01*par45*var06**par47*((1.0d0 &
      /2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))*(2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      /(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) - 1.0d0*par01*par45*var06**par47*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/(var01*var02 - var01 - var02 + 1)
out_result(11, 9) = -1.5d0*par01*par45*var06**par47*var10* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(2*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) - (-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) - ((2.0d0 &
      /3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + &
      1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - var02 + &
      1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(12, 9) = -1.5d0*par01*par45*var06**par47*var11* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(2*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) - (-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) - ((2.0d0 &
      /3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + &
      1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - var02 + &
      1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(13, 9) = -1.5d0*par01*par45*var06**par47*var12* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(2*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))/(var01*var02 - var01 - var02 + 1) - (-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) - ((2.0d0 &
      /3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + &
      1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)**(( &
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01*var02 - var01 - var02 + &
      1)*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/ &
      (var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(14, 9) = -1.0d0/2.0d0*par01*par45*par46*var06** &
      par47*(2*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      /(var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46)/(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(15, 9) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*((1.0d0/2.0d0)*((3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2*(-2*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))/(var01*var02 - var01 - var02 + 1) + ( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) + ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1))/(3*var10**2/(var01*var02 - var01 - var02 + 1) &
      **2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12** &
      2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**2 + (2.0d0/3.0d0)*(3 - 6*par43)*((1.0d0/3.0d0)* &
      var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))/((var01*var02 - var01 - var02 + 1)*(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)))*(3* &
      var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 &
      - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*( &
      1 - var01)**2) + (1.0d0/2.0d0)*(0.666666666666667d0*par43 + (3 - &
      6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + &
      (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(2 &
      *(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))/(par42*par58*(1 - var01)**2))*(var01* &
      var02 - var01 - var02 + 1)**(-par60)/((0.666666666666667d0*par43 &
      + (3 - 6*par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - &
      var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2) + &
      0.666666666666667d0)*(3*var10**2/(var01*var02 - var01 - var02 + 1 &
      )**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2))
out_result(16, 9) = -1.0d0/2.0d0*par01*par48*par49*(2*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - var01 - &
      var02 + 1) - (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01*var02 - &
      var01 - var02 + 1) - ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))/(var01* &
      var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par49)/(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2)
out_result(17, 9) = 0
out_result(18, 9) = 0
out_result(19, 9) = 0
out_result(20, 9) = 0
out_result(21, 9) = 0
out_result(22, 9) = 0
out_result(23, 9) = 0
out_result(24, 9) = 0
out_result(25, 9) = 0
out_result(26, 9) = 0
out_result(27, 9) = 0
out_result(28, 9) = 0
out_result(29, 9) = 0
out_result(30, 9) = 0
out_result(31, 9) = 0
out_result(32, 9) = 0
out_result(33, 9) = 0
out_result(34, 9) = 0
out_result(35, 9) = 0
out_result(36, 9) = -var04*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var25 - &
      1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 0.5d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(37, 9) = -var04*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 0.5d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(38, 9) = -var04*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0) - 1.0d0* &
      var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(39, 9) = -var04*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(40, 9) = -var04*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(41, 9) = -var04*(-(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)/(var01*var02 - var01 - var02 &
      + 1) + (1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)/(var01*var02 - var01 - var02 + 1) + (1.0d0/2.0d0)* &
      ((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)/( &
      var01*var02 - var01 - var02 + 1))*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(42, 9) = 0
out_result(1, 10) = 0
out_result(2, 10) = 0
out_result(3, 10) = 0
out_result(4, 10) = 1
out_result(5, 10) = 0
out_result(6, 10) = 0
out_result(7, 10) = 3*(var10/(var01*var02 - var01 - var02 + &
      1) - var28 - var34 - var40)/((var01*var02 - var01 - var02 + 1)* &
      sqrt(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2))
out_result(8, 10) = -9.0d0*par01*par45*var06**par47*var10* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(9, 10) = -9.0d0*par01*par45*var06**par47*var10* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(10, 10) = -9.0d0*par01*par45*var06**par47*var10* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(11, 10) = -9.0d0*par01*par45*var06**par47*var10 &
      **2*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 &
      - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)) - 1.5d0*par01*par45* &
      var06**par47*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)
out_result(12, 10) = -9.0d0*par01*par45*var06**par47*var10* &
      var11*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(13, 10) = -9.0d0*par01*par45*var06**par47*var10* &
      var12*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(14, 10) = -3*par01*par45*par46*var06**par47* &
      var10*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46)/((var01*var02 - var01 - var02 + 1)**2 &
      *(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(15, 10) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*(-3*var10*(3 - 6* &
      par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(par42*par58*( &
      1 - var01)**2*(var01*var02 - var01 - var02 + 1)**2*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)) + 3*var10*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)/(par42*par58*(1 - var01)** &
      2*(var01*var02 - var01 - var02 + 1)**2))*(var01*var02 - var01 - &
      var02 + 1)**(-par60)/((0.666666666666667d0*par43 + (3 - 6*par43)* &
      ((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(16, 10) = -3*par01*par48*par49*var10*(3*var10**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par49)/(( &
      var01*var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(17, 10) = 0
out_result(18, 10) = 0
out_result(19, 10) = 0
out_result(20, 10) = 0
out_result(21, 10) = 0
out_result(22, 10) = 0
out_result(23, 10) = 0
out_result(24, 10) = 0
out_result(25, 10) = 0
out_result(26, 10) = 0
out_result(27, 10) = 0
out_result(28, 10) = 0
out_result(29, 10) = 0
out_result(30, 10) = 0
out_result(31, 10) = 0
out_result(32, 10) = 0
out_result(33, 10) = 0
out_result(34, 10) = 0
out_result(35, 10) = 0
out_result(36, 10) = 3*var04*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)*(1.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var25 - &
      1.5d0*var31 - 1.5d0*var37)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(37, 10) = 3*var04*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(38, 10) = 3*var04*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(39, 10) = 3*var04*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)/(( &
      var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)) - &
      1.5d0*var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(40, 10) = 3*var04*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)/(( &
      var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0))
out_result(41, 10) = 3*var04*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)/(( &
      var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0))
out_result(42, 10) = 0
out_result(1, 11) = 0
out_result(2, 11) = 0
out_result(3, 11) = 0
out_result(4, 11) = 0
out_result(5, 11) = 1
out_result(6, 11) = 0
out_result(7, 11) = 3*(var11/(var01*var02 - var01 - var02 + &
      1) - var29 - var35 - var41)/((var01*var02 - var01 - var02 + 1)* &
      sqrt(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2))
out_result(8, 11) = -9.0d0*par01*par45*var06**par47*var11* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(9, 11) = -9.0d0*par01*par45*var06**par47*var11* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(10, 11) = -9.0d0*par01*par45*var06**par47*var11* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(11, 11) = -9.0d0*par01*par45*var06**par47*var10* &
      var11*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(12, 11) = -9.0d0*par01*par45*var06**par47*var11 &
      **2*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 &
      - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)) - 1.5d0*par01*par45* &
      var06**par47*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)
out_result(13, 11) = -9.0d0*par01*par45*var06**par47*var11* &
      var12*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(14, 11) = -3*par01*par45*par46*var06**par47* &
      var11*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46)/((var01*var02 - var01 - var02 + 1)**2 &
      *(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(15, 11) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*(-3*var11*(3 - 6* &
      par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(par42*par58*( &
      1 - var01)**2*(var01*var02 - var01 - var02 + 1)**2*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)) + 3*var11*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)/(par42*par58*(1 - var01)** &
      2*(var01*var02 - var01 - var02 + 1)**2))*(var01*var02 - var01 - &
      var02 + 1)**(-par60)/((0.666666666666667d0*par43 + (3 - 6*par43)* &
      ((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(16, 11) = -3*par01*par48*par49*var11*(3*var10**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par49)/(( &
      var01*var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(17, 11) = 0
out_result(18, 11) = 0
out_result(19, 11) = 0
out_result(20, 11) = 0
out_result(21, 11) = 0
out_result(22, 11) = 0
out_result(23, 11) = 0
out_result(24, 11) = 0
out_result(25, 11) = 0
out_result(26, 11) = 0
out_result(27, 11) = 0
out_result(28, 11) = 0
out_result(29, 11) = 0
out_result(30, 11) = 0
out_result(31, 11) = 0
out_result(32, 11) = 0
out_result(33, 11) = 0
out_result(34, 11) = 0
out_result(35, 11) = 0
out_result(36, 11) = 3*var04*(var11/(var01*var02 - var01 - &
      var02 + 1) - var29 - var35 - var41)*(1.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var25 - &
      1.5d0*var31 - 1.5d0*var37)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(37, 11) = 3*var04*(var11/(var01*var02 - var01 - &
      var02 + 1) - var29 - var35 - var41)*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(38, 11) = 3*var04*(var11/(var01*var02 - var01 - &
      var02 + 1) - var29 - var35 - var41)*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(39, 11) = 3*var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)/ &
      ((var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0))
out_result(40, 11) = 3*var04*(var11/(var01*var02 - var01 - &
      var02 + 1) - var29 - var35 - var41)*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)/(( &
      var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)) - &
      1.5d0*var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(41, 11) = 3*var04*(var11/(var01*var02 - var01 - &
      var02 + 1) - var29 - var35 - var41)*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)/(( &
      var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0))
out_result(42, 11) = 0
out_result(1, 12) = 0
out_result(2, 12) = 0
out_result(3, 12) = 0
out_result(4, 12) = 0
out_result(5, 12) = 0
out_result(6, 12) = 1
out_result(7, 12) = 3*(var12/(var01*var02 - var01 - var02 + &
      1) - var30 - var36 - var42)/((var01*var02 - var01 - var02 + 1)* &
      sqrt(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - &
      var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - &
      var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - &
      var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2))
out_result(8, 12) = -9.0d0*par01*par45*var06**par47*var12* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(9, 12) = -9.0d0*par01*par45*var06**par47*var12* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(10, 12) = -9.0d0*par01*par45*var06**par47*var12* &
      ((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3* &
      var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01 &
      *var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/((var01* &
      var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + &
      3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*( &
      -1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(11, 12) = -9.0d0*par01*par45*var06**par47*var10* &
      var12*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(12, 12) = -9.0d0*par01*par45*var06**par47*var11* &
      var12*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(13, 12) = -9.0d0*par01*par45*var06**par47*var12 &
      **2*((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)*(3*var10**2/(var01*var02 &
      - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 &
      + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46 - &
      1.0d0/2.0d0)/((var01*var02 - var01 - var02 + 1)**3*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)) - 1.5d0*par01*par45* &
      var06**par47*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3 &
      *var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/( &
      var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2)**((1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 &
      - var01 - var02 + 1)
out_result(14, 12) = -3*par01*par45*par46*var06**par47* &
      var12*(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01* &
      var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01 &
      *var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2)**((1.0d0/2.0d0)*par46)/((var01*var02 - var01 - var02 + 1)**2 &
      *(3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(15, 12) = -2*par42*par58*par59*((1.0d0/2.0d0)*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)/(par42*par58*(1 - var01) &
      **2))**par59*(1 - var01)**2*(-par40 + var05)*(-3*var12*(3 - 6* &
      par43)*((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2/(par42*par58*( &
      1 - var01)**2*(var01*var02 - var01 - var02 + 1)**2*(3*var10**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)) + 3*var12*( &
      0.666666666666667d0*par43 + (3 - 6*par43)*((1.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) + (1.0d0/3.0d0)*var09/(var01*var02 - &
      var01 - var02 + 1))**2/(3*var10**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var12 &
      **2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 &
      - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 &
      - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1))**2) + 0.666666666666667d0)/(par42*par58*(1 - var01)** &
      2*(var01*var02 - var01 - var02 + 1)**2))*(var01*var02 - var01 - &
      var02 + 1)**(-par60)/((0.666666666666667d0*par43 + (3 - 6*par43)* &
      ((1.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) + (1.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) + (1.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1))**2/(3*var10**2/(var01* &
      var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - &
      var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0) &
      *((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2) + 0.666666666666667d0)*(3 &
      *var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
      var01*var02 - var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - &
      var01 - var02 + 1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1))**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1)) &
      **2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2))
out_result(16, 12) = -3*par01*par48*par49*var12*(3*var10**2 &
      /(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + &
      1)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0 &
      /3.0d0*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par49)/(( &
      var01*var02 - var01 - var02 + 1)**2*(3*var10**2/(var01*var02 - &
      var01 - var02 + 1)**2 + 3*var11**2/(var01*var02 - var01 - var02 + &
      1)**2 + 3*var12**2/(var01*var02 - var01 - var02 + 1)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0 &
      )*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var09/(var01*var02 - var01 - var02 + 1))**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1))**2))
out_result(17, 12) = 0
out_result(18, 12) = 0
out_result(19, 12) = 0
out_result(20, 12) = 0
out_result(21, 12) = 0
out_result(22, 12) = 0
out_result(23, 12) = 0
out_result(24, 12) = 0
out_result(25, 12) = 0
out_result(26, 12) = 0
out_result(27, 12) = 0
out_result(28, 12) = 0
out_result(29, 12) = 0
out_result(30, 12) = 0
out_result(31, 12) = 0
out_result(32, 12) = 0
out_result(33, 12) = 0
out_result(34, 12) = 0
out_result(35, 12) = 0
out_result(36, 12) = 3*var04*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)*(1.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var25 - &
      1.5d0*var31 - 1.5d0*var37)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(37, 12) = 3*var04*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(38, 12) = 3*var04*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)/((var01*var02 - var01 - var02 + 1)*(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0))
out_result(39, 12) = 3*var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)/ &
      ((var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0))
out_result(40, 12) = 3*var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)/ &
      ((var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 &
      - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 &
      - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/( &
      var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + ( &
      3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0))
out_result(41, 12) = 3*var04*(var12/(var01*var02 - var01 - &
      var02 + 1) - var30 - var36 - var42)*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)/(( &
      var01*var02 - var01 - var02 + 1)*(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)) - &
      1.5d0*var04/((var01*var02 - var01 - var02 + 1)*sqrt(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2))
out_result(42, 12) = 0
out_result(1, 13) = (par42*par43/((1 - 2*par43)*(par43 + 1 &
      )) + 2*par42/(2*par43 + 2))*(var01*var02 - var01 - var02 + 1)
out_result(2, 13) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(3, 13) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(4, 13) = 0
out_result(5, 13) = 0
out_result(6, 13) = 0
out_result(7, 13) = 0
out_result(8, 13) = 0
out_result(9, 13) = 0
out_result(10, 13) = 0
out_result(11, 13) = 0
out_result(12, 13) = 0
out_result(13, 13) = 0
out_result(14, 13) = 0
out_result(15, 13) = 0
out_result(16, 13) = 0
out_result(17, 13) = -0.666666666666667d0*par50
out_result(18, 13) = 0
out_result(19, 13) = 0
out_result(20, 13) = 0
out_result(21, 13) = 0
out_result(22, 13) = 0
out_result(23, 13) = -0.666666666666667d0*par54
out_result(24, 13) = 0
out_result(25, 13) = 0
out_result(26, 13) = 0
out_result(27, 13) = 0
out_result(28, 13) = 0
out_result(29, 13) = -0.666666666666667d0*par53
out_result(30, 13) = 0
out_result(31, 13) = 0
out_result(32, 13) = 0
out_result(33, 13) = 0
out_result(34, 13) = 0
out_result(35, 13) = 0
out_result(36, 13) = 1
out_result(37, 13) = 0
out_result(38, 13) = 0
out_result(39, 13) = 0
out_result(40, 13) = 0
out_result(41, 13) = 0
out_result(42, 13) = 0
out_result(1, 14) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(2, 14) = (par42*par43/((1 - 2*par43)*(par43 + 1 &
      )) + 2*par42/(2*par43 + 2))*(var01*var02 - var01 - var02 + 1)
out_result(3, 14) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(4, 14) = 0
out_result(5, 14) = 0
out_result(6, 14) = 0
out_result(7, 14) = 0
out_result(8, 14) = 0
out_result(9, 14) = 0
out_result(10, 14) = 0
out_result(11, 14) = 0
out_result(12, 14) = 0
out_result(13, 14) = 0
out_result(14, 14) = 0
out_result(15, 14) = 0
out_result(16, 14) = 0
out_result(17, 14) = 0
out_result(18, 14) = -0.666666666666667d0*par50
out_result(19, 14) = 0
out_result(20, 14) = 0
out_result(21, 14) = 0
out_result(22, 14) = 0
out_result(23, 14) = 0
out_result(24, 14) = -0.666666666666667d0*par54
out_result(25, 14) = 0
out_result(26, 14) = 0
out_result(27, 14) = 0
out_result(28, 14) = 0
out_result(29, 14) = 0
out_result(30, 14) = -0.666666666666667d0*par53
out_result(31, 14) = 0
out_result(32, 14) = 0
out_result(33, 14) = 0
out_result(34, 14) = 0
out_result(35, 14) = 0
out_result(36, 14) = 0
out_result(37, 14) = 1
out_result(38, 14) = 0
out_result(39, 14) = 0
out_result(40, 14) = 0
out_result(41, 14) = 0
out_result(42, 14) = 0
out_result(1, 15) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(2, 15) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(3, 15) = (par42*par43/((1 - 2*par43)*(par43 + 1 &
      )) + 2*par42/(2*par43 + 2))*(var01*var02 - var01 - var02 + 1)
out_result(4, 15) = 0
out_result(5, 15) = 0
out_result(6, 15) = 0
out_result(7, 15) = 0
out_result(8, 15) = 0
out_result(9, 15) = 0
out_result(10, 15) = 0
out_result(11, 15) = 0
out_result(12, 15) = 0
out_result(13, 15) = 0
out_result(14, 15) = 0
out_result(15, 15) = 0
out_result(16, 15) = 0
out_result(17, 15) = 0
out_result(18, 15) = 0
out_result(19, 15) = -0.666666666666667d0*par50
out_result(20, 15) = 0
out_result(21, 15) = 0
out_result(22, 15) = 0
out_result(23, 15) = 0
out_result(24, 15) = 0
out_result(25, 15) = -0.666666666666667d0*par54
out_result(26, 15) = 0
out_result(27, 15) = 0
out_result(28, 15) = 0
out_result(29, 15) = 0
out_result(30, 15) = 0
out_result(31, 15) = -0.666666666666667d0*par53
out_result(32, 15) = 0
out_result(33, 15) = 0
out_result(34, 15) = 0
out_result(35, 15) = 0
out_result(36, 15) = 0
out_result(37, 15) = 0
out_result(38, 15) = 1
out_result(39, 15) = 0
out_result(40, 15) = 0
out_result(41, 15) = 0
out_result(42, 15) = 0
out_result(1, 16) = 0
out_result(2, 16) = 0
out_result(3, 16) = 0
out_result(4, 16) = par42*(var01*var02 - var01 - var02 + 1) &
      /(2*par43 + 2)
out_result(5, 16) = 0
out_result(6, 16) = 0
out_result(7, 16) = 0
out_result(8, 16) = 0
out_result(9, 16) = 0
out_result(10, 16) = 0
out_result(11, 16) = 0
out_result(12, 16) = 0
out_result(13, 16) = 0
out_result(14, 16) = 0
out_result(15, 16) = 0
out_result(16, 16) = 0
out_result(17, 16) = 0
out_result(18, 16) = 0
out_result(19, 16) = 0
out_result(20, 16) = -0.666666666666667d0*par50
out_result(21, 16) = 0
out_result(22, 16) = 0
out_result(23, 16) = 0
out_result(24, 16) = 0
out_result(25, 16) = 0
out_result(26, 16) = -0.666666666666667d0*par54
out_result(27, 16) = 0
out_result(28, 16) = 0
out_result(29, 16) = 0
out_result(30, 16) = 0
out_result(31, 16) = 0
out_result(32, 16) = -0.666666666666667d0*par53
out_result(33, 16) = 0
out_result(34, 16) = 0
out_result(35, 16) = 0
out_result(36, 16) = 0
out_result(37, 16) = 0
out_result(38, 16) = 0
out_result(39, 16) = 1
out_result(40, 16) = 0
out_result(41, 16) = 0
out_result(42, 16) = 0
out_result(1, 17) = 0
out_result(2, 17) = 0
out_result(3, 17) = 0
out_result(4, 17) = 0
out_result(5, 17) = par42*(var01*var02 - var01 - var02 + 1) &
      /(2*par43 + 2)
out_result(6, 17) = 0
out_result(7, 17) = 0
out_result(8, 17) = 0
out_result(9, 17) = 0
out_result(10, 17) = 0
out_result(11, 17) = 0
out_result(12, 17) = 0
out_result(13, 17) = 0
out_result(14, 17) = 0
out_result(15, 17) = 0
out_result(16, 17) = 0
out_result(17, 17) = 0
out_result(18, 17) = 0
out_result(19, 17) = 0
out_result(20, 17) = 0
out_result(21, 17) = -0.666666666666667d0*par50
out_result(22, 17) = 0
out_result(23, 17) = 0
out_result(24, 17) = 0
out_result(25, 17) = 0
out_result(26, 17) = 0
out_result(27, 17) = -0.666666666666667d0*par54
out_result(28, 17) = 0
out_result(29, 17) = 0
out_result(30, 17) = 0
out_result(31, 17) = 0
out_result(32, 17) = 0
out_result(33, 17) = -0.666666666666667d0*par53
out_result(34, 17) = 0
out_result(35, 17) = 0
out_result(36, 17) = 0
out_result(37, 17) = 0
out_result(38, 17) = 0
out_result(39, 17) = 0
out_result(40, 17) = 1
out_result(41, 17) = 0
out_result(42, 17) = 0
out_result(1, 18) = 0
out_result(2, 18) = 0
out_result(3, 18) = 0
out_result(4, 18) = 0
out_result(5, 18) = 0
out_result(6, 18) = par42*(var01*var02 - var01 - var02 + 1) &
      /(2*par43 + 2)
out_result(7, 18) = 0
out_result(8, 18) = 0
out_result(9, 18) = 0
out_result(10, 18) = 0
out_result(11, 18) = 0
out_result(12, 18) = 0
out_result(13, 18) = 0
out_result(14, 18) = 0
out_result(15, 18) = 0
out_result(16, 18) = 0
out_result(17, 18) = 0
out_result(18, 18) = 0
out_result(19, 18) = 0
out_result(20, 18) = 0
out_result(21, 18) = 0
out_result(22, 18) = -0.666666666666667d0*par50
out_result(23, 18) = 0
out_result(24, 18) = 0
out_result(25, 18) = 0
out_result(26, 18) = 0
out_result(27, 18) = 0
out_result(28, 18) = -0.666666666666667d0*par54
out_result(29, 18) = 0
out_result(30, 18) = 0
out_result(31, 18) = 0
out_result(32, 18) = 0
out_result(33, 18) = 0
out_result(34, 18) = -0.666666666666667d0*par53
out_result(35, 18) = 0
out_result(36, 18) = 0
out_result(37, 18) = 0
out_result(38, 18) = 0
out_result(39, 18) = 0
out_result(40, 18) = 0
out_result(41, 18) = 1
out_result(42, 18) = 0
out_result(1, 19) = (par42*par43/((1 - 2*par43)*(par43 + 1 &
      )) + 2*par42/(2*par43 + 2))*(var01*var02 - var01 - var02 + 1)
out_result(2, 19) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(3, 19) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(4, 19) = 0
out_result(5, 19) = 0
out_result(6, 19) = 0
out_result(7, 19) = 0
out_result(8, 19) = 1
out_result(9, 19) = 0
out_result(10, 19) = 0
out_result(11, 19) = 0
out_result(12, 19) = 0
out_result(13, 19) = 0
out_result(14, 19) = 0
out_result(15, 19) = 0
out_result(16, 19) = 0
out_result(17, 19) = 0
out_result(18, 19) = 0
out_result(19, 19) = 0
out_result(20, 19) = 0
out_result(21, 19) = 0
out_result(22, 19) = 0
out_result(23, 19) = 0
out_result(24, 19) = 0
out_result(25, 19) = 0
out_result(26, 19) = 0
out_result(27, 19) = 0
out_result(28, 19) = 0
out_result(29, 19) = 0
out_result(30, 19) = 0
out_result(31, 19) = 0
out_result(32, 19) = 0
out_result(33, 19) = 0
out_result(34, 19) = 0
out_result(35, 19) = 0
out_result(36, 19) = 0
out_result(37, 19) = 0
out_result(38, 19) = 0
out_result(39, 19) = 0
out_result(40, 19) = 0
out_result(41, 19) = 0
out_result(42, 19) = 0
out_result(1, 20) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(2, 20) = (par42*par43/((1 - 2*par43)*(par43 + 1 &
      )) + 2*par42/(2*par43 + 2))*(var01*var02 - var01 - var02 + 1)
out_result(3, 20) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(4, 20) = 0
out_result(5, 20) = 0
out_result(6, 20) = 0
out_result(7, 20) = 0
out_result(8, 20) = 0
out_result(9, 20) = 1
out_result(10, 20) = 0
out_result(11, 20) = 0
out_result(12, 20) = 0
out_result(13, 20) = 0
out_result(14, 20) = 0
out_result(15, 20) = 0
out_result(16, 20) = 0
out_result(17, 20) = 0
out_result(18, 20) = 0
out_result(19, 20) = 0
out_result(20, 20) = 0
out_result(21, 20) = 0
out_result(22, 20) = 0
out_result(23, 20) = 0
out_result(24, 20) = 0
out_result(25, 20) = 0
out_result(26, 20) = 0
out_result(27, 20) = 0
out_result(28, 20) = 0
out_result(29, 20) = 0
out_result(30, 20) = 0
out_result(31, 20) = 0
out_result(32, 20) = 0
out_result(33, 20) = 0
out_result(34, 20) = 0
out_result(35, 20) = 0
out_result(36, 20) = 0
out_result(37, 20) = 0
out_result(38, 20) = 0
out_result(39, 20) = 0
out_result(40, 20) = 0
out_result(41, 20) = 0
out_result(42, 20) = 0
out_result(1, 21) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(2, 21) = par42*par43*(var01*var02 - var01 - &
      var02 + 1)/((1 - 2*par43)*(par43 + 1))
out_result(3, 21) = (par42*par43/((1 - 2*par43)*(par43 + 1 &
      )) + 2*par42/(2*par43 + 2))*(var01*var02 - var01 - var02 + 1)
out_result(4, 21) = 0
out_result(5, 21) = 0
out_result(6, 21) = 0
out_result(7, 21) = 0
out_result(8, 21) = 0
out_result(9, 21) = 0
out_result(10, 21) = 1
out_result(11, 21) = 0
out_result(12, 21) = 0
out_result(13, 21) = 0
out_result(14, 21) = 0
out_result(15, 21) = 0
out_result(16, 21) = 0
out_result(17, 21) = 0
out_result(18, 21) = 0
out_result(19, 21) = 0
out_result(20, 21) = 0
out_result(21, 21) = 0
out_result(22, 21) = 0
out_result(23, 21) = 0
out_result(24, 21) = 0
out_result(25, 21) = 0
out_result(26, 21) = 0
out_result(27, 21) = 0
out_result(28, 21) = 0
out_result(29, 21) = 0
out_result(30, 21) = 0
out_result(31, 21) = 0
out_result(32, 21) = 0
out_result(33, 21) = 0
out_result(34, 21) = 0
out_result(35, 21) = 0
out_result(36, 21) = 0
out_result(37, 21) = 0
out_result(38, 21) = 0
out_result(39, 21) = 0
out_result(40, 21) = 0
out_result(41, 21) = 0
out_result(42, 21) = 0
out_result(1, 22) = 0
out_result(2, 22) = 0
out_result(3, 22) = 0
out_result(4, 22) = par42*(var01*var02 - var01 - var02 + 1) &
      /(2*par43 + 2)
out_result(5, 22) = 0
out_result(6, 22) = 0
out_result(7, 22) = 0
out_result(8, 22) = 0
out_result(9, 22) = 0
out_result(10, 22) = 0
out_result(11, 22) = 1
out_result(12, 22) = 0
out_result(13, 22) = 0
out_result(14, 22) = 0
out_result(15, 22) = 0
out_result(16, 22) = 0
out_result(17, 22) = 0
out_result(18, 22) = 0
out_result(19, 22) = 0
out_result(20, 22) = 0
out_result(21, 22) = 0
out_result(22, 22) = 0
out_result(23, 22) = 0
out_result(24, 22) = 0
out_result(25, 22) = 0
out_result(26, 22) = 0
out_result(27, 22) = 0
out_result(28, 22) = 0
out_result(29, 22) = 0
out_result(30, 22) = 0
out_result(31, 22) = 0
out_result(32, 22) = 0
out_result(33, 22) = 0
out_result(34, 22) = 0
out_result(35, 22) = 0
out_result(36, 22) = 0
out_result(37, 22) = 0
out_result(38, 22) = 0
out_result(39, 22) = 0
out_result(40, 22) = 0
out_result(41, 22) = 0
out_result(42, 22) = 0
out_result(1, 23) = 0
out_result(2, 23) = 0
out_result(3, 23) = 0
out_result(4, 23) = 0
out_result(5, 23) = par42*(var01*var02 - var01 - var02 + 1) &
      /(2*par43 + 2)
out_result(6, 23) = 0
out_result(7, 23) = 0
out_result(8, 23) = 0
out_result(9, 23) = 0
out_result(10, 23) = 0
out_result(11, 23) = 0
out_result(12, 23) = 1
out_result(13, 23) = 0
out_result(14, 23) = 0
out_result(15, 23) = 0
out_result(16, 23) = 0
out_result(17, 23) = 0
out_result(18, 23) = 0
out_result(19, 23) = 0
out_result(20, 23) = 0
out_result(21, 23) = 0
out_result(22, 23) = 0
out_result(23, 23) = 0
out_result(24, 23) = 0
out_result(25, 23) = 0
out_result(26, 23) = 0
out_result(27, 23) = 0
out_result(28, 23) = 0
out_result(29, 23) = 0
out_result(30, 23) = 0
out_result(31, 23) = 0
out_result(32, 23) = 0
out_result(33, 23) = 0
out_result(34, 23) = 0
out_result(35, 23) = 0
out_result(36, 23) = 0
out_result(37, 23) = 0
out_result(38, 23) = 0
out_result(39, 23) = 0
out_result(40, 23) = 0
out_result(41, 23) = 0
out_result(42, 23) = 0
out_result(1, 24) = 0
out_result(2, 24) = 0
out_result(3, 24) = 0
out_result(4, 24) = 0
out_result(5, 24) = 0
out_result(6, 24) = par42*(var01*var02 - var01 - var02 + 1) &
      /(2*par43 + 2)
out_result(7, 24) = 0
out_result(8, 24) = 0
out_result(9, 24) = 0
out_result(10, 24) = 0
out_result(11, 24) = 0
out_result(12, 24) = 0
out_result(13, 24) = 1
out_result(14, 24) = 0
out_result(15, 24) = 0
out_result(16, 24) = 0
out_result(17, 24) = 0
out_result(18, 24) = 0
out_result(19, 24) = 0
out_result(20, 24) = 0
out_result(21, 24) = 0
out_result(22, 24) = 0
out_result(23, 24) = 0
out_result(24, 24) = 0
out_result(25, 24) = 0
out_result(26, 24) = 0
out_result(27, 24) = 0
out_result(28, 24) = 0
out_result(29, 24) = 0
out_result(30, 24) = 0
out_result(31, 24) = 0
out_result(32, 24) = 0
out_result(33, 24) = 0
out_result(34, 24) = 0
out_result(35, 24) = 0
out_result(36, 24) = 0
out_result(37, 24) = 0
out_result(38, 24) = 0
out_result(39, 24) = 0
out_result(40, 24) = 0
out_result(41, 24) = 0
out_result(42, 24) = 0
out_result(1, 25) = 0
out_result(2, 25) = 0
out_result(3, 25) = 0
out_result(4, 25) = 0
out_result(5, 25) = 0
out_result(6, 25) = 0
out_result(7, 25) = (-var07/(var01*var02 - var01 - var02 + &
      1) + (1.0d0/2.0d0)*var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/2.0d0)*var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var25 + (3.0d0/2.0d0)*var31 + (3.0d0/2.0d0)*var37)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 25) = 0
out_result(9, 25) = 0
out_result(10, 25) = 0
out_result(11, 25) = 0
out_result(12, 25) = 0
out_result(13, 25) = 0
out_result(14, 25) = 0
out_result(15, 25) = 0
out_result(16, 25) = 0
out_result(17, 25) = par52*(-par40 + var05) + 1
out_result(18, 25) = 0
out_result(19, 25) = 0
out_result(20, 25) = 0
out_result(21, 25) = 0
out_result(22, 25) = 0
out_result(23, 25) = 0
out_result(24, 25) = 0
out_result(25, 25) = 0
out_result(26, 25) = 0
out_result(27, 25) = 0
out_result(28, 25) = 0
out_result(29, 25) = 0
out_result(30, 25) = 0
out_result(31, 25) = 0
out_result(32, 25) = 0
out_result(33, 25) = 0
out_result(34, 25) = 0
out_result(35, 25) = 0
out_result(36, 25) = -var04*(var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var25 - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)*(1.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1 &
      ) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(37, 25) = -var04*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)*(var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var25 &
      - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 25) = -var04*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)*(var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var25 &
      - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 25) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 25) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 25) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 25) = 0
out_result(1, 26) = 0
out_result(2, 26) = 0
out_result(3, 26) = 0
out_result(4, 26) = 0
out_result(5, 26) = 0
out_result(6, 26) = 0
out_result(7, 26) = ((1.0d0/2.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/2.0d0)*var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var26 + (3.0d0/2.0d0)*var32 + (3.0d0/2.0d0)*var38)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 26) = 0
out_result(9, 26) = 0
out_result(10, 26) = 0
out_result(11, 26) = 0
out_result(12, 26) = 0
out_result(13, 26) = 0
out_result(14, 26) = 0
out_result(15, 26) = 0
out_result(16, 26) = 0
out_result(17, 26) = 0
out_result(18, 26) = par52*(-par40 + var05) + 1
out_result(19, 26) = 0
out_result(20, 26) = 0
out_result(21, 26) = 0
out_result(22, 26) = 0
out_result(23, 26) = 0
out_result(24, 26) = 0
out_result(25, 26) = 0
out_result(26, 26) = 0
out_result(27, 26) = 0
out_result(28, 26) = 0
out_result(29, 26) = 0
out_result(30, 26) = 0
out_result(31, 26) = 0
out_result(32, 26) = 0
out_result(33, 26) = 0
out_result(34, 26) = 0
out_result(35, 26) = 0
out_result(36, 26) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(1.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1 &
      ) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(37, 26) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(38, 26) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(39, 26) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 26) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 26) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 26) = 0
out_result(1, 27) = 0
out_result(2, 27) = 0
out_result(3, 27) = 0
out_result(4, 27) = 0
out_result(5, 27) = 0
out_result(6, 27) = 0
out_result(7, 27) = ((1.0d0/2.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) + (1.0d0/2.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var27 + (3.0d0/2.0d0)*var33 + (3.0d0/2.0d0)*var39)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 27) = 0
out_result(9, 27) = 0
out_result(10, 27) = 0
out_result(11, 27) = 0
out_result(12, 27) = 0
out_result(13, 27) = 0
out_result(14, 27) = 0
out_result(15, 27) = 0
out_result(16, 27) = 0
out_result(17, 27) = 0
out_result(18, 27) = 0
out_result(19, 27) = par52*(-par40 + var05) + 1
out_result(20, 27) = 0
out_result(21, 27) = 0
out_result(22, 27) = 0
out_result(23, 27) = 0
out_result(24, 27) = 0
out_result(25, 27) = 0
out_result(26, 27) = 0
out_result(27, 27) = 0
out_result(28, 27) = 0
out_result(29, 27) = 0
out_result(30, 27) = 0
out_result(31, 27) = 0
out_result(32, 27) = 0
out_result(33, 27) = 0
out_result(34, 27) = 0
out_result(35, 27) = 0
out_result(36, 27) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*(1.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(37, 27) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*( &
      -0.5d0*var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(38, 27) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*( &
      -0.5d0*var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/( &
      var01*var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(39, 27) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 27) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 27) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 27) = 0
out_result(1, 28) = 0
out_result(2, 28) = 0
out_result(3, 28) = 0
out_result(4, 28) = 0
out_result(5, 28) = 0
out_result(6, 28) = 0
out_result(7, 28) = (-3*var10/(var01*var02 - var01 - var02 &
      + 1) + 3*var28 + 3*var34 + 3*var40)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 28) = 0
out_result(9, 28) = 0
out_result(10, 28) = 0
out_result(11, 28) = 0
out_result(12, 28) = 0
out_result(13, 28) = 0
out_result(14, 28) = 0
out_result(15, 28) = 0
out_result(16, 28) = 0
out_result(17, 28) = 0
out_result(18, 28) = 0
out_result(19, 28) = 0
out_result(20, 28) = par52*(-par40 + var05) + 1
out_result(21, 28) = 0
out_result(22, 28) = 0
out_result(23, 28) = 0
out_result(24, 28) = 0
out_result(25, 28) = 0
out_result(26, 28) = 0
out_result(27, 28) = 0
out_result(28, 28) = 0
out_result(29, 28) = 0
out_result(30, 28) = 0
out_result(31, 28) = 0
out_result(32, 28) = 0
out_result(33, 28) = 0
out_result(34, 28) = 0
out_result(35, 28) = 0
out_result(36, 28) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 28) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 28) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 28) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var10/(var01*var02 - var01 - var02 + 1) - 3*var28 - 3*var34 - 3* &
      var40)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(40, 28) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.5d0*var11/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 28) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.5d0*var12/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 28) = 0
out_result(1, 29) = 0
out_result(2, 29) = 0
out_result(3, 29) = 0
out_result(4, 29) = 0
out_result(5, 29) = 0
out_result(6, 29) = 0
out_result(7, 29) = (-3*var11/(var01*var02 - var01 - var02 &
      + 1) + 3*var29 + 3*var35 + 3*var41)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 29) = 0
out_result(9, 29) = 0
out_result(10, 29) = 0
out_result(11, 29) = 0
out_result(12, 29) = 0
out_result(13, 29) = 0
out_result(14, 29) = 0
out_result(15, 29) = 0
out_result(16, 29) = 0
out_result(17, 29) = 0
out_result(18, 29) = 0
out_result(19, 29) = 0
out_result(20, 29) = 0
out_result(21, 29) = par52*(-par40 + var05) + 1
out_result(22, 29) = 0
out_result(23, 29) = 0
out_result(24, 29) = 0
out_result(25, 29) = 0
out_result(26, 29) = 0
out_result(27, 29) = 0
out_result(28, 29) = 0
out_result(29, 29) = 0
out_result(30, 29) = 0
out_result(31, 29) = 0
out_result(32, 29) = 0
out_result(33, 29) = 0
out_result(34, 29) = 0
out_result(35, 29) = 0
out_result(36, 29) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 29) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 29) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 29) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var11/(var01*var02 - var01 - var02 + 1) - 3*var29 - 3*var35 - 3* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 29) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*(3* &
      var11/(var01*var02 - var01 - var02 + 1) - 3*var29 - 3*var35 - 3* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(41, 29) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(1.5d0*var12/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 29) = 0
out_result(1, 30) = 0
out_result(2, 30) = 0
out_result(3, 30) = 0
out_result(4, 30) = 0
out_result(5, 30) = 0
out_result(6, 30) = 0
out_result(7, 30) = (-3*var12/(var01*var02 - var01 - var02 &
      + 1) + 3*var30 + 3*var36 + 3*var42)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 30) = 0
out_result(9, 30) = 0
out_result(10, 30) = 0
out_result(11, 30) = 0
out_result(12, 30) = 0
out_result(13, 30) = 0
out_result(14, 30) = 0
out_result(15, 30) = 0
out_result(16, 30) = 0
out_result(17, 30) = 0
out_result(18, 30) = 0
out_result(19, 30) = 0
out_result(20, 30) = 0
out_result(21, 30) = 0
out_result(22, 30) = par52*(-par40 + var05) + 1
out_result(23, 30) = 0
out_result(24, 30) = 0
out_result(25, 30) = 0
out_result(26, 30) = 0
out_result(27, 30) = 0
out_result(28, 30) = 0
out_result(29, 30) = 0
out_result(30, 30) = 0
out_result(31, 30) = 0
out_result(32, 30) = 0
out_result(33, 30) = 0
out_result(34, 30) = 0
out_result(35, 30) = 0
out_result(36, 30) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 30) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 30) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 30) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 30) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 30) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(42, 30) = 0
out_result(1, 31) = 0
out_result(2, 31) = 0
out_result(3, 31) = 0
out_result(4, 31) = 0
out_result(5, 31) = 0
out_result(6, 31) = 0
out_result(7, 31) = (-var07/(var01*var02 - var01 - var02 + &
      1) + (1.0d0/2.0d0)*var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/2.0d0)*var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var25 + (3.0d0/2.0d0)*var31 + (3.0d0/2.0d0)*var37)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 31) = 0
out_result(9, 31) = 0
out_result(10, 31) = 0
out_result(11, 31) = 0
out_result(12, 31) = 0
out_result(13, 31) = 0
out_result(14, 31) = 0
out_result(15, 31) = 0
out_result(16, 31) = 0
out_result(17, 31) = 0
out_result(18, 31) = 0
out_result(19, 31) = 0
out_result(20, 31) = 0
out_result(21, 31) = 0
out_result(22, 31) = 0
out_result(23, 31) = par51*(-par40 + var05) + 1
out_result(24, 31) = 0
out_result(25, 31) = 0
out_result(26, 31) = 0
out_result(27, 31) = 0
out_result(28, 31) = 0
out_result(29, 31) = 0
out_result(30, 31) = 0
out_result(31, 31) = 0
out_result(32, 31) = 0
out_result(33, 31) = 0
out_result(34, 31) = 0
out_result(35, 31) = 0
out_result(36, 31) = -var04*(var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var25 - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)*(1.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1 &
      ) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(37, 31) = -var04*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)*(var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var25 &
      - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 31) = -var04*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)*(var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var25 &
      - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 31) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 31) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 31) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 31) = 0
out_result(1, 32) = 0
out_result(2, 32) = 0
out_result(3, 32) = 0
out_result(4, 32) = 0
out_result(5, 32) = 0
out_result(6, 32) = 0
out_result(7, 32) = ((1.0d0/2.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/2.0d0)*var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var26 + (3.0d0/2.0d0)*var32 + (3.0d0/2.0d0)*var38)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 32) = 0
out_result(9, 32) = 0
out_result(10, 32) = 0
out_result(11, 32) = 0
out_result(12, 32) = 0
out_result(13, 32) = 0
out_result(14, 32) = 0
out_result(15, 32) = 0
out_result(16, 32) = 0
out_result(17, 32) = 0
out_result(18, 32) = 0
out_result(19, 32) = 0
out_result(20, 32) = 0
out_result(21, 32) = 0
out_result(22, 32) = 0
out_result(23, 32) = 0
out_result(24, 32) = par51*(-par40 + var05) + 1
out_result(25, 32) = 0
out_result(26, 32) = 0
out_result(27, 32) = 0
out_result(28, 32) = 0
out_result(29, 32) = 0
out_result(30, 32) = 0
out_result(31, 32) = 0
out_result(32, 32) = 0
out_result(33, 32) = 0
out_result(34, 32) = 0
out_result(35, 32) = 0
out_result(36, 32) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(1.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1 &
      ) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(37, 32) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(38, 32) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(39, 32) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 32) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 32) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 32) = 0
out_result(1, 33) = 0
out_result(2, 33) = 0
out_result(3, 33) = 0
out_result(4, 33) = 0
out_result(5, 33) = 0
out_result(6, 33) = 0
out_result(7, 33) = ((1.0d0/2.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) + (1.0d0/2.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var27 + (3.0d0/2.0d0)*var33 + (3.0d0/2.0d0)*var39)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 33) = 0
out_result(9, 33) = 0
out_result(10, 33) = 0
out_result(11, 33) = 0
out_result(12, 33) = 0
out_result(13, 33) = 0
out_result(14, 33) = 0
out_result(15, 33) = 0
out_result(16, 33) = 0
out_result(17, 33) = 0
out_result(18, 33) = 0
out_result(19, 33) = 0
out_result(20, 33) = 0
out_result(21, 33) = 0
out_result(22, 33) = 0
out_result(23, 33) = 0
out_result(24, 33) = 0
out_result(25, 33) = par51*(-par40 + var05) + 1
out_result(26, 33) = 0
out_result(27, 33) = 0
out_result(28, 33) = 0
out_result(29, 33) = 0
out_result(30, 33) = 0
out_result(31, 33) = 0
out_result(32, 33) = 0
out_result(33, 33) = 0
out_result(34, 33) = 0
out_result(35, 33) = 0
out_result(36, 33) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*(1.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(37, 33) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*( &
      -0.5d0*var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(38, 33) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*( &
      -0.5d0*var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/( &
      var01*var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(39, 33) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 33) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 33) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 33) = 0
out_result(1, 34) = 0
out_result(2, 34) = 0
out_result(3, 34) = 0
out_result(4, 34) = 0
out_result(5, 34) = 0
out_result(6, 34) = 0
out_result(7, 34) = (-3*var10/(var01*var02 - var01 - var02 &
      + 1) + 3*var28 + 3*var34 + 3*var40)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 34) = 0
out_result(9, 34) = 0
out_result(10, 34) = 0
out_result(11, 34) = 0
out_result(12, 34) = 0
out_result(13, 34) = 0
out_result(14, 34) = 0
out_result(15, 34) = 0
out_result(16, 34) = 0
out_result(17, 34) = 0
out_result(18, 34) = 0
out_result(19, 34) = 0
out_result(20, 34) = 0
out_result(21, 34) = 0
out_result(22, 34) = 0
out_result(23, 34) = 0
out_result(24, 34) = 0
out_result(25, 34) = 0
out_result(26, 34) = par51*(-par40 + var05) + 1
out_result(27, 34) = 0
out_result(28, 34) = 0
out_result(29, 34) = 0
out_result(30, 34) = 0
out_result(31, 34) = 0
out_result(32, 34) = 0
out_result(33, 34) = 0
out_result(34, 34) = 0
out_result(35, 34) = 0
out_result(36, 34) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 34) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 34) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 34) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var10/(var01*var02 - var01 - var02 + 1) - 3*var28 - 3*var34 - 3* &
      var40)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(40, 34) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.5d0*var11/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 34) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.5d0*var12/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 34) = 0
out_result(1, 35) = 0
out_result(2, 35) = 0
out_result(3, 35) = 0
out_result(4, 35) = 0
out_result(5, 35) = 0
out_result(6, 35) = 0
out_result(7, 35) = (-3*var11/(var01*var02 - var01 - var02 &
      + 1) + 3*var29 + 3*var35 + 3*var41)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 35) = 0
out_result(9, 35) = 0
out_result(10, 35) = 0
out_result(11, 35) = 0
out_result(12, 35) = 0
out_result(13, 35) = 0
out_result(14, 35) = 0
out_result(15, 35) = 0
out_result(16, 35) = 0
out_result(17, 35) = 0
out_result(18, 35) = 0
out_result(19, 35) = 0
out_result(20, 35) = 0
out_result(21, 35) = 0
out_result(22, 35) = 0
out_result(23, 35) = 0
out_result(24, 35) = 0
out_result(25, 35) = 0
out_result(26, 35) = 0
out_result(27, 35) = par51*(-par40 + var05) + 1
out_result(28, 35) = 0
out_result(29, 35) = 0
out_result(30, 35) = 0
out_result(31, 35) = 0
out_result(32, 35) = 0
out_result(33, 35) = 0
out_result(34, 35) = 0
out_result(35, 35) = 0
out_result(36, 35) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 35) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 35) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 35) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var11/(var01*var02 - var01 - var02 + 1) - 3*var29 - 3*var35 - 3* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 35) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*(3* &
      var11/(var01*var02 - var01 - var02 + 1) - 3*var29 - 3*var35 - 3* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(41, 35) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(1.5d0*var12/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 35) = 0
out_result(1, 36) = 0
out_result(2, 36) = 0
out_result(3, 36) = 0
out_result(4, 36) = 0
out_result(5, 36) = 0
out_result(6, 36) = 0
out_result(7, 36) = (-3*var12/(var01*var02 - var01 - var02 &
      + 1) + 3*var30 + 3*var36 + 3*var42)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 36) = 0
out_result(9, 36) = 0
out_result(10, 36) = 0
out_result(11, 36) = 0
out_result(12, 36) = 0
out_result(13, 36) = 0
out_result(14, 36) = 0
out_result(15, 36) = 0
out_result(16, 36) = 0
out_result(17, 36) = 0
out_result(18, 36) = 0
out_result(19, 36) = 0
out_result(20, 36) = 0
out_result(21, 36) = 0
out_result(22, 36) = 0
out_result(23, 36) = 0
out_result(24, 36) = 0
out_result(25, 36) = 0
out_result(26, 36) = 0
out_result(27, 36) = 0
out_result(28, 36) = par51*(-par40 + var05) + 1
out_result(29, 36) = 0
out_result(30, 36) = 0
out_result(31, 36) = 0
out_result(32, 36) = 0
out_result(33, 36) = 0
out_result(34, 36) = 0
out_result(35, 36) = 0
out_result(36, 36) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 36) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 36) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 36) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 36) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 36) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(42, 36) = 0
out_result(1, 37) = 0
out_result(2, 37) = 0
out_result(3, 37) = 0
out_result(4, 37) = 0
out_result(5, 37) = 0
out_result(6, 37) = 0
out_result(7, 37) = (-var07/(var01*var02 - var01 - var02 + &
      1) + (1.0d0/2.0d0)*var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/2.0d0)*var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var25 + (3.0d0/2.0d0)*var31 + (3.0d0/2.0d0)*var37)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 37) = 0
out_result(9, 37) = 0
out_result(10, 37) = 0
out_result(11, 37) = 0
out_result(12, 37) = 0
out_result(13, 37) = 0
out_result(14, 37) = 0
out_result(15, 37) = 0
out_result(16, 37) = 0
out_result(17, 37) = 0
out_result(18, 37) = 0
out_result(19, 37) = 0
out_result(20, 37) = 0
out_result(21, 37) = 0
out_result(22, 37) = 0
out_result(23, 37) = 0
out_result(24, 37) = 0
out_result(25, 37) = 0
out_result(26, 37) = 0
out_result(27, 37) = 0
out_result(28, 37) = 0
out_result(29, 37) = par55*(-par40 + var05) + 1
out_result(30, 37) = 0
out_result(31, 37) = 0
out_result(32, 37) = 0
out_result(33, 37) = 0
out_result(34, 37) = 0
out_result(35, 37) = 0
out_result(36, 37) = -var04*(var07/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) &
      - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var25 - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)*(1.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1 &
      ) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(37, 37) = -var04*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var26 - &
      1.5d0*var32 - 1.5d0*var38)*(var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var25 &
      - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 37) = -var04*(-0.5d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - var02 + 1 &
      ) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - 1.5d0*var27 - &
      1.5d0*var33 - 1.5d0*var39)*(var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var25 &
      - 3.0d0/2.0d0*var31 - 3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 37) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 37) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 37) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var25 - 3.0d0/2.0d0*var31 - &
      3.0d0/2.0d0*var37)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 37) = 0
out_result(1, 38) = 0
out_result(2, 38) = 0
out_result(3, 38) = 0
out_result(4, 38) = 0
out_result(5, 38) = 0
out_result(6, 38) = 0
out_result(7, 38) = ((1.0d0/2.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - var08/(var01*var02 - var01 - var02 + 1) + ( &
      1.0d0/2.0d0)*var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var26 + (3.0d0/2.0d0)*var32 + (3.0d0/2.0d0)*var38)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 38) = 0
out_result(9, 38) = 0
out_result(10, 38) = 0
out_result(11, 38) = 0
out_result(12, 38) = 0
out_result(13, 38) = 0
out_result(14, 38) = 0
out_result(15, 38) = 0
out_result(16, 38) = 0
out_result(17, 38) = 0
out_result(18, 38) = 0
out_result(19, 38) = 0
out_result(20, 38) = 0
out_result(21, 38) = 0
out_result(22, 38) = 0
out_result(23, 38) = 0
out_result(24, 38) = 0
out_result(25, 38) = 0
out_result(26, 38) = 0
out_result(27, 38) = 0
out_result(28, 38) = 0
out_result(29, 38) = 0
out_result(30, 38) = par55*(-par40 + var05) + 1
out_result(31, 38) = 0
out_result(32, 38) = 0
out_result(33, 38) = 0
out_result(34, 38) = 0
out_result(35, 38) = 0
out_result(36, 38) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(1.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1 &
      ) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(37, 38) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01*var02 - var01 - &
      var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - &
      var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01* &
      var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - &
      1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/ &
      3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(38, 38) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) + var08/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/2.0d0*var09/(var01*var02 - var01 - var02 + 1) - 3.0d0/ &
      2.0d0*var26 - 3.0d0/2.0d0*var32 - 3.0d0/2.0d0*var38)*(-0.5d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(39, 38) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 38) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 38) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) + var08/( &
      var01*var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var09/(var01*var02 &
      - var01 - var02 + 1) - 3.0d0/2.0d0*var26 - 3.0d0/2.0d0*var32 - &
      3.0d0/2.0d0*var38)/(3*(var10/(var01*var02 - var01 - var02 + 1) - &
      var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 &
      + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 &
      - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 38) = 0
out_result(1, 39) = 0
out_result(2, 39) = 0
out_result(3, 39) = 0
out_result(4, 39) = 0
out_result(5, 39) = 0
out_result(6, 39) = 0
out_result(7, 39) = ((1.0d0/2.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) + (1.0d0/2.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - var09/(var01*var02 - var01 - var02 + 1) + (3.0d0/ &
      2.0d0)*var27 + (3.0d0/2.0d0)*var33 + (3.0d0/2.0d0)*var39)/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(8, 39) = 0
out_result(9, 39) = 0
out_result(10, 39) = 0
out_result(11, 39) = 0
out_result(12, 39) = 0
out_result(13, 39) = 0
out_result(14, 39) = 0
out_result(15, 39) = 0
out_result(16, 39) = 0
out_result(17, 39) = 0
out_result(18, 39) = 0
out_result(19, 39) = 0
out_result(20, 39) = 0
out_result(21, 39) = 0
out_result(22, 39) = 0
out_result(23, 39) = 0
out_result(24, 39) = 0
out_result(25, 39) = 0
out_result(26, 39) = 0
out_result(27, 39) = 0
out_result(28, 39) = 0
out_result(29, 39) = 0
out_result(30, 39) = 0
out_result(31, 39) = par55*(-par40 + var05) + 1
out_result(32, 39) = 0
out_result(33, 39) = 0
out_result(34, 39) = 0
out_result(35, 39) = 0
out_result(36, 39) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*(1.0d0 &
      *var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - &
      var02 + 1) - 1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/( &
      var01*var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3* &
      (var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41) &
      **2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 &
      - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)** &
      (3.0d0/2.0d0)
out_result(37, 39) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*( &
      -0.5d0*var07/(var01*var02 - var01 - var02 + 1) + 1.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) - 0.5d0*var09/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0)
out_result(38, 39) = -var04*(-1.0d0/2.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/2.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + var09/(var01*var02 - var01 - var02 + 1) - &
      3.0d0/2.0d0*var27 - 3.0d0/2.0d0*var33 - 3.0d0/2.0d0*var39)*( &
      -0.5d0*var07/(var01*var02 - var01 - var02 + 1) - 0.5d0*var08/( &
      var01*var02 - var01 - var02 + 1) + 1.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3*(var10/(var01* &
      var02 - var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11 &
      /(var01*var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + &
      3*(var12/(var01*var02 - var01 - var02 + 1) - var30 - var36 - &
      var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - var02 + 1 &
      ) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07 &
      /(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*(( &
      2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09 &
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(39, 39) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 39) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 39) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*( &
      -1.0d0/2.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      2.0d0*var08/(var01*var02 - var01 - var02 + 1) + var09/(var01* &
      var02 - var01 - var02 + 1) - 3.0d0/2.0d0*var27 - 3.0d0/2.0d0* &
      var33 - 3.0d0/2.0d0*var39)/(3*(var10/(var01*var02 - var01 - var02 &
      + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01*var02 - var01 &
      - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12/(var01*var02 &
      - var01 - var02 + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)* &
      (-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - var39) &
      **2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - &
      var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1 &
      ) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - &
      var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - &
      var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 39) = 0
out_result(1, 40) = 0
out_result(2, 40) = 0
out_result(3, 40) = 0
out_result(4, 40) = 0
out_result(5, 40) = 0
out_result(6, 40) = 0
out_result(7, 40) = (-3*var10/(var01*var02 - var01 - var02 &
      + 1) + 3*var28 + 3*var34 + 3*var40)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 40) = 0
out_result(9, 40) = 0
out_result(10, 40) = 0
out_result(11, 40) = 0
out_result(12, 40) = 0
out_result(13, 40) = 0
out_result(14, 40) = 0
out_result(15, 40) = 0
out_result(16, 40) = 0
out_result(17, 40) = 0
out_result(18, 40) = 0
out_result(19, 40) = 0
out_result(20, 40) = 0
out_result(21, 40) = 0
out_result(22, 40) = 0
out_result(23, 40) = 0
out_result(24, 40) = 0
out_result(25, 40) = 0
out_result(26, 40) = 0
out_result(27, 40) = 0
out_result(28, 40) = 0
out_result(29, 40) = 0
out_result(30, 40) = 0
out_result(31, 40) = 0
out_result(32, 40) = par55*(-par40 + var05) + 1
out_result(33, 40) = 0
out_result(34, 40) = 0
out_result(35, 40) = 0
out_result(36, 40) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 40) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 40) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 40) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var10/(var01*var02 - var01 - var02 + 1) - 3*var28 - 3*var34 - 3* &
      var40)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(40, 40) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.5d0*var11/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 40) = -var04*(3*var10/(var01*var02 - var01 - &
      var02 + 1) - 3*var28 - 3*var34 - 3*var40)*(1.5d0*var12/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 40) = 0
out_result(1, 41) = 0
out_result(2, 41) = 0
out_result(3, 41) = 0
out_result(4, 41) = 0
out_result(5, 41) = 0
out_result(6, 41) = 0
out_result(7, 41) = (-3*var11/(var01*var02 - var01 - var02 &
      + 1) + 3*var29 + 3*var35 + 3*var41)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 41) = 0
out_result(9, 41) = 0
out_result(10, 41) = 0
out_result(11, 41) = 0
out_result(12, 41) = 0
out_result(13, 41) = 0
out_result(14, 41) = 0
out_result(15, 41) = 0
out_result(16, 41) = 0
out_result(17, 41) = 0
out_result(18, 41) = 0
out_result(19, 41) = 0
out_result(20, 41) = 0
out_result(21, 41) = 0
out_result(22, 41) = 0
out_result(23, 41) = 0
out_result(24, 41) = 0
out_result(25, 41) = 0
out_result(26, 41) = 0
out_result(27, 41) = 0
out_result(28, 41) = 0
out_result(29, 41) = 0
out_result(30, 41) = 0
out_result(31, 41) = 0
out_result(32, 41) = 0
out_result(33, 41) = par55*(-par40 + var05) + 1
out_result(34, 41) = 0
out_result(35, 41) = 0
out_result(36, 41) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 41) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 41) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 41) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var11/(var01*var02 - var01 - var02 + 1) - 3*var29 - 3*var35 - 3* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 41) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*(3* &
      var11/(var01*var02 - var01 - var02 + 1) - 3*var29 - 3*var35 - 3* &
      var41)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(41, 41) = -var04*(3*var11/(var01*var02 - var01 - &
      var02 + 1) - 3*var29 - 3*var35 - 3*var41)*(1.5d0*var12/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(42, 41) = 0
out_result(1, 42) = 0
out_result(2, 42) = 0
out_result(3, 42) = 0
out_result(4, 42) = 0
out_result(5, 42) = 0
out_result(6, 42) = 0
out_result(7, 42) = (-3*var12/(var01*var02 - var01 - var02 &
      + 1) + 3*var30 + 3*var36 + 3*var42)/sqrt(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)
out_result(8, 42) = 0
out_result(9, 42) = 0
out_result(10, 42) = 0
out_result(11, 42) = 0
out_result(12, 42) = 0
out_result(13, 42) = 0
out_result(14, 42) = 0
out_result(15, 42) = 0
out_result(16, 42) = 0
out_result(17, 42) = 0
out_result(18, 42) = 0
out_result(19, 42) = 0
out_result(20, 42) = 0
out_result(21, 42) = 0
out_result(22, 42) = 0
out_result(23, 42) = 0
out_result(24, 42) = 0
out_result(25, 42) = 0
out_result(26, 42) = 0
out_result(27, 42) = 0
out_result(28, 42) = 0
out_result(29, 42) = 0
out_result(30, 42) = 0
out_result(31, 42) = 0
out_result(32, 42) = 0
out_result(33, 42) = 0
out_result(34, 42) = par55*(-par40 + var05) + 1
out_result(35, 42) = 0
out_result(36, 42) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(37, 42) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(38, 42) = -var04*(3*var12/(var01*var02 - var01 - &
      var02 + 1) - 3*var30 - 3*var36 - 3*var42)*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/(3*(var10/(var01*var02 - &
      var01 - var02 + 1) - var28 - var34 - var40)**2 + 3*(var11/(var01* &
      var02 - var01 - var02 + 1) - var29 - var35 - var41)**2 + 3*(var12 &
      /(var01*var02 - var01 - var02 + 1) - var30 - var36 - var42)**2 + &
      (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) + (2.0d0 &
      /3.0d0)*var09/(var01*var02 - var01 - var02 + 1) - var27 - var33 - &
      var39)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var26 - var32 - var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/ &
      (var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - &
      var01 - var02 + 1) - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(39, 42) = -var04*(1.5d0*var10/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0*var40)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(40, 42) = -var04*(1.5d0*var11/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0*var41)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0)
out_result(41, 42) = -var04*(1.5d0*var12/(var01*var02 - &
      var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0*var42)*(3* &
      var12/(var01*var02 - var01 - var02 + 1) - 3*var30 - 3*var36 - 3* &
      var42)/(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
      var34 - var40)**2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - &
      var29 - var35 - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 &
      + 1) - var30 - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0* &
      var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/( &
      var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01* &
      var02 - var01 - var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/ &
      2.0d0)*(-1.0d0/3.0d0*var07/(var01*var02 - var01 - var02 + 1) + ( &
      2.0d0/3.0d0)*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var26 - var32 - &
      var38)**2 + (3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - &
      var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 1.0d0/3.0d0*var09/(var01*var02 - var01 - var02 + 1) &
      - var25 - var31 - var37)**2)**(3.0d0/2.0d0) + 1.5d0*var04/sqrt(3* &
      (var10/(var01*var02 - var01 - var02 + 1) - var28 - var34 - var40) &
      **2 + 3*(var11/(var01*var02 - var01 - var02 + 1) - var29 - var35 &
      - var41)**2 + 3*(var12/(var01*var02 - var01 - var02 + 1) - var30 &
      - var36 - var42)**2 + (3.0d0/2.0d0)*(-1.0d0/3.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var08/(var01*var02 - &
      var01 - var02 + 1) + (2.0d0/3.0d0)*var09/(var01*var02 - var01 - &
      var02 + 1) - var27 - var33 - var39)**2 + (3.0d0/2.0d0)*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1) - var26 - var32 - var38)**2 + ( &
      3.0d0/2.0d0)*((2.0d0/3.0d0)*var07/(var01*var02 - var01 - var02 + &
      1) - 1.0d0/3.0d0*var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/ &
      3.0d0*var09/(var01*var02 - var01 - var02 + 1) - var25 - var31 - &
      var37)**2)
out_result(42, 42) = 0
end subroutine
