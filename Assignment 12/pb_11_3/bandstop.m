function rv = bandstop(F, band)
    %BANDSTOP: Remove frequencies in band from spectrum
    % rv = BANDSTOP(F, band)
    % - F : Fourier spectrum (one or more channels)
    % - band: threshold frequencies (vector [low high])

    [A, B] = size(band);
    if(A~=1 && B~=2 && isinteger(band(1))~=1 && isinteger(band(2))~=1 && band(1)<0 && band(2)<0 && band(2)<band(1))
        error("Input Band is Malformed!");
    end

    RV_1 = F(1:band(1),:);
    RV_2 = zeros(band(1):band(2),:);
    RV_3 = F(band(2):end,:);
    
    rv = RV_1 + RV_2 + RV_3;
end
