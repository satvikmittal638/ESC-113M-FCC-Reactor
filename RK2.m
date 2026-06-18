function [Z, Y] = RK2(Zspan, Y0, h, params)
    % start and end of the reactor
    Z0 = Zspan(1);
    Zf = Zspan(2);

    % discretize the reactor length
    Z = Z0:h:Zf;
    n = length(Z);

    Y = zeros(length(Y0), n);
    Y(:,1) = Y0;  % initial condition

    for i = 1:n-1
        z_i = Z(i);
        y_i = Y(:,i);

        % RK2 steps
        k1 = FCC_eqn(z_i, y_i, params);
        k2 = FCC_eqn(z_i + h/2, y_i + (h/2)*k1, params);

        Y(:,i+1) = y_i + h * k2;
    end
end