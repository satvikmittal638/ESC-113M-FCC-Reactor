% Evalutaes the ODE vector at a given vector point y
% this is an autonomous system-> no explicit dependence on z
function dydz = FCC_eqn(z,y, params)
    % Extract state variables
    X = y(1);    % Conversion
    T = y(2);    % Temperature
    A = y(3);    % Catalyst activity

    % Extract parameters
    k0  = params.k0;
    Ea  = params.Ea;
    kd0 = params.kd0;
    Ead = params.Ead;
    R   = params.R;
    dH  = params.dH;
    Cp  = params.Cp;
    rho = params.rho;

    % Temperature-dependent rate constants
    k  = k0  * exp(-Ea / (R * T));
    kd = kd0 * exp(-Ead / (R * T));

    % Differential equations
    dX_dz = k * A * (1 - X);                           % Conversion
    dT_dz = - (dH / (rho * Cp)) * k * A * (1 - X);     % Energy balance
    dA_dz = - kd * A;                                  % Catalyst deactivation

    % Return derivatives
    dydz = [dX_dz; dT_dz; dA_dz];
end