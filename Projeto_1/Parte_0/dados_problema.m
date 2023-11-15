function [L,Izz,M0,b,h] = dados_problema(d)
    if (d(5) == 0 && d(6) == 0)  
        L = 5;
    else
        L = 10*d(5) + d(6);
    end
    b = (10*d(3) + 2*d(4))*1e-2;
    h = 3*b;
    M0 = (10*d(1) + d(2))*1000;
    Izz=(b*(h^(3)))/12;
end