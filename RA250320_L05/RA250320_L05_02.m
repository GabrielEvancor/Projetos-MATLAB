function [theta] = RA250320_L05_02()
    
    equation = @(x) [150*cos(x(1)) + 180*cos(x(2)) - 251.763809
        150*sin(x(1)) + 180*sin(x(2)) - 193.1851653];

    coluna = [0,001 0,002].';
    x = fsolve(equation, coluna);
    theta = [x(1), x(2)].';

end
