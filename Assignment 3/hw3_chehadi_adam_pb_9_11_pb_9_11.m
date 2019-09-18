clc
close all
clear all

% C Major
Cmaj = [0 3; 0 7; 0 10];
plot(hchord(Cmaj , 2, [0.5, 0.2, 0.2, 0.1]));
sound(hchord(Cmaj , 2, [0.5, 0.2, 0.2, 0.1]));

pause;

% C Minor
Cmin = [0 3; 0 6; 0 10];
plot(hchord(Cmin , 2, [0.1, 0.2, 0.3, 0.4]));
sound(hchord(Cmin , 2, [0.1, 0.2, 0.3, 0.4]));
