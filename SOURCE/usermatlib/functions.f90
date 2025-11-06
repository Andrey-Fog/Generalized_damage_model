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
          integer i
  
          hydrostatic = (tensor(1) + tensor(2) + tensor(3)) / 3.0d0
          deviator(1:3) = tensor(1:3) - hydrostatic
          deviator(4:6) = tensor(4:6)
end subroutine

subroutine compute_yield_function(s_eff, X, sigma_y0, e_pl_eqv_0, K, m, phi_pl, norm_s_minus_X)
          double precision s_eff(6), X(6), sigma_y0, e_pl_eqv_0, K, m
          double precision phi_pl, norm_s_minus_X
          double precision s_minus_X(6), R
  
          ! Разность девиаторов
          s_minus_X = s_eff - X
  
          ! Норма разности
          norm_s_minus_X = sqrt(1.5d0 * (s_minus_X(1)**2 + s_minus_X(2)**2 + s_minus_X(3)**2 + 2.0d0 * (s_minus_X(4)**2 + s_minus_X(5)**2 + s_minus_X(6)**2)))
  
          ! Изотропное упрочнение
          R = K * (e_pl_eqv_0)**m
  
          ! Функция пластичности
          phi_pl = norm_s_minus_X - (sigma_y0 + R)
end subroutine