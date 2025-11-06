import sympy as sp
import os
from sympy.utilities.codegen import codegen

# Define all symbolic variables with two-digit indexing
def define_symbols():
    # Scalar variables
    D_pl, D_cr, R, dlambda, e_pl_eqv, e_cr_eqv = sp.symbols('var01 var02 var03 var04 var05 var06')
    Delta_t = sp.symbols('par01')
    
    # Tensor variables (6 components in Fortran notation)
    sigma = sp.Matrix(sp.symbols('var07 var08 var09 var10 var11 var12'))
    e_pl = sp.Matrix(sp.symbols('var13 var14 var15 var16 var17 var18'))
    e_cr = sp.Matrix(sp.symbols('var19 var20 var21 var22 var23 var24'))
    X1 = sp.Matrix(sp.symbols('var25 var26 var27 var28 var29 var30'))
    X2 = sp.Matrix(sp.symbols('var31 var32 var33 var34 var35 var36'))
    X3 = sp.Matrix(sp.symbols('var37 var38 var39 var40 var41 var42'))
    
    # Initial values
    e_total = sp.Matrix(sp.symbols('par02 par03 par04 par05 par06 par07'))
    e_pl_0 = sp.Matrix(sp.symbols('par08 par09 par10 par11 par12 par13'))
    e_cr_0 = sp.Matrix(sp.symbols('par14 par15 par16 par17 par18 par19'))
    X1_0 = sp.Matrix(sp.symbols('par20 par21 par22 par23 par24 par25'))
    X2_0 = sp.Matrix(sp.symbols('par26 par27 par28 par29 par30 par31'))
    X3_0 = sp.Matrix(sp.symbols('par32 par33 par34 par35 par36 par37'))
    D_pl_0, D_cr_0, e_pl_eqv_0, e_cr_eqv_0 = sp.symbols('par38 par39 par40 par41')
    
    # Material parameters
    Young, nu = sp.symbols('par42 par43')  # Young's modulus and Poisson's ratio
    sigma_y0, A, n, q, A_cr, r = sp.symbols('par44 par45 par46 par47 par48 par49')
    C1_X, gamma1_X, C2_X, gamma2_X, C3_X, gamma3_X = sp.symbols('par50 par51 par52 par53 par54 par55')
    K, m, S, s_val, k_val = sp.symbols('par56 par57 par58 par59 par60')
    
    return (D_pl, D_cr, R, dlambda, e_pl_eqv, e_cr_eqv, Delta_t, 
            sigma, e_pl, e_cr, X1, X2, X3,
            e_total, e_pl_0, e_cr_0, X1_0, X2_0, X3_0, 
            D_pl_0, D_cr_0, e_pl_eqv_0, e_cr_eqv_0,
            Young, nu, sigma_y0, A, n, q, A_cr, r,
            C1_X, C2_X, C3_X, gamma1_X, gamma2_X, gamma3_X,
            K, m, S, s_val, k_val)

# Get all symbols
(D_pl, D_cr, R, dlambda, e_pl_eqv, e_cr_eqv, Delta_t, 
 sigma, e_pl, e_cr, X1, X2, X3,
 e_total, e_pl_0, e_cr_0, X1_0, X2_0, X3_0, 
 D_pl_0, D_cr_0, e_pl_eqv_0, e_cr_eqv_0,
 Young, nu, sigma_y0, A, n, q, A_cr, r,
 C1_X,gamma1_X, C2_X,gamma2_X,  C3_X,  gamma3_X,
 K, m, S, s_val, k_val) = define_symbols()

