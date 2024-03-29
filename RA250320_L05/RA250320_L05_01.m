function [R,a,b] = RA250320_L05_01()
    equation = @(x) [ (27.8536 + 8.6*x(1)+ x(1).^2 - 6.12*x(2) + x(2).^2 - x(3).^2)
        (38.1384 - 10.44*x(1)+ x(1).^2 + 6.6*x(2) + x(2).^2 - x(3).^2)
        (6.4525 + 2.28*x(1)+ x(1).^2 - 4.54*x(2) + x(2).^2 - x(3).^2)];
    coluna = [0.01 0.20 0.4].';

    x = fsolve(equation, coluna);
    R = [x(3), x(1), x(2)];
end