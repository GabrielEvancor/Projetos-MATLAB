function y = sing(x,n)
    % singularity function y = <x-a>^n
    if n>=0
        y = x.^n.*(x>=0);
    else
        y = 0*x;
    end
end
