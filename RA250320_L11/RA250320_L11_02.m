function [t,y] = RA250320_L11_02()
    
    %equacao dada
    y_deriv = @(t, y) (y.^2)/(1 + t);
    
    %intervalo de t
    t = [1 2];

    y_um = (-1)/(log(2));
    
    [t, y] = ode45(y_deriv, t, y_um);
    
    %analisando a solucao analitica
    plot(t, y);

end
