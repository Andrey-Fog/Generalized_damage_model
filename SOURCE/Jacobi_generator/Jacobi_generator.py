import sympy as sp
import os
from sympy.utilities.codegen import codegen
from sympy.printing.fortran import FCodePrinter

def define_symbols():
    # Create numbered variables (39 variables)
    var_names = [f'v{i:02d}' for i in range(1, 40)]
    variables = sp.symbols(' '.join(var_names))
    
    # Create numbered parameters (58 parameters)
    param_names = [f'p{i:02d}' for i in range(1, 59)]
    parameters = sp.symbols(' '.join(param_names))
    
    # Split variables into their components (maintaining the same structure)
    # sigma_eff (6 components) - v01 to v06
    sigma_eff = sp.Matrix(variables[0:6])
    # e_pl (6 components) - v07 to v12
    e_pl = sp.Matrix(variables[6:12])
    # e_cr (6 components) - v13 to v18
    e_cr = sp.Matrix(variables[12:18])
    # X1 (6 components) - v19 to v24
    X1 = sp.Matrix(variables[18:24])
    # X2 (6 components) - v25 to v30
    X2 = sp.Matrix(variables[24:30])
    # X3 (6 components) - v31 to v36
    X3 = sp.Matrix(variables[30:36])
    # Scalar variables - v37, v38, v39
    D_pl, D_cr, Depseqv = variables[36:39]
    
    # Split parameters into their components
    # e_total (6 components) - p01 to p06
    e_total = sp.Matrix(parameters[0:6])
    # e_pl_0 (6 components) - p07 to p12
    e_pl_0 = sp.Matrix(parameters[6:12])
    # e_cr_0 (6 components) - p13 to p18
    e_cr_0 = sp.Matrix(parameters[12:18])
    # X1_0 (6 components) - p19 to p24
    X1_0 = sp.Matrix(parameters[18:24])
    # X2_0 (6 components) - p25 to p30
    X2_0 = sp.Matrix(parameters[24:30])
    # X3_0 (6 components) - p31 to p36
    X3_0 = sp.Matrix(parameters[30:36])
    # Scalar initial values - p37, p38, p39
    D_pl_0, D_cr_0, e_pl_eqv_0 = parameters[36:39]
    # Material parameters - p40 to p58
    Young, nu, sigma_y0, A_iso, B_iso, A_cr, B_cr, C1_X, gamma1_X, C2_X, gamma2_X, C3_X, gamma3_X, A_lem, B_lem, C_lem, A_dmg, B_dmg, dtime = parameters[39:58]
    
    return (D_pl, D_cr, Depseqv, sigma_eff, e_pl, e_cr, X1, X2, X3, dtime, e_total, 
            e_pl_0, e_cr_0, X1_0, X2_0, X3_0, D_pl_0, D_cr_0, e_pl_eqv_0,
            Young, nu, sigma_y0, A_iso, B_iso, A_cr, B_cr,
            C1_X, gamma1_X, C2_X, gamma2_X, C3_X, gamma3_X,
            A_lem, B_lem, C_lem, A_dmg, B_dmg, variables, parameters)

# Get all symbols
(D_pl, D_cr, Depseqv, sigma_eff, e_pl, e_cr, X1, X2, X3, dtime, e_total, 
 e_pl_0, e_cr_0, X1_0, X2_0, X3_0, D_pl_0, D_cr_0, e_pl_eqv_0,
 Young, nu, sigma_y0, A_iso, B_iso, A_cr, B_cr,
 C1_X, gamma1_X, C2_X, gamma2_X, C3_X, gamma3_X,
 A_lem, B_lem, C_lem, A_dmg, B_dmg, variables, parameters) = define_symbols()

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
    sigma_eff_eqv = sp.sqrt(3 * J2)
    
    # Equivalent plastic strain
    epsilon_pl_eqv = sp.sqrt((2/3) * (e_pl[0]**2 + e_pl[1]**2 + e_pl[2]**2 + 
                                      2*e_pl[3]**2 + 2*e_pl[4]**2 + 2*e_pl[5]**2))
    
    # Energy release rate Y 
    term1 = (2/3) * (1 + v)
    term2 = 3 * (1 - 2 * v) * (sigma_H / sigma_eff_eqv)**2 if sigma_eff_eqv != 0 else 0
    Y = (sigma_eff_eqv**2 / (2 * E * (1 - D_pl)**2)) * (term1 + term2)
    
    return (D, X, C_matrix, s_eff, sigma_H, sigma_eff_eqv, epsilon_pl_eqv, Y)

(D, X, C_matrix, s_eff, sigma_H, sigma_eff_eqv, epsilon_pl_eqv, Y) = define_helpers()

