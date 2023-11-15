function [w, X] = RA250320_L13_01()
    % Dados
    k1 = 20;
    k2 = 45;
    k3 = 45;
    k4 = 20;
    m1 = 1.25;
    m2 = 2.5;
    m3 = 1.25;
    
    % Matriz fornecida 
    A = [(k1 + k2)/m1 -k2/m1 0; -k2/m2 (k2 + k3)/m2 -k3/m2; 0 -k3/m3 (k3 + k4)/m3];
    % Matriz identidade
    Identidade = eye(3);

    [X, lambda] = eig(A, Identidade);
    
    Diag = diag(lambda);
    
    % Frequencias naturais
    w = sqrt(Diag);
end

