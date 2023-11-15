function [m,rho_avg] = RA250320_L10_01()
    
    r_dado = [0 1100 1500 2450 3400 3630 4500 5380 6060 6280 6380];
    rho_dado = [13 12.4 12 11.2 9.7 5.7 5.2 4.7 3.6 3.4 3];
    
    %Convertendo para o SI
    r = 1000.*r_dado;
    rho = 1000.*rho_dado;
    
    %Coeficientes do polinomio ajustado pela funçao polyfit
    n = 10;
    coef_polinomio = polyfit(r, rho, n);

    %calcular massa da terra 
    f = @(x) polyval(coef_polinomio, x);
    f1 = @(x) f(x).*x.*x;
    m = 4*pi*integral(f1, 0, r(length(r-1)))
    
    %calcular volume da terra
    R = 6380000;
    V = (4/3)*pi*R^3;

    %calcular a densidade media
    rho_avg = m/V

end