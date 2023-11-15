function [x] = RA250320_L04_02()
    k = 5;
    w = 50;

    A = [5*k -k -2*k
        -k 2*k -k
        -2*k -k 3*k];
    B = [2*w w 2*w]';

    x = A\B;

    return
end