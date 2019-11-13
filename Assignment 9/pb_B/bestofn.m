% bestofn returns a function that calculates the probability of winning
% a best-of-n tournament with the probability p of winning one game

function fh = bestofn(n)
    if(not (isscalar(n))) || (mod(n, 2) == 0) || (not (floor(n) == n))
        disp("n must be a scalar, odd integer");
        return
    end
    
    k = 0:((n-1)/2);
    coeff = zeros(2*length(k), 1)';
    
    for i = 1:length(k)
        j_sum = 0;
        for j = 0:k(i)
            j_sum = j_sum + (-1).^j * nchoosek((n+1)/2 + k(i), j);
        end
        coeff(length(k)+1-i) = nchoosek(n, (n+1)/2 + k(i)) .* j_sum;
    end
    
    fh = @(p) polyval(coeff, p);
end
