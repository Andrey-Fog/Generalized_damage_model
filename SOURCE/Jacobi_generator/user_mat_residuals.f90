subroutine material_residuals(par01, par02, par03, par04, par05, par06, &
      par07, par08, par09, par10, par11, par12, par13, par14, &
      par15, par16, par17, par18, par19, par20, par21, par22, &
      par23, par24, par25, par26, par27, par28, par29, par30, &
      par31, par32, par33, par34, par35, par36, par37, par38, &
      par39, par40, par41, par42, par43, par44, par45, par46, &
      par47, par48, par49, par50, par51, par52, par53, par54, &
      par55, par56, par57, par58, par59, par60, var01, var02, &
      var03, var04, var05, var06, var07, var08, var09, var10, &
      var11, var12, var13, var14, var15, var16, var17, var18, &
      var19, var20, var21, var22, var23, var24, var25, var26, &
      var27, var28, var29, var30, var31, var32, var33, var34, &
      var35, var36, var37, var38, var39, var40, var41, var42, &
      out_5016306599745472956)
implicit none
REAL*8, intent(in) :: par01
REAL*8, intent(in) :: par02
REAL*8, intent(in) :: par03
REAL*8, intent(in) :: par04
REAL*8, intent(in) :: par05
REAL*8, intent(in) :: par06
REAL*8, intent(in) :: par07
REAL*8, intent(in) :: par08
REAL*8, intent(in) :: par09
REAL*8, intent(in) :: par10
REAL*8, intent(in) :: par11
REAL*8, intent(in) :: par12
REAL*8, intent(in) :: par13
REAL*8, intent(in) :: par14
REAL*8, intent(in) :: par15
REAL*8, intent(in) :: par16
REAL*8, intent(in) :: par17
REAL*8, intent(in) :: par18
REAL*8, intent(in) :: par19
REAL*8, intent(in) :: par20
REAL*8, intent(in) :: par21
REAL*8, intent(in) :: par22
REAL*8, intent(in) :: par23
REAL*8, intent(in) :: par24
REAL*8, intent(in) :: par25
REAL*8, intent(in) :: par26
REAL*8, intent(in) :: par27
REAL*8, intent(in) :: par28
REAL*8, intent(in) :: par29
REAL*8, intent(in) :: par30
REAL*8, intent(in) :: par31
REAL*8, intent(in) :: par32
REAL*8, intent(in) :: par33
REAL*8, intent(in) :: par34
REAL*8, intent(in) :: par35
REAL*8, intent(in) :: par36
REAL*8, intent(in) :: par37
REAL*8, intent(in) :: par38
REAL*8, intent(in) :: par39
REAL*8, intent(in) :: par40
REAL*8, intent(in) :: par41
REAL*8, intent(in) :: par42
REAL*8, intent(in) :: par43
REAL*8, intent(in) :: par44
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
REAL*8, intent(in) :: var03
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
REAL*8, intent(out), dimension(1:42, 1:1) :: out_5016306599745472956
out_5016306599745472956(1, 1) = -par42*par43*(par03 - var14 - var20)*( &
      var01*var02 - var01 - var02 + 1)/((1 - 2*par43)*(par43 + 1)) - &
      par42*par43*(par04 - var15 - var21)*(var01*var02 - var01 - var02 &
      + 1)/((1 - 2*par43)*(par43 + 1)) + var07 - (par42*par43/((1 - 2* &
      par43)*(par43 + 1)) + 2*par42/(2*par43 + 2))*(par02 - var13 - &
      var19)*(var01*var02 - var01 - var02 + 1)
out_5016306599745472956(2, 1) = -par42*par43*(par02 - var13 - var19)*( &
      var01*var02 - var01 - var02 + 1)/((1 - 2*par43)*(par43 + 1)) - &
      par42*par43*(par04 - var15 - var21)*(var01*var02 - var01 - var02 &
      + 1)/((1 - 2*par43)*(par43 + 1)) + var08 - (par42*par43/((1 - 2* &
      par43)*(par43 + 1)) + 2*par42/(2*par43 + 2))*(par03 - var14 - &
      var20)*(var01*var02 - var01 - var02 + 1)
