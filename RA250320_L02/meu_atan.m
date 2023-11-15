function [atan_x] = meu_atan(x, eps)
  termo = x;
  soma = x;
  N = 3;
  sinal = 1;

  if (x<=1 && x>=-1)
    while (termo > eps)
      sinal = (-1)*sinal;
      termo = termo*x*x*(N - 2)/N;
      soma = soma + sinal*termo;
      N = N + 2;
    end
    atan_x = soma;
  else
    atan_x = (pi/2) - meu_atan(1/x , eps);
  end
end