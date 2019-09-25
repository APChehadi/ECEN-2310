clc
close all
clear all

disp("Original Polynomial => P(x)");
P1 = [1 -3 5 -3 0 5]
D = [1 -3 3];

[Q, R] = deconv(P1, D);

L1 = length(D);
L2 = R(1:L1);
check1 = all(L2==0);
assert(check1==1);

disp("Verified Solution Polynomial => P(x)=D(x).Q(x)+R(x)");
P2 = conv(D,Q)+R

check2 = isequal(P1,P2);
assert(check2==1);
