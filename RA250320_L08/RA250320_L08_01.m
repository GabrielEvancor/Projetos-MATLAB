function [K, m] = RA250320_L08_01()
    
    A0 = 1.25.*(10^-4);
    L0 = 0.0125;

    F = [24.6 29.3 31.5 33.3 34.8 35.7 36.6 37.5 38.8 39.6 40.4];
    L = [12.58 12.82 12.91 12.95 13.05 13.21 13.35 13.49 14.08 14.21 14.48];

    tensao_verdadeira = log((F./A0).*(L./L0));
    deformacao_verdadeira = log(log(L.*(10^-3)./L0));

    x = polyfit(deformacao_verdadeira,tensao_verdadeira, 1);

    K = exp(x(2))
    m = x(1)

    return

end
