subroutine material_residuals_wrapper(params, vars, F)
    implicit none
    REAL*8, intent(in) :: params(60)
    REAL*8, intent(in) :: vars(42)
    REAL*8, intent(out) :: F(42)
    REAL*8 :: out_result(42,1)
     !var_mapping = [
     !       "Variables (42 total):",
     !       "01: D_pl (plastic damage)",
     !       "02: D_cr (creep damage)",
     !       "03: R (isotropic hardening)",
     !       "04: dlambda (plastic multiplier)",
     !       "05: e_pl_eqv (equivalent plastic strain)",
     !       "06: e_cr_eqv (equivalent creep strain)",
     !       "07: sigma_1 (stress tensor component 1)",
     !       "08: sigma_2 (stress tensor component 2)",
     !       "09: sigma_3 (stress tensor component 3)",
     !       "10: sigma_4 (stress tensor component 4)",
     !       "11: sigma_5 (stress tensor component 5)",
     !       "12: sigma_6 (stress tensor component 6)",
     !       "13: e_pl_1 (plastic strain tensor component 1)",
     !       "14: e_pl_2 (plastic strain tensor component 2)",
     !       "15: e_pl_3 (plastic strain tensor component 3)",
     !       "16: e_pl_4 (plastic strain tensor component 4)",
     !       "17: e_pl_5 (plastic strain tensor component 5)",
     !       "18: e_pl_6 (plastic strain tensor component 6)",
     !       "19: e_cr_1 (creep strain tensor component 1)",
     !       "20: e_cr_2 (creep strain tensor component 2)",
     !       "21: e_cr_3 (creep strain tensor component 3)",
     !       "22: e_cr_4 (creep strain tensor component 4)",
     !       "23: e_cr_5 (creep strain tensor component 5)",
     !       "24: e_cr_6 (creep strain tensor component 6)",
     !       "25: X1_1 (backstress tensor 1 component 1)",
     !       "26: X1_2 (backstress tensor 1 component 2)",
     !       "27: X1_3 (backstress tensor 1 component 3)",
     !       "28: X1_4 (backstress tensor 1 component 4)",
     !       "29: X1_5 (backstress tensor 1 component 5)",
     !       "30: X1_6 (backstress tensor 1 component 6)",
     !       "31: X2_1 (backstress tensor 2 component 1)",
     !       "32: X2_2 (backstress tensor 2 component 2)",
     !       "33: X2_3 (backstress tensor 2 component 3)",
     !       "34: X2_4 (backstress tensor 2 component 4)",
     !       "35: X2_5 (backstress tensor 2 component 5)",
     !       "36: X2_6 (backstress tensor 2 component 6)",
     !       "37: X3_1 (backstress tensor 3 component 1)",
     !       "38: X3_2 (backstress tensor 3 component 2)",
     !       "39: X3_3 (backstress tensor 3 component 3)",
     !       "40: X3_4 (backstress tensor 3 component 4)",
     !       "41: X3_5 (backstress tensor 3 component 5)",
     !       "42: X3_6 (backstress tensor 3 component 6)"
     !   ]
     !   
     !   # Parameter mapping
     !   param_mapping = [
     !       "Parameters (60 total):"
     !       "01: Delta_t (time increment)",
     !       "02: e_total_1 (total strain tensor component 1)",
     !       "03: e_total_2 (total strain tensor component 2)",
     !       "04: e_total_3 (total strain tensor component 3)",
     !       "05: e_total_4 (total strain tensor component 4)",
     !       "06: e_total_5 (total strain tensor component 5)",
     !       "07: e_total_6 (total strain tensor component 6)",
     !       "08: e_pl_0_1 (initial plastic strain component 1)",
     !       "09: e_pl_0_2 (initial plastic strain component 2)",
     !       "10: e_pl_0_3 (initial plastic strain component 3)",
     !       "11: e_pl_0_4 (initial plastic strain component 4)",
     !       "12: e_pl_0_5 (initial plastic strain component 5)",
     !       "13: e_pl_0_6 (initial plastic strain component 6)",
     !       "14: e_cr_0_1 (initial creep strain component 1)",
     !       "15: e_cr_0_2 (initial creep strain component 2)",
     !       "16: e_cr_0_3 (initial creep strain component 3)",
     !       "17: e_cr_0_4 (initial creep strain component 4)",
     !       "18: e_cr_0_5 (initial creep strain component 5)",
     !       "19: e_cr_0_6 (initial creep strain component 6)",
     !       "20: X1_0_1 (initial backstress 1 component 1)",
     !       "21: X1_0_2 (initial backstress 1 component 2)",
     !       "22: X1_0_3 (initial backstress 1 component 3)",
     !       "23: X1_0_4 (initial backstress 1 component 4)",
     !       "24: X1_0_5 (initial backstress 1 component 5)",
     !       "25: X1_0_6 (initial backstress 1 component 6)",
     !       "26: X2_0_1 (initial backstress 2 component 1)",
     !       "27: X2_0_2 (initial backstress 2 component 2)",
     !       "28: X2_0_3 (initial backstress 2 component 3)",
     !       "29: X2_0_4 (initial backstress 2 component 4)",
     !       "30: X2_0_5 (initial backstress 2 component 5)",
     !       "31: X2_0_6 (initial backstress 2 component 6)",
     !       "32: X3_0_1 (initial backstress 3 component 1)",
     !       "33: X3_0_2 (initial backstress 3 component 2)",
     !       "34: X3_0_3 (initial backstress 3 component 3)",
     !       "35: X3_0_4 (initial backstress 3 component 4)",
     !       "36: X3_0_5 (initial backstress 3 component 5)",
     !       "37: X3_0_6 (initial backstress 3 component 6)",
     !       "38: D_pl_0 (initial plastic damage)",
     !       "39: D_cr_0 (initial creep damage)",
     !       "40: e_pl_eqv_0 (initial equivalent plastic strain)",
     !       "41: e_cr_eqv_0 (initial equivalent creep strain)",
     !       "42: Young (Young's modulus)",
     !       "43: nu (Poisson's ratio)",
     !       "44: sigma_y0 (initial yield stress)",
     !       "45: A (creep coefficient)",
     !       "46: n (creep exponent)",
     !       "47: q (creep exponent)",
     !       "48: A_cr (creep damage coefficient)",
     !       "49: r (creep damage exponent)",
     !       "50: C1_X (kinematic hardening modulus 1)",
     !       "51: gamma1_X (kinematic hardening parameter 1)",
     !       "52: C2_X (kinematic hardening modulus 2)",
     !       "53: gamma2_X (kinematic hardening parameter 2)",
     !       "54: C3_X (kinematic hardening modulus 3)",
     !       "55: gamma3_X (kinematic hardening parameter 3)",
     !       "56: K (isotropic hardening coefficient)",
     !       "57: m (isotropic hardening exponent)",
     !       "58: S (damage parameter)",
     !       "59: s (damage exponent)",
     !       "60: k (damage exponent)"
     !   ]
    ! Вызов оригинальной процедуры с передачей всех параметров по отдельности
    call material_residuals( &
        params(1), params(2), params(3), params(4), params(5), params(6), &
        params(7), params(8), params(9), params(10), params(11), params(12), &
        params(13), params(14), params(15), params(16), params(17), params(18), &
        params(19), params(20), params(21), params(22), params(23), params(24), &
        params(25), params(26), params(27), params(28), params(29), params(30), &
        params(31), params(32), params(33), params(34), params(35), params(36), &
        params(37), params(38), params(39), params(40), params(41), params(42), &
        params(43), params(44), params(45), params(46), params(47), params(48), &
        params(49), params(50), params(51), params(52), params(53), params(54), &
        params(55), params(56), params(57), params(58), params(59), params(60), &
        vars(1), vars(2), vars(3), vars(4), vars(5), vars(6), vars(7), vars(8), &
        vars(9), vars(10), vars(11), vars(12), vars(13), vars(14), vars(15), &
        vars(16), vars(17), vars(18), vars(19), vars(20), vars(21), vars(22), &
        vars(23), vars(24), vars(25), vars(26), vars(27), vars(28), vars(29), &
        vars(30), vars(31), vars(32), vars(33), vars(34), vars(35), vars(36), &
        vars(37), vars(38), vars(39), vars(40), vars(41), vars(42), out_result)

    ! Преобразование результата обратно в одномерный массив
    F = out_result(:,1)

