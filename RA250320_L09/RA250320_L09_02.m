function [t,y] = RA250320_L09_02(A0,T,n)
    
    a1 = @(n) (4*A0)./((2*n-1)*pi);

    g = @(n) (2*n-1)*(pi*2)/T;

    fx_1=@(t,n) sum(a1_1(1:n).*sin(g(1:n).*t));
    n = linspace(1,n);
    
    t = 0:0.1:4*T
    tamanho = length(t);
    
    for j = 1:length(n)
      y = zeros(size(t))
      
      for k = 1:tamanho
         y(k )= fx_1(t(k),n(j));
      end
    
    end 

end