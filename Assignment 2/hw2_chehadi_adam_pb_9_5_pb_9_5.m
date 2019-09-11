clc
close all
clear all

sampleTimes = (0:1*8192-1)/8192;
midA = tone(1.0, 440);

x = sampleTimes;
y = midA;

% 9.3 equivalent
plot(x,y);
xlabel('time');
ylabel('amplitude');
pause;

% 9.4 equivalent
plot(x(1:ceil(8192/440)), y(1:ceil(8192/440)));
xlabel('time');
ylabel('amplitude');
pause;

% 9.5 equivalent
plot(x(1:ceil(8192/440)), y(1:ceil(8192/440)), '-o');
xlabel('time');
ylabel('amplitude');
pause;

% 9.6 equivalent
plot(x(1:ceil(10*8192/440)), y(1:ceil(10*8192/440)));
xlabel('time');
ylabel('amplitude');
pause;