end subroutine material_residuals_wrapper
    
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
      out_result)
implicit none
!double precision params(60), vars(42), F(42)
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
REAL*8, intent(out), dimension(1:42, 1:1) :: out_result
out_result(1, 1) = -par42*par43*(par03 - var14 - var20)*( &
      var01*var02 - var01 - var02 + 1)/((1 - 2*par43)*(par43 + 1)) - &
      par42*par43*(par04 - var15 - var21)*(var01*var02 - var01 - var02 &
      + 1)/((1 - 2*par43)*(par43 + 1)) + var07 - (par42*par43/((1 - 2* &
      par43)*(par43 + 1)) + 2*par42/(2*par43 + 2))*(par02 - var13 - &
      var19)*(var01*var02 - var01 - var02 + 1)
out_result(2, 1) = -par42*par43*(par02 - var13 - var19)*( &
      var01*var02 - var01 - var02 + 1)/((1 - 2*par43)*(par43 + 1)) - &
      par42*par43*(par04 - var15 - var21)*(var01*var02 - var01 - var02 &
      + 1)/((1 - 2*par43)*(par43 + 1)) + var08 - (par42*par43/((1 - 2* &
      par43)*(par43 + 1)) + 2*par42/(2*par43 + 2))*(par03 - var14 - &
      var20)*(var01*var02 - var01 - var02 + 1)
