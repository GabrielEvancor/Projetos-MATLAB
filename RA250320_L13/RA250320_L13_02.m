function [P_crit, V] = RA250320_L13_02()
    % Dados
    E = 10e9;
    I = 1.5e-5;
    L = 3.5;
    aux = 4;
    Dx = L/5;
    
    % Matriz
    A = [2/(Dx^2) -1/(Dx^2) 0 0
        (-1)/(Dx^2) 2/(Dx^2) (-1)/(Dx^2) 0
        0 (-1)/(Dx^2) 2/(Dx^2) (-1)/(Dx^2)
        0 0 (-1)/(Dx^2) 2/(Dx^2)];   
    
    [V, lambda] = eig(A);
    P2 = diag(lambda);
    
    % Adicionando no vetor criado as cargas criticas de flambagem
    P_crit = zeros(aux, 1);
    for i = 1:aux
        P_crit(i) = E*I*P2(i);
    end
end