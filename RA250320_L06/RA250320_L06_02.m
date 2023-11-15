function [x1,x2] = RA250320_L06_02()  

    f = @(x) (1/2)*(9/1e-2)*(sqrt(x(1)^(2)+...
        +(0.1-x(2))^(2))-0.1)^(2)+...
        +(1/2)*(2/1e-2)*(sqrt(x(1)^(2)+...
        +(0.1-x(2))^(2))-0.1)^(2)...
        +2*(x(1))-4*(x(2));
    [x, xa] = fminsearch(f,[0.5; 0.5]');
    x1=x;
    x2=xa;
    
    return
end