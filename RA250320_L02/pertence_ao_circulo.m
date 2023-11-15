function [saida] = pertence_ao_circulo(xy)
    [~, coluna_saida]  = size(xy);
    saida = 1:1:(coluna_saida);
    for i = 1:coluna_saida
        if ((xy(1, i) >= 0) || (xy(2, i) >= 0))
            raio = (xy(1, i))*(xy(1, i)) + (xy(2, i))*(xy(2, i));
            if (raio<=1)
                saida(i) = 1;
            else
                saida(i) = 0;
            end
        else
            saida(i) = 0;
        end
    end
end