out_5016306599745472956(3, 1) = -par42*par43*(par02 - var13 - var19)*( &
      var01*var02 - var01 - var02 + 1)/((1 - 2*par43)*(par43 + 1)) - &
      par42*par43*(par03 - var14 - var20)*(var01*var02 - var01 - var02 &
      + 1)/((1 - 2*par43)*(par43 + 1)) + var09 - (par42*par43/((1 - 2* &
      par43)*(par43 + 1)) + 2*par42/(2*par43 + 2))*(par04 - var15 - &
      var21)*(var01*var02 - var01 - var02 + 1)
out_5016306599745472956(4, 1) = -par42*(par05 - var16 - var22)*(var01* &
      var02 - var01 - var02 + 1)/(2*par43 + 2) + var10
out_5016306599745472956(5, 1) = -par42*(par06 - var17 - var23)*(var01* &
      var02 - var01 - var02 + 1)/(2*par43 + 2) + var11
out_5016306599745472956(6, 1) = -par42*(par07 - var18 - var24)*(var01* &
      var02 - var01 - var02 + 1)/(2*par43 + 2) + var12
out_5016306599745472956(7, 1) = -par44 - var03 + sqrt(3*(var10/(var01* &
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
out_5016306599745472956(8, 1) = -1.5d0*par01*par45*var06**par47*((2.0d0/ &
      3.0d0)*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
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
      1.0d0/2.0d0) - par14 + var19
out_5016306599745472956(9, 1) = -1.5d0*par01*par45*var06**par47*(-1.0d0/ &
      3.0d0*var07/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)* &
      var08/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0*var09/( &
      var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
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
      1.0d0/2.0d0) - par15 + var20
out_5016306599745472956(10, 1) = -1.5d0*par01*par45*var06**par47*(-1.0d0 &
      /3.0d0*var07/(var01*var02 - var01 - var02 + 1) - 1.0d0/3.0d0* &
      var08/(var01*var02 - var01 - var02 + 1) + (2.0d0/3.0d0)*var09/( &
      var01*var02 - var01 - var02 + 1))*(3*var10**2/(var01*var02 - &
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
      1.0d0/2.0d0) - par16 + var21
out_5016306599745472956(11, 1) = -1.5d0*par01*par45*var06**par47*var10*( &
      3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
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
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 - var01 - var02 + &
      1) - par17 + var22
out_5016306599745472956(12, 1) = -1.5d0*par01*par45*var06**par47*var11*( &
      3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
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
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 - var01 - var02 + &
      1) - par18 + var23
out_5016306599745472956(13, 1) = -1.5d0*par01*par45*var06**par47*var12*( &
      3*var10**2/(var01*var02 - var01 - var02 + 1)**2 + 3*var11**2/( &
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
      1.0d0/2.0d0)*par46 - 1.0d0/2.0d0)/(var01*var02 - var01 - var02 + &
      1) - par19 + var24
out_5016306599745472956(14, 1) = -par01*par45*var06**par47*(3*var10**2/( &
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
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par46) - &
      par41 + var06
out_5016306599745472956(15, 1) = -par38 + var01 - ((1.0d0/2.0d0)*( &
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
      **2))**par59*(-par40 + var05)*(var01*var02 - var01 - var02 + 1)** &
      (-par60)
out_5016306599745472956(16, 1) = -par01*par48*(3*var10**2/(var01*var02 - &
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
      /(var01*var02 - var01 - var02 + 1))**2)**((1.0d0/2.0d0)*par49) - &
      par39 + var02
out_5016306599745472956(17, 1) = -par20 - 0.666666666666667d0*par50*( &
      -par08 + var13) + par52*var25*(-par40 + var05) + var25
out_5016306599745472956(18, 1) = -par21 - 0.666666666666667d0*par50*( &
      -par09 + var14) + par52*var26*(-par40 + var05) + var26
out_5016306599745472956(19, 1) = -par22 - 0.666666666666667d0*par50*( &
      -par10 + var15) + par52*var27*(-par40 + var05) + var27
out_5016306599745472956(20, 1) = -par23 - 0.666666666666667d0*par50*( &
      -par11 + var16) + par52*var28*(-par40 + var05) + var28
out_5016306599745472956(21, 1) = -par24 - 0.666666666666667d0*par50*( &
      -par12 + var17) + par52*var29*(-par40 + var05) + var29
out_5016306599745472956(22, 1) = -par25 - 0.666666666666667d0*par50*( &
      -par13 + var18) + par52*var30*(-par40 + var05) + var30
out_5016306599745472956(23, 1) = -par26 + par51*var31*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par08 + var13) + var31
out_5016306599745472956(24, 1) = -par27 + par51*var32*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par09 + var14) + var32
out_5016306599745472956(25, 1) = -par28 + par51*var33*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par10 + var15) + var33
out_5016306599745472956(26, 1) = -par29 + par51*var34*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par11 + var16) + var34
out_5016306599745472956(27, 1) = -par30 + par51*var35*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par12 + var17) + var35
out_5016306599745472956(28, 1) = -par31 + par51*var36*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par13 + var18) + var36
out_5016306599745472956(29, 1) = -par32 - 0.666666666666667d0*par53*( &
      -par08 + var13) + par55*var37*(-par40 + var05) + var37
