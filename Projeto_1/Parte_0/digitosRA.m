function [d] = digitosRA(RA)
    d = [];
    for i = 1:length(RA)
        numero = str2num(RA(i));
        d = [d numero];
    end
end




