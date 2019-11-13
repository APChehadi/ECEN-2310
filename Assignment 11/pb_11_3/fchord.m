function f = fchord(freq_v)
    t = (0:8192-1)/8192;
    
    ssas = zeros(1, 4096);
    for i = 1:length(freq_v)
        ssas(freq_v(i)+1) = 0.25;
    end
    
    figure(1);
    plot(0:4095, ssas);
    title("plot(0:4095, ssas)");
    
    figure(2);
    F = [ssas(1), ssas(2:4096)/2, 0, ssas(4096:-1:2)/2]*8192;
    f = real(ifft(F));
    plot(t(1:128), f(1:128));
    title("plot(t(1:128), f(1:128))");
end
