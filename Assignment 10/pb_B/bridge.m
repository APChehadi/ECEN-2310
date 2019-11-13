function V = bridge(R,Vs)
    
    if nargin < 2
        Vs = 2;
    end
    if nargin < 1
        R = [1000, 1000, 1000, 1000, 1000];
    end
    
    if(size(R) ~= 5)
        error('R incorrect size!');
    end
    
    A = [1/R(1) + 1/R(3) + 1/R(4) -1/R(3)
        -1/R(3) 1/R(2) + 1/R(3) + 1/R(5)]
    b = [Vs/R(1); Vs/R(2)]
    
    V = A \ b;
end