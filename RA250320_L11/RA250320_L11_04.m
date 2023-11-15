function [t,y] = RA250320_L11_04()
    
    %equacao dada
    y_deriv = @(t,y) (-t)*y + 4*(t/y);
    
    %intervalo de t
    t = [0 1];
    
    y_zero = 1;
    
    [t, y] = ode45(y_deriv, t, y_zero);
    
    %Agora iremos demonstrar graficamente a solucao analitica
    plot(t, y);

end 