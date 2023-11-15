function [L] = RA250320_L10_02()

    eq_comprimento = @(x) sqrt(1+(cos(x)).^2);
    limite_inferior = 0;
    limite_superior = 48;
    L = integral(eq_comprimento, limite_inferior, limite_superior)

end