clc
close all
clear all

A = [2  -4  4
     1  -2  1
     1  -4  6];
 
b = [-3
     5
     10];

 
x = A \ b;


fprintf("x1 = %2.2f\n", x(1));
fprintf("x2 = %2.2f\n", x(2));
fprintf("x3 = %2.2f\n\n", x(3));


b_test = A * x;

if(b_test(1) - b(1) < 10^(-9))
    if(b_test(2) - b(2) < 10^(-9))
        if(b_test(3) - b(3) < 10^(-9))
            disp("b_test = "); disp(b_test);
            disp("b_test == b"); disp(b_test == b);
        end
    end
end