# Helper definitions
def define_helpers():
    # Total damage
    D = D_pl + D_cr - D_pl * D_cr
    
    # Total backstress X = X1 + X2 + X3
    X = X1 + X2 + X3
    
    # Elasticity matrix for isotropic material (6x6 in Voigt notation)
    E = Young
    v = nu
    
    # Lame parameters
    lambda_ = E * v / ((1 + v) * (1 - 2 * v))
    mu = E / (2 * (1 + v))
    
    # Elasticity matrix
    C_matrix = sp.Matrix([
        [lambda_ + 2*mu, lambda_, lambda_, 0, 0, 0],
        [lambda_, lambda_ + 2*mu, lambda_, 0, 0, 0],
        [lambda_, lambda_, lambda_ + 2*mu, 0, 0, 0],
        [0, 0, 0, mu, 0, 0],
        [0, 0, 0, 0, mu, 0],
        [0, 0, 0, 0, 0, mu]
    ])
    
    # Effective stress tensor
    sigma_eff = sigma / (1 - D)
    
    # Deviator of effective stress
    s11, s22, s33, s12, s23, s13 = sigma_eff
    mean_stress = (s11 + s22 + s33) / 3
    s_eff = sp.Matrix([
        s11 - mean_stress,
        s22 - mean_stress, 
        s33 - mean_stress,
        s12,
        s23,
        s13
    ])
    
    # Hydrostatic stress
    sigma_H = mean_stress
    
    # Equivalent von Mises stress
    J2 = (s_eff[0]**2 + s_eff[1]**2 + s_eff[2]**2 + 
          2*s_eff[3]**2 + 2*s_eff[4]**2 + 2*s_eff[5]**2) / 2
    sigma_eff_eq = sp.sqrt(3 * J2)
    
    # Energy release rate Y (corrected formula)
    term1 = (2/3) * (1 + nu)
    term2 = 3 * (1 - 2 * nu) * (sigma_H / sigma_eff_eq)**2 if sigma_eff_eq != 0 else 0
    Y = (sigma_eff_eq**2 / (2 * E * (1 - D_pl)**2)) * (term1 + term2)
    
    # For plastic flow direction
    s_minus_X = s_eff - X
    J2_X = (s_minus_X[0]**2 + s_minus_X[1]**2 + s_minus_X[2]**2 + 
            2*s_minus_X[3]**2 + 2*s_minus_X[4]**2 + 2*s_minus_X[5]**2) / 2
    sigma_eff_eq_X = sp.sqrt(3 * J2_X)
    
    return (D, X, C_matrix, sigma_eff, s_eff, sigma_H, 
            sigma_eff_eq, Y, s_minus_X, sigma_eff_eq_X)

(D, X, C_matrix, sigma_eff, s_eff, sigma_H, 
 sigma_eff_eq, Y, s_minus_X, sigma_eff_eq_X) = define_helpers()

# Define residual equations
def define_residuals():
    # Equation 1: Elasticity
    elastic_strain = e_total - e_pl - e_cr
    residual1 = sigma - (1 - D) * C_matrix * elastic_strain
    
    # Equation 2: Yield condition
    residual2 = sp.Matrix([sigma_eff_eq_X - (sigma_y0 + R)])
    
    # Equation 3: Creep integration (Modified Norton)
    creep_rate = (3/2) * A * sigma_eff_eq**(n-1) * s_eff * e_cr_eqv**q
    residual3 = e_cr - e_cr_0 - Delta_t * creep_rate
    
    # Equation 4: Equivalent creep strain integration (Modified Norton)
    creep_eqv_rate = A * sigma_eff_eq**n * e_cr_eqv**q
    residual4 = sp.Matrix([e_cr_eqv - e_cr_eqv_0 - Delta_t * creep_eqv_rate])
    
    # Equation 5: Plastic damage integration
    delta_alpha = e_pl_eqv - e_pl_eqv_0
    plastic_damage_rate = (Y/S)**s_val * (delta_alpha/Delta_t) * (1 - D)**(-k_val)
    residual5 = sp.Matrix([D_pl - D_pl_0 - Delta_t * plastic_damage_rate])
    
    # Equation 6: Creep damage integration
    creep_damage_rate = A_cr * sigma_eff_eq**r
    residual6 = sp.Matrix([D_cr - D_cr_0 - Delta_t * creep_damage_rate])
    
    # Equations 7-9: Kinematic hardening (Chaboche, 3 components)
    delta_e_pl = e_pl - e_pl_0
    delta_e_pl_eqv = e_pl_eqv - e_pl_eqv_0
    
    residual7 = X1 - X1_0 - (2/3) * C1_X * delta_e_pl + gamma1_X * X1 * delta_e_pl_eqv
    residual8 = X2 - X2_0 - (2/3) * C2_X * delta_e_pl + gamma2_X * X2 * delta_e_pl_eqv
    residual9 = X3 - X3_0 - (2/3) * C3_X * delta_e_pl + gamma3_X * X3 * delta_e_pl_eqv
    
    # Equation 10: Isotropic hardening (Power law)
    residual10 = sp.Matrix([R - K * e_pl_eqv**m])
    
    # Equation 11: Plastic flow definition
    if sigma_eff_eq_X != 0:
        n_flow = (3/2) * s_minus_X / sigma_eff_eq_X
    else:
        n_flow = sp.Matrix([0, 0, 0, 0, 0, 0])
    residual11 = e_pl - e_pl_0 - dlambda * n_flow
    
    # Equation 12: Hardening parameter relation
    residual12 = sp.Matrix([e_pl_eqv - e_pl_eqv_0 - dlambda])
    
    # Combine all residuals
    residuals = sp.Matrix.vstack(
        residual1,      # 6 equations (elasticity)
        residual2,      # 1 equation (yield)
        residual3,      # 6 equations (creep tensor)
        residual4,      # 1 equation (creep eqv)
        residual5,      # 1 equation (plastic damage)
        residual6,      # 1 equation (creep damage)
        residual7,      # 6 equations (X1)
        residual8,      # 6 equations (X2)
        residual9,      # 6 equations (X3)
        residual10,     # 1 equation (isotropic)
        residual11,     # 6 equations (plastic flow)
        residual12      # 1 equation (hardening param)
    )  # Total: 6+1+6+1+1+1+6+6+6+1+6+1 = 42 equations
    
    return residuals

