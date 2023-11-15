function [Ta, Tb] = RA250320_L08_03()
    
    x1 = 0: 2: 8;
    y1 = 0: 2: 8;
    [X, Y] = meshgrid(x1, y1);
    
    Matrix = [100 90 80 70 60;
        85 64.49 53.50 48.15 50;
        70 48.90 38.43 35.03 40;
        55 38.78 30.39 27.07 30;
        40 35 30 25 20;];
    
    Ta = interp2(X, Y, Matrix, 6, 5.4)
    Tb = interp2(X, Y, Matrix, 1.6, 3.2)

    return
    
end