function [t,y] = RA250320_L11_03()
    
    %equacao dada
    y_linha = @(t,y) (y.^2 + y)/(t);
    
    %intervalo de t
    t = [1 3];
    
    y_1 = -2;
    
    [t,y] = ode45(y_linha, t, y_1);
    
    %analisando a solucao analitica
    plot(t, y);

end