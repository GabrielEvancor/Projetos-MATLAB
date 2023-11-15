function [dt, tn, df, fmin, fmax, h] = RA250320_L09_03()
    
    %dado do problema 
    N = 64;

    %dado do problema 
    fs = 128;
    %periodo inverso da frequencia 
    dt = 1/fs
    
    t = (0:N-1)*dt;
    tn = t(end)

    df = N/2
    
    %f minimo
    fmin = 1/tn
    %f maximo
    fmax = 0.5*fs

    h = figure
    
    %equacao dada no problema 
    y = 1.5 + 1.8*cos(2*pi*12*t) + 0.8*sin(2*pi*20*t) - 1.25*cos(2*pi*28*t); 
    
    Y = fft(y)/N;
    f = linspace(fmin,fmax,N/2);
    
    subplot(2,1,1);
    stem(f,abs(Y(1:N/2)));
    
    subplot(2,1,2);
    stem(f,angle(Y(1:N/2)));

    return

end