out_result(3, 1) = -par42*par43*(par02 - var13 - var19)*( &
      var01*var02 - var01 - var02 + 1)/((1 - 2*par43)*(par43 + 1)) - &
      par42*par43*(par03 - var14 - var20)*(var01*var02 - var01 - var02 &
      + 1)/((1 - 2*par43)*(par43 + 1)) + var09 - (par42*par43/((1 - 2* &
      par43)*(par43 + 1)) + 2*par42/(2*par43 + 2))*(par04 - var15 - &
      var21)*(var01*var02 - var01 - var02 + 1)
out_result(4, 1) = -par42*(par05 - var16 - var22)*(var01* &
      var02 - var01 - var02 + 1)/(2*par43 + 2) + var10
out_result(5, 1) = -par42*(par06 - var17 - var23)*(var01* &
      var02 - var01 - var02 + 1)/(2*par43 + 2) + var11
out_result(6, 1) = -par42*(par07 - var18 - var24)*(var01* &
      var02 - var01 - var02 + 1)/(2*par43 + 2) + var12
out_result(7, 1) = -par44 - var03 + sqrt(3*(var10/(var01* &
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
out_result(8, 1) = -1.5d0*par01*par45*var06**par47*((2.0d0/ &
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
out_result(9, 1) = -1.5d0*par01*par45*var06**par47*(-1.0d0/ &
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
out_result(10, 1) = -1.5d0*par01*par45*var06**par47*(-1.0d0 &
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
out_result(11, 1) = -1.5d0*par01*par45*var06**par47*var10*( &
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
out_result(12, 1) = -1.5d0*par01*par45*var06**par47*var11*( &
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
out_result(13, 1) = -1.5d0*par01*par45*var06**par47*var12*( &
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
out_result(14, 1) = -par01*par45*var06**par47*(3*var10**2/( &
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
out_result(15, 1) = -par38 + var01 - ((1.0d0/2.0d0)*( &
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
out_result(16, 1) = -par01*par48*(3*var10**2/(var01*var02 - &
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
out_result(17, 1) = -par20 - 0.666666666666667d0*par50*( &
      -par08 + var13) + par52*var25*(-par40 + var05) + var25
out_result(18, 1) = -par21 - 0.666666666666667d0*par50*( &
      -par09 + var14) + par52*var26*(-par40 + var05) + var26
out_result(19, 1) = -par22 - 0.666666666666667d0*par50*( &
      -par10 + var15) + par52*var27*(-par40 + var05) + var27
out_result(20, 1) = -par23 - 0.666666666666667d0*par50*( &
      -par11 + var16) + par52*var28*(-par40 + var05) + var28
out_result(21, 1) = -par24 - 0.666666666666667d0*par50*( &
      -par12 + var17) + par52*var29*(-par40 + var05) + var29
out_result(22, 1) = -par25 - 0.666666666666667d0*par50*( &
      -par13 + var18) + par52*var30*(-par40 + var05) + var30
out_result(23, 1) = -par26 + par51*var31*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par08 + var13) + var31
out_result(24, 1) = -par27 + par51*var32*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par09 + var14) + var32
out_result(25, 1) = -par28 + par51*var33*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par10 + var15) + var33
out_result(26, 1) = -par29 + par51*var34*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par11 + var16) + var34
out_result(27, 1) = -par30 + par51*var35*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par12 + var17) + var35
out_result(28, 1) = -par31 + par51*var36*(-par40 + var05) - &
      0.666666666666667d0*par54*(-par13 + var18) + var36
out_result(29, 1) = -par32 - 0.666666666666667d0*par53*( &
      -par08 + var13) + par55*var37*(-par40 + var05) + var37
out_result(30, 1) = -par33 - 0.666666666666667d0*par53*( &
      -par09 + var14) + par55*var38*(-par40 + var05) + var38
out_result(31, 1) = -par34 - 0.666666666666667d0*par53*( &
      -par10 + var15) + par55*var39*(-par40 + var05) + var39
out_result(32, 1) = -par35 - 0.666666666666667d0*par53*( &
      -par11 + var16) + par55*var40*(-par40 + var05) + var40
out_result(33, 1) = -par36 - 0.666666666666667d0*par53*( &
      -par12 + var17) + par55*var41*(-par40 + var05) + var41
out_result(34, 1) = -par37 - 0.666666666666667d0*par53*( &
      -par13 + var18) + par55*var42*(-par40 + var05) + var42
out_result(35, 1) = -par56*var05**par57 + var03
out_result(36, 1) = -par08 - var04*(1.0d0*var07/(var01* &
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
out_result(37, 1) = -par09 - var04*(-0.5d0*var07/(var01* &
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
out_result(38, 1) = -par10 - var04*(-0.5d0*var07/(var01* &
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
out_result(39, 1) = -par11 - var04*(1.5d0*var10/(var01* &
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
out_result(40, 1) = -par12 - var04*(1.5d0*var11/(var01* &
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
out_result(41, 1) = -par13 - var04*(1.5d0*var12/(var01* &
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
out_result(42, 1) = -par40 - var04 + var05
end subroutine
