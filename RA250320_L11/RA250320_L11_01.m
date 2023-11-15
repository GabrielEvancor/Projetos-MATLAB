function [t,y] = RA250320_L11_01()
    
    %equacao dada
    y_deriv = @(t, y) (2 - (2*t*y))/(t.^2 + 1);
    
    %intervalo de t
    t = [0 1];
    
    y_zero = 1;
    
    [t, y] = ode45(y_deriv, t, y_zero);
    
    %analisando a solucao analitica
    plot(t, y);

end