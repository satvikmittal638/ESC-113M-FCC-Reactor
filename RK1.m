function [Z, Y] = RK1(Zspan, Y0, h, params)
    % Start and end of reactor length
    Z0 = Zspan(1);
    Zf = Zspan(2);
    
    % Discretize reactor length
    Z = Z0:h:Zf;
    n = length(Z);

    Y = zeros(length(Y0), n);  % Preallocate solution matrix
    Y(:,1) = Y0;               % Set initial conditions

    % Euler's method loop
    for i = 1:n-1
        z_i = Z(i);
        y_i = Y(:,i);

        dy = FCC_eqn(z_i, y_i, params);      % Evaluate derivative
        Y(:,i+1) = y_i + h * dy;             % Euler update step
    end
end