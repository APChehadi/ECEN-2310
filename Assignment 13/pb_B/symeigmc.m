clc
close all
clear all

P = ones(6, 6) * 1/5;

for n = 1:6
    P(n,n) = 0;
end
disp('P:'); disp(P);

A = sym(P);
disp('A:'); disp(A);

[V, d] = eig(A);
lambda = [d(1); d(8); d(15); d(22); d(29); d(36)];
V1 = V(1:6, 1);
V2 = V(1:6, 2);
V3 = V(1:6, 3);
V4 = V(1:6, 4);
V5 = V(1:6, 5);
V6 = V(1:6, 6);

disp('eigenvalues:');
disp(lambda);

disp('eigenvectors:'); 
disp(V1); 
disp(V2); 
disp(V3); 
disp(V4); 
disp(V5); 
disp(V6);

