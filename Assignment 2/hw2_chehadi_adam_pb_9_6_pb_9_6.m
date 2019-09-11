clc
close all
clear all

sampleTimes = (0:1*8192-1)/8192;
midA = tone(1.0, 440);

% e^-3t gradually becomes quiter
plot(exp(-3*sampleTimes) .* midA);
sound(exp(-3*sampleTimes) .* midA);

pause;

% cos(10t) pulsing volume
plot(cos(10*sampleTimes) .* midA);
sound(cos(10*sampleTimes) .* midA);