residuals = define_residuals()

# Define variable vector (42 variables)
variables = sp.Matrix([
    # Scalar variables (6)
    D_pl, D_cr, R, dlambda, e_pl_eqv, e_cr_eqv,
    # Tensor variables (36)
    sigma[0], sigma[1], sigma[2], sigma[3], sigma[4], sigma[5],
    e_pl[0], e_pl[1], e_pl[2], e_pl[3], e_pl[4], e_pl[5],
    e_cr[0], e_cr[1], e_cr[2], e_cr[3], e_cr[4], e_cr[5],
    X1[0], X1[1], X1[2], X1[3], X1[4], X1[5],
    X2[0], X2[1], X2[2], X2[3], X2[4], X2[5],
    X3[0], X3[1], X3[2], X3[3], X3[4], X3[5]
])

# Parameters to pass to function (60 parameters)
parameters = sp.Matrix([
    Delta_t,
    e_total[0], e_total[1], e_total[2], e_total[3], e_total[4], e_total[5],
    e_pl_0[0], e_pl_0[1], e_pl_0[2], e_pl_0[3], e_pl_0[4], e_pl_0[5],
    e_cr_0[0], e_cr_0[1], e_cr_0[2], e_cr_0[3], e_cr_0[4], e_cr_0[5],
    X1_0[0], X1_0[1], X1_0[2], X1_0[3], X1_0[4], X1_0[5],
    X2_0[0], X2_0[1], X2_0[2], X2_0[3], X2_0[4], X2_0[5],
    X3_0[0], X3_0[1], X3_0[2], X3_0[3], X3_0[4], X3_0[5],
    D_pl_0, D_cr_0, e_pl_eqv_0, e_cr_eqv_0,
    Young, nu, sigma_y0, A, n, q, A_cr, r,
    C1_X,gamma1_X, C2_X, gamma2_X, C3_X, gamma3_X,
    K, m, S, s_val, k_val
])

# Calculate Jacobian
print("Calculating Jacobian...")
jacobian = residuals.jacobian(variables)

# Generate Fortran code with two-digit names
print("Generating Fortran code...")