# Define residual equations
def define_residuals():
    residuals = sp.Matrix([])
    
    # Equation 1: Elasticity - 6 components
    elastic_strain = e_total - e_pl - e_cr
    predicted_sigma_eff = C_matrix * elastic_strain
    eq1 = sigma_eff - predicted_sigma_eff
    residuals = residuals.col_join(eq1)
    
    # Equation 2: Plastic flow - 6 components
    s_minus_X = s_eff - X
    norm_s_minus_X = sp.sqrt((3/2) * (s_minus_X[0]**2 + s_minus_X[1]**2 + s_minus_X[2]**2 + 
                                      2*s_minus_X[3]**2 + 2*s_minus_X[4]**2 + 2*s_minus_X[5]**2))
    # Avoid division by zero
    direction = (3/2) * s_minus_X / (norm_s_minus_X + 1e-16)
    eq2 = e_pl - e_pl_0 - Depseqv * direction
    residuals = residuals.col_join(eq2)
    
    # Equation 3: Creep - 6 components
    eq3 = e_cr - e_cr_0 - dtime * (3/2) * A_cr * (sigma_eff_eqv)**(B_cr-1) * s_eff
    residuals = residuals.col_join(eq3)
    
    # Equations 4-6: Kinematic hardening - 18 components
    delta_e_pl = e_pl - e_pl_0
    delta_e_pl_eqv = epsilon_pl_eqv - e_pl_eqv_0
    
    eq4 = X1 - X1_0 - (2/3)*C1_X * delta_e_pl + gamma1_X * X1 * delta_e_pl_eqv
    eq5 = X2 - X2_0 - (2/3)*C2_X * delta_e_pl + gamma2_X * X2 * delta_e_pl_eqv
    eq6 = X3 - X3_0 - (2/3)*C3_X * delta_e_pl + gamma3_X * X3 * delta_e_pl_eqv
    
    residuals = residuals.col_join(eq4)
    residuals = residuals.col_join(eq5)
    residuals = residuals.col_join(eq6)
    
    # Equation 7: Yield condition - 1 component
    eq7 = norm_s_minus_X - (sigma_y0 + A_iso * (epsilon_pl_eqv)**B_iso)
    residuals = residuals.col_join(sp.Matrix([eq7]))
    
    # Equation 8: Plastic damage - 1 component
    eq8 = D_pl - D_pl_0 - dtime * (Y/A_lem)**B_lem * (Depseqv/dtime) * (1-D)**(-C_lem)
    residuals = residuals.col_join(sp.Matrix([eq8]))
    
    # Equation 9: Creep damage - 1 component
    eq9 = D_cr - D_cr_0 - dtime * A_dmg * (sigma_eff_eqv)**B_dmg
    residuals = residuals.col_join(sp.Matrix([eq9]))
    
    return residuals

residuals = define_residuals()

# Calculate Jacobian
print("Calculating Jacobian...")
jacobian = residuals.jacobian(variables)

# Create mapping files to document the variable names
def create_mapping_files():
    # Variable mapping
    var_mapping = [
        "Variables (39):",
        "1-6: sigma_eff components",
        "7-12: e_pl components", 
        "13-18: e_cr components",
        "19-24: X1 components",
        "25-30: X2 components",
        "31-36: X3 components",
        "37: D_pl",
        "38: D_cr", 
        "39: Depseqv"
    ]
    
    # Parameter mapping
    param_mapping = [
        "Parameters (58):",
        "1-6: e_total components",
        "7-12: e_pl_0 components",
        "13-18: e_cr_0 components",
        "19-24: X1_0 components",
        "25-30: X2_0 components",
        "31-36: X3_0 components",
        "37: D_pl_0",
        "38: D_cr_0",
        "39: e_pl_eqv_0",
        "40: Young",
        "41: nu",
        "42: sigma_y0",
        "43: A_iso",
        "44: B_iso",
        "45: A_cr",
        "46: B_cr",
        "47: C1_X",
        "48: gamma1_X",
        "49: C2_X",
        "50: gamma2_X",
        "51: C3_X",
        "52: gamma3_X",
        "53: A_lem",
        "54: B_lem",
        "55: C_lem",
        "56: A_dmg",
        "57: B_dmg",
        "58: dtime"
    ]
    
    with open('variable_mapping.txt', 'w') as f:
        f.write('\n'.join(var_mapping))
    
    with open('parameter_mapping.txt', 'w') as f:
        f.write('\n'.join(param_mapping))
    
    print("Mapping files created: variable_mapping.txt, parameter_mapping.txt")

create_mapping_files()

# Generate the Fortran code
print("Generating Fortran code...")

# Generate residuals code
try:
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

# Generate Jacobian code
try:
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