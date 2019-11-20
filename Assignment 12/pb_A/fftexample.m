function [F, S] = fftexample
    %F = -0.8000 + 0.0000i  -1.6000 - 0.8000i   0.0000 + 0.0000i  -0.0000 - 1.2000i   0.0000 + 0.0000i  -0.0000 + 1.2000i   0.0000 - 0.0000i  -1.6000 + 0.8000i
    %S = 0.1000    0.4472    0.0000    0.3000

    t = (0:7)/8;
    
    f = @(t) -0.1 + 0.2*sin(2*pi*t) - 0.4*cos(2*pi*t)+0.3*sin(2*pi*3*t);
    
    F = fft(f(t));
    
    S = abs([F(1) 2*F(2:length(F)/2)])/length(F);
end