clc
close all
clear all


% (a)
A = zeros(4);
A(:,4) = 1:4


% (b)
A = zeros(4);
A(:,4) = 4:-1:1;
A(3,1:3) = 7:2:11


% (c)
(A .* (3 * (mod(A,2) == 0))) + (A .* (2 * (mod(A,2) == 1)))


% (d)
A=zeros(5);
for i=1:4
   A(i,5)=1;
   A(i+1,i+1)=2.5*i;
end
A=(1+10^-10)*A


% (e)
b = zeros(size(5));
for i=1:6
   b(i) = 2^(i-1);
end
b


% (f)
A = [1 1 2; -2 -2 0; -2 -2 2; 1 1 2]
(A < -1) * -1 + (A >= -1) .* A


% (g)
2 * (A < 0) .* A + (A > 0) .* A


% (h)
A = [ 1 -1 5; -1 2 1; 5 1 3;];
A';
bool = isequal(A,A')
