function [d] = RA250320_L03_01()
    
    k1 = 40e3;
    k2 = 40;
    m = 95;
    g = 9.81;
    h = 0.43;

    f = @(d) ((2*k2*d.^(5/2))/5) + (k1/2)*d.^2 - m*g*d - m*g*h;
    d = fzero(f, [0.1 0.2]);

    return
end