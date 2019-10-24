clc
close all
clear all

% Maximize
% 6p + 4.5a + 3c

% Minimize
% 0.75p - 0.25a -0.25c <= 0
% 0.4p + 0.4a -0.25c <= 0
% p + a + c <= 100


% Maximize
c = -[6
      4.5
      3];
 
% Inequalities
A = [0.75   -0.25   -0.25
     0.4    0.4     -0.6
     1      1       1];
 
b = [0
     0
     100];
 
% Lower Bounds
lb = zeros(3, 1);

[x, fval, exitflag] = linprog(c, A, b, [], [], lb);

fprintf("p = %f pounds\n", x(1));
fprintf("a = %f pounds\n", x(2));
fprintf("c = %f pounds\n", x(3));