# Create mapping files to document the variable names
def create_mapping_files():
    # Variable mapping
    var_mapping = [
        "Variables (42 total):",
        "01: D_pl (plastic damage)",
        "02: D_cr (creep damage)",
        "03: R (isotropic hardening)",
        "04: dlambda (plastic multiplier)",
        "05: e_pl_eqv (equivalent plastic strain)",
        "06: e_cr_eqv (equivalent creep strain)",
        "07: sigma_1 (stress tensor component 1)",
        "08: sigma_2 (stress tensor component 2)",
        "09: sigma_3 (stress tensor component 3)",
        "10: sigma_4 (stress tensor component 4)",
        "11: sigma_5 (stress tensor component 5)",
        "12: sigma_6 (stress tensor component 6)",
        "13: e_pl_1 (plastic strain tensor component 1)",
        "14: e_pl_2 (plastic strain tensor component 2)",
        "15: e_pl_3 (plastic strain tensor component 3)",
        "16: e_pl_4 (plastic strain tensor component 4)",
        "17: e_pl_5 (plastic strain tensor component 5)",
        "18: e_pl_6 (plastic strain tensor component 6)",
        "19: e_cr_1 (creep strain tensor component 1)",
        "20: e_cr_2 (creep strain tensor component 2)",
        "21: e_cr_3 (creep strain tensor component 3)",
        "22: e_cr_4 (creep strain tensor component 4)",
        "23: e_cr_5 (creep strain tensor component 5)",
        "24: e_cr_6 (creep strain tensor component 6)",
        "25: X1_1 (backstress tensor 1 component 1)",
        "26: X1_2 (backstress tensor 1 component 2)",
        "27: X1_3 (backstress tensor 1 component 3)",
        "28: X1_4 (backstress tensor 1 component 4)",
        "29: X1_5 (backstress tensor 1 component 5)",
        "30: X1_6 (backstress tensor 1 component 6)",
        "31: X2_1 (backstress tensor 2 component 1)",
        "32: X2_2 (backstress tensor 2 component 2)",
        "33: X2_3 (backstress tensor 2 component 3)",
        "34: X2_4 (backstress tensor 2 component 4)",
        "35: X2_5 (backstress tensor 2 component 5)",
        "36: X2_6 (backstress tensor 2 component 6)",
        "37: X3_1 (backstress tensor 3 component 1)",
        "38: X3_2 (backstress tensor 3 component 2)",
        "39: X3_3 (backstress tensor 3 component 3)",
        "40: X3_4 (backstress tensor 3 component 4)",
        "41: X3_5 (backstress tensor 3 component 5)",
        "42: X3_6 (backstress tensor 3 component 6)"
    ]
    
    # Parameter mapping
    param_mapping = [
        "Parameters (60 total):"
        "01: Delta_t (time increment)",
        "02: e_total_1 (total strain tensor component 1)",
        "03: e_total_2 (total strain tensor component 2)",
        "04: e_total_3 (total strain tensor component 3)",
        "05: e_total_4 (total strain tensor component 4)",
        "06: e_total_5 (total strain tensor component 5)",
        "07: e_total_6 (total strain tensor component 6)",
        "08: e_pl_0_1 (initial plastic strain component 1)",
        "09: e_pl_0_2 (initial plastic strain component 2)",
        "10: e_pl_0_3 (initial plastic strain component 3)",
        "11: e_pl_0_4 (initial plastic strain component 4)",
        "12: e_pl_0_5 (initial plastic strain component 5)",
        "13: e_pl_0_6 (initial plastic strain component 6)",
        "14: e_cr_0_1 (initial creep strain component 1)",
        "15: e_cr_0_2 (initial creep strain component 2)",
        "16: e_cr_0_3 (initial creep strain component 3)",
        "17: e_cr_0_4 (initial creep strain component 4)",
        "18: e_cr_0_5 (initial creep strain component 5)",
        "19: e_cr_0_6 (initial creep strain component 6)",
        "20: X1_0_1 (initial backstress 1 component 1)",
        "21: X1_0_2 (initial backstress 1 component 2)",
        "22: X1_0_3 (initial backstress 1 component 3)",
        "23: X1_0_4 (initial backstress 1 component 4)",
        "24: X1_0_5 (initial backstress 1 component 5)",
        "25: X1_0_6 (initial backstress 1 component 6)",
        "26: X2_0_1 (initial backstress 2 component 1)",
        "27: X2_0_2 (initial backstress 2 component 2)",
        "28: X2_0_3 (initial backstress 2 component 3)",
        "29: X2_0_4 (initial backstress 2 component 4)",
        "30: X2_0_5 (initial backstress 2 component 5)",
        "31: X2_0_6 (initial backstress 2 component 6)",
        "32: X3_0_1 (initial backstress 3 component 1)",
        "33: X3_0_2 (initial backstress 3 component 2)",
        "34: X3_0_3 (initial backstress 3 component 3)",
        "35: X3_0_4 (initial backstress 3 component 4)",
        "36: X3_0_5 (initial backstress 3 component 5)",
        "37: X3_0_6 (initial backstress 3 component 6)",
        "38: D_pl_0 (initial plastic damage)",
        "39: D_cr_0 (initial creep damage)",
        "40: e_pl_eqv_0 (initial equivalent plastic strain)",
        "41: e_cr_eqv_0 (initial equivalent creep strain)",
        "42: Young (Young's modulus)",
        "43: nu (Poisson's ratio)",
        "44: sigma_y0 (initial yield stress)",
        "45: A (creep coefficient)",
        "46: n (creep exponent)",
        "47: q (creep exponent)",
        "48: A_cr (creep damage coefficient)",
        "49: r (creep damage exponent)",
        "50: C1_X (kinematic hardening modulus 1)",
        "51: gamma1_X (kinematic hardening parameter 1)",
        "52: C2_X (kinematic hardening modulus 2)",
        "53: gamma2_X (kinematic hardening parameter 2)",
        "54: C3_X (kinematic hardening modulus 3)",
        "55: gamma3_X (kinematic hardening parameter 3)",
        "56: K (isotropic hardening coefficient)",
        "57: m (isotropic hardening exponent)",
        "58: S (damage parameter)",
        "59: s (damage exponent)",
        "60: k (damage exponent)"
    ]
    
    with open('variable_mapping.txt', 'w') as f:
        f.write('\n'.join(var_mapping))
    
    with open('parameter_mapping.txt', 'w') as f:
        f.write('\n'.join(param_mapping))
    
    print("Mapping files created: variable_mapping.txt, parameter_mapping.txt")