out_5016306599745472956(30, 1) = -par33 - 0.666666666666667d0*par53*( &
      -par09 + var14) + par55*var38*(-par40 + var05) + var38
out_5016306599745472956(31, 1) = -par34 - 0.666666666666667d0*par53*( &
      -par10 + var15) + par55*var39*(-par40 + var05) + var39
out_5016306599745472956(32, 1) = -par35 - 0.666666666666667d0*par53*( &
      -par11 + var16) + par55*var40*(-par40 + var05) + var40
out_5016306599745472956(33, 1) = -par36 - 0.666666666666667d0*par53*( &
      -par12 + var17) + par55*var41*(-par40 + var05) + var41
out_5016306599745472956(34, 1) = -par37 - 0.666666666666667d0*par53*( &
      -par13 + var18) + par55*var42*(-par40 + var05) + var42
out_5016306599745472956(35, 1) = -par56*var05**par57 + var03
out_5016306599745472956(36, 1) = -par08 - var04*(1.0d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var25 - 1.5d0*var31 - 1.5d0*var37)/sqrt(3*(var10/(var01* &
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
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2) + &
      var13
out_5016306599745472956(37, 1) = -par09 - var04*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) + 1.0d0*var08/(var01*var02 - var01 - &
      var02 + 1) - 0.5d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var26 - 1.5d0*var32 - 1.5d0*var38)/sqrt(3*(var10/(var01* &
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
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2) + &
      var14
out_5016306599745472956(38, 1) = -par10 - var04*(-0.5d0*var07/(var01* &
      var02 - var01 - var02 + 1) - 0.5d0*var08/(var01*var02 - var01 - &
      var02 + 1) + 1.0d0*var09/(var01*var02 - var01 - var02 + 1) - &
      1.5d0*var27 - 1.5d0*var33 - 1.5d0*var39)/sqrt(3*(var10/(var01* &
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
      /(var01*var02 - var01 - var02 + 1) - var25 - var31 - var37)**2) + &
      var15
out_5016306599745472956(39, 1) = -par11 - var04*(1.5d0*var10/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var28 - 1.5d0*var34 - 1.5d0* &
      var40)/sqrt(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
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
      - var25 - var31 - var37)**2) + var16
out_5016306599745472956(40, 1) = -par12 - var04*(1.5d0*var11/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var29 - 1.5d0*var35 - 1.5d0* &
      var41)/sqrt(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
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
      - var25 - var31 - var37)**2) + var17
out_5016306599745472956(41, 1) = -par13 - var04*(1.5d0*var12/(var01* &
      var02 - var01 - var02 + 1) - 1.5d0*var30 - 1.5d0*var36 - 1.5d0* &
      var42)/sqrt(3*(var10/(var01*var02 - var01 - var02 + 1) - var28 - &
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
      - var25 - var31 - var37)**2) + var18
out_5016306599745472956(42, 1) = -par40 - var04 + var05
end subroutine
