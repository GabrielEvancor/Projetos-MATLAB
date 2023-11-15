function [v, theta, t] = RA250320_L05_03()
    g = 9.81;
    equation = @(x) [(x(1)*sin(x(2)) - g*x(3) + x(1)*cos(x(2)))
        (x(1)*cos(x(2))*x(3) - 300)
        (-0.5*g*x(3).^2 + x(1)*sin(x(2))*x(3) - 61)];
    
    coluna = [310 0.02 50].';

    x = fsolve(equation, coluna);
    v = [x(1), x(2), x(3)];

end