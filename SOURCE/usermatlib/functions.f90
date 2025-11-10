    subroutine compute_elastic_tensor(Young, nu, C_elastic)
            double precision Young, nu, C_elastic(6,6)
            double precision lambda, mu
            integer i, j
  
            mu = Young / (2.0d0 * (1.0d0 + nu))
            lambda = Young * nu / ((1.0d0 + nu) * (1.0d0 - 2.0d0 * nu))
  
            C_elastic = 0.0d0
            do i = 1, 3
                do j = 1, 3
                    C_elastic(i,j) = lambda
                enddo
            C_elastic(i,i) = lambda + 2.0d0 * mu
            enddo
            do i = 4, 6
                C_elastic(i,i) = mu
            enddo
    end subroutine

    subroutine compute_deviator(tensor, deviator)
          double precision tensor(6), deviator(6)
          double precision hydrostatic
          hydrostatic = (tensor(1) + tensor(2) + tensor(3)) / 3.0d0
          deviator(1:3) = tensor(1:3) - hydrostatic
          deviator(4:6) = tensor(4:6)
    end subroutine

    subroutine compute_yield_function(s_eff, X, sigma_y0, e_pl_eqv_0, K, m, phi_pl, norm_s_minus_X)
          double precision s_eff(6), X(6), sigma_y0, e_pl_eqv_0, K, m
          double precision phi_pl, norm_s_minus_X
          double precision s_minus_X(6), R
          !stress state
          s_minus_X = s_eff - X
          !eqv
          norm_s_minus_X = sqrt(1.5d0 * (s_minus_X(1)**2 + s_minus_X(2)**2 + s_minus_X(3)**2 + 2.0d0 * (s_minus_X(4)**2 + s_minus_X(5)**2 + s_minus_X(6)**2)))
          !yelding
          R = K * (e_pl_eqv_0)**m
          phi_pl = norm_s_minus_X - (sigma_y0 + R)
    end subroutine
    
subroutine solve_linear_system(Unk_M, Unk_F, n)
    integer, intent(in) :: n
    double precision, intent(inout) :: Unk_M(n,n), Unk_F(n)
    logical :: is_nan_or_inf
    
    integer :: ii, jj, kk, pivot_row
    double precision :: factor, temp, max_val
    double precision, parameter :: eps = 1.0d-12
    integer :: pivot(n)
    
   
    
    ! Инициализация массива перестановок
    do ii = 1, n
        pivot(ii) = ii
    end do
    
    ! Прямой ход с частичным выбором главного элемента
    do kk = 1, n-1
        ! Поиск максимального элемента в столбце kk
        max_val = abs(Unk_M(pivot(kk), kk))
        pivot_row = kk
        
        do ii = kk+1, n
            if (abs(Unk_M(pivot(ii), kk)) > max_val) then
                max_val = abs(Unk_M(pivot(ii), kk))
                pivot_row = ii
            end if
        end do
        
        ! Если максимальный элемент близок к нулю - матрица вырождена
        if (max_val < eps) then
            success = .false.
            return
        end if
        
        ! Перестановка строк
        if (pivot_row /= kk) then
            jj = pivot(kk)
            pivot(kk) = pivot(pivot_row)
            pivot(pivot_row) = jj
        end if
        
        ! Исключение Гаусса
        do ii = kk+1, n
            factor = Unk_M(pivot(ii), kk) / Unk_M(pivot(kk), kk)
            
            ! Проверка на NaN/Inf
            if (is_nan_or_inf(factor)) then
                success = .false.
                return
            end if
            
            do jj = kk+1, n
                Unk_M(pivot(ii), jj) = Unk_M(pivot(ii), jj) - factor * Unk_M(pivot(kk), jj)
            end do
            Unk_F(pivot(ii)) = Unk_F(pivot(ii)) - factor * Unk_F(pivot(kk))
        end do
    end do
    
    ! Проверка последнего диагонального элемента
    if (abs(Unk_M(pivot(n), n)) < eps) then
        success = .false.
        return
    end if
    
    ! Обратная подстановка
    do ii = n, 1, -1
        temp = Unk_F(pivot(ii))
        do jj = ii+1, n
            temp = temp - Unk_M(pivot(ii), jj) * Unk_F(pivot(jj))
        end do
        
        ! Проверка деления на ноль
        if (abs(Unk_M(pivot(ii), ii)) < eps) then

            return
        end if
        
        Unk_F(pivot(ii)) = temp / Unk_M(pivot(ii), ii)
        
        ! Проверка на NaN в решении
        if (is_nan_or_inf(Unk_F(pivot(ii)))) then
            
            return
        end if
    end do
    
    ! Восстановление порядка решения
    do ii = 1, n
        temp = Unk_F(ii)
        Unk_F(ii) = Unk_F(pivot(ii))
        Unk_F(pivot(ii)) = temp
    end do
    
end subroutine solve_linear_system

! Вспомогательная функция для проверки NaN/Inf
logical function is_nan_or_inf(x)
    double precision, intent(in) :: x
    
    is_nan_or_inf = (x /= x) .or. (abs(x) > huge(x)*0.5d0)
end function is_nan_or_inf
    
subroutine compute_tangent_matrix(params, vars, dsdePl)
          double precision params(60), vars(42), dsdePl(6,6)
      !compute_tangent_matrix
    end subroutine
    
subroutine material_residuals_wrapper(par, var, F)
  implicit none
  real(8), intent(in) :: par(58), var(39)
  real(8), intent(out) :: F(39)
  
  ! Передаем все параметры по одному
  call material_residuals(par(1), par(2), par(3), par(4), par(5), par(6), &
      par(7), par(8), par(9), par(10), par(11), par(12),    &
      par(13), par(14), par(15), par(16), par(17), par(18), &
      par(19), par(20), par(21), par(22), par(23), par(24), & 
      par(25), par(26), par(27), par(28), par(29), par(30), & 
      par(31), par(32), par(33), par(34), par(35), par(36), & 
      par(37), par(38), par(39), par(40), par(41), par(42), & 
      par(43), par(44), par(45), par(46), par(47), par(48), & 
      par(49), par(50), par(51), par(52), par(53), par(54), & 
      par(55), par(56), par(57), par(58), & 
      var(1), var(2), var(3), var(4), var(5), var(6), & 
      var(7), var(8), var(9), var(10), var(11), var(12), & 
      var(13), var(14), var(15), var(16), var(17), var(18), & 
      var(19), var(20), var(21), var(22), var(23), var(24), & 
      var(25), var(26), var(27), var(28), var(29), var(30), & 
      var(31), var(32), var(33), var(34), var(35), var(36), & 
      var(37), var(38), var(39), F)
  
end subroutine material_residuals_wrapper

subroutine material_jacobian_wrapper(par, var, Jac)
  implicit none
  real(8), intent(in) :: par(58), var(39)
  real(8), intent(out) :: Jac(39, 39)


  call material_jacobian(par(39), par(40), par(41), par(43), par(44),     & 
      par(45), par(46), par(47), par(48), par(49), par(50),     & 
      par(51), par(52), par(53), par(54), par(55), par(56),     & 
      par(57), par(58),     &
      var(1), var(2), var(3), var(4), var(5), var(6),     & 
      var(7), var(8), var(9), var(10), var(11), var(12),     & 
      var(19), var(20), var(21), var(22), var(23), var(24),     & 
      var(25), var(26), var(27), var(28), var(29), var(30),     & 
      var(31), var(32), var(33), var(34), var(35), var(36),     & 
      var(37), var(38), var(39), Jac)
  
end subroutine material_jacobian_wrapper
    
    