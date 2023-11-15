function [h] = RA250320_L03_03()

    r = 1;
    pc = 200;
    pa = 1000;
    g = 9.81;

    f = @(h) (4*pi*r^3*g/3)*(pa-pc) - (pa*pi*g*h^2/3)*(3*r-h);
    fplot(f, [-3 5])
    x1 = fzero(f, [-2 -0.5]); % -0.9052
    x2 = fzero(f, [1 2]); % 1.4257
    x3 = fzero(f, [2 3]); % 2.4795

    %Como o valor de h deve ser positivo e menor do que o diametro da esfera
    %(2m), o valor que deve ser retornado eh de x2.

    h = x2;
    
    return
end