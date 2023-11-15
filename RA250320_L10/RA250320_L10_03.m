function [v_206, a_206] = RA250320_L10_03()
  
  t = [200 202 204 206 208 210];
  theta = [0.75 0.72 0.70 0.68 0.67 0.66];
  r = [5120 5370 5560 5800 6030 6240];
  
  r_linha = ((r(5) - r(3))/2)/(t(2) - t(1));
  r_dois_linhas = (r(5) - 2*r(4) + r(3))/(t(2) - t(1))^2;

  theta_linha = ((theta(5) - theta(3))/2)/(t(2) - t(1));
  theta_dois_linha = (theta(5) - 2*theta(4) + theta(3))/(t(2) - t(1))^2;
    
  v_206_x = r_linha;
  v_206_y = r(4)*theta_linha;
  
  
  a_206_x = r_dois_linhas - r(4)*(theta_linha)^2;
  a_206_y = r(4)*theta_dois_linha + 2*r_linha*theta_linha;


  v_206 = [v_206_x v_206_y]'
  a_206 = [a_206_x a_206_y]'
   
   
end
