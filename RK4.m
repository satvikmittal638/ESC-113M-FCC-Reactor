function [Z, Y] = RK4(Zspan, Y0, h, params)
    % start and end length of the reactor
    Z0 = Zspan(1);
    Zf = Zspan(2);
    
    % discretize the reactor length by step sizes
    Z = Z0:h:Zf;
    n = length(Z);

    Y = zeros(length(Y0), n);
    % initial value
    Y(:,1) = Y0;

    % RK4 scheme begins
    for i = 1:n-1
        z_i = Z(i);
        y_i = Y(:,i);

        k1 = FCC_eqn(z_i,y_i,params);
        k2 = FCC_eqn(z_i + h/2,y_i+h/2*k1,params);
        k3 = FCC_eqn(z_i + h/2,y_i+h/2*k2,params);
        k4 = FCC_eqn(z_i + h,y_i+h*k3,params);

        Y(:,i+1) = y_i + (h/6) * (k1 + 2*k2 + 2*k3 + k4);
    end
end