create_mapping_files()

# Generate the Fortran code
try:
    # Generate residuals code
    residuals_code = codegen(
        [('material_residuals', residuals)], 
        'f95', 
        'user_mat_residuals', 
        header=False, 
        empty=False
    )
    
    # Save residuals code
    with open('user_mat_residuals.f90', 'w') as f:
        f.write(residuals_code[0][1])
    print("Residuals code generated and saved to user_mat_residuals.f90")
    
except Exception as e:
    print(f"Error generating residuals code: {e}")

try:
    # Generate Jacobian code  
    jacobian_code = codegen(
        [('material_jacobian', jacobian)],
        'f95',
        'user_mat_jacobian', 
        header=False,
        empty=False
    )
    
    # Save Jacobian code
    with open('user_mat_jacobian.f90', 'w') as f:
        f.write(jacobian_code[0][1])
    print("Jacobian code generated and saved to user_mat_jacobian.f90")
    
except Exception as e:
    print(f"Error generating Jacobian code: {e}")

print("Generation completed!")

# Display system information
print(f"System dimension: {len(residuals)} equations")
print(f"Number of variables: {len(variables)}")
print(f"Number of parameters: {len(parameters)}")

# Create simplified functions for testing
print("\nCreating simplified Python functions for testing...")

try:
    residuals_func = sp.lambdify(
        (variables, parameters), 
        residuals, 
        'numpy'
    )
    print("Residuals function created successfully")
except Exception as e:
    print(f"Error creating residuals function: {e}")

try:
    jacobian_func = sp.lambdify(
        (variables, parameters), 
        jacobian, 
        'numpy'  
    )
    print("Jacobian function created successfully")
except Exception as e:
    print(f"Error creating Jacobian function: {e}")

print("All operations completed successfully!")

# Show where files are saved
print(f"\nFiles saved in: {os.getcwd()}")
print("Generated files:")
for file in ['user_mat_residuals.f90', 'user_mat_jacobian.f90', 'variable_mapping.txt', 'parameter_mapping.txt']:
    if os.path.exists(file):
        print(f"  - {file}")
