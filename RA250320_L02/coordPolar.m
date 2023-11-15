function [r,theta] = coordPolar(x, y)
  r = sqrt(x*x + y*y);

  if (x>0)
    theta = meu_atan(y/x, 10^-8);
  end

  if (x<0)

    if (y>0)
      theta = meu_atan(y/x, 10^-8) + pi;
    end

    if (y<0)
      theta = meu_atan(y/x, 10^-8) - pi;
    end

    if (y==0)
      theta = pi;
    end

  end


   if (x==0)

    if (y>0)
      theta = pi/2;
    end

    if (y<0)
      theta = -pi/2;
    end

    if (y==0)
      theta = 0;
    end

   end
end