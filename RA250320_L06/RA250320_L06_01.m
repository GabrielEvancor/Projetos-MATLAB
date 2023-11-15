function [ri] = RA250320_L06_01()
    
    q = 80; %W/m
    rw = 0.0075; %m
    k = 0.18; %W/(m*k)
    h = 14; %W/(m^2*K)
    Tair = 298; %K
    
    T = @(ri) Tair + (q/2*pi).*((1/k).*log((rw+ri)/rw) + (1/h).*(1/rw+ri));
    %fplot(T);
    ri = fminbnd(T, -0.1e-12, 0.1e-12); %valor muito proximo de 0

    return
    
end
