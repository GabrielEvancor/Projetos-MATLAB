function [ha, vb] = RA250320_L08_02()
    
    v = [0.13730 0.14222 0.14710];
    h = [286.24 295.45 304.79];
    v_especifico = 0.141;
    ha = interp1(v,h,v_especifico, "linear")'
    h_dado = 300;
    vb = interp1(h,v,h_dado, "linear")

    return

end
