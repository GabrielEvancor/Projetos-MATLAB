function[Mz] = momento(P,L,M0)
   x = 0:0.1:L;
   l = length(x);
   Mz = 1:l;
   for i = 1:l
       if(i<(l/2))
           Mz(i) = P*L-M0-P*x(i);     
       end
       
       if(i>=(l/2))
           Mz(i) = P*(L-x(i));
       end
   end
end 
