function[y]=RA250320_L06_03()
   
    %para flexao minima, precisamos que S seja maximo
   
    f = @(y) (-1)*retorna_S(y);
    x0 = 1;
    A = [];
    b = [];
    Aeq = [];
    beq = [];
    ub = [];
    bl = 0;
    
    [y,fy]=fmincon(f,x0,A,b,Aeq,beq,bl,ub);

    return
end