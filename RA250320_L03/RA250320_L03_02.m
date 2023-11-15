function [H] = RA250320_L03_02()

    g=9.81;
    L=4;     
    t=2.5;   
    v=5;

    f = @(H) (sqrt(2*g*H)*tanh(sqrt((2*g*H)/(2*L))*t)-v);
    H = fzero(f,[0 10]);
    
    return

end