function [A0, A1, B1, C1, dia_max] = RA250320_L09_01() 
   
   t = [15 45 75 105 135 165 195 225 255 285 315 345];
   y = [3.4 4.7 8.5 11.7 16 18.7 20.5 19.7 17.1 12.7 7.7 5.1];
   
   plot(t,y,'or');
   
   hold on;
 
   w0 = (2*pi/365);

   aux_2 = [ones(length(t), 1) cos(w0*t).' sin(w0*t).'];
   aux = aux_2\((y-2.718282).');
   y_ajuste = @(t) aux(1) + aux(2)*cos(w0*t) + aux(3)*sin(w0*t)+2.718282;
   fplot(y_ajuste,[min(t) max(t)],'or','linewidth',2);

   A0 = aux(1)
   A1 = aux(2)
   B1 = aux(3)
   C1 = sqrt(aux(3)^2 + aux(2)^2)
   
   y_ajuste_final = @(t) -1*y_ajuste(t);
   fplot(y_ajuste_final,[min(t) max(t)],'og','linewidth',2);
   [x,fx] = fminbnd(y_ajuste_final,160,220);
   dia_max = x

   return

end