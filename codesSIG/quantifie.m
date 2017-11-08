% function sig_quant = quantifie(X, n_bit)
% quantifie sur n bits le signal X.
% Exemples d'utilisation:
% quantifie = quantifie([1,2,3,1,2,3], 8);

function sig_quant = quantifie(X, n_bit)
    m = min(X);
    M = max(X);
    sig_quant = floor((X-m)/(M-m) * (2^n_bit -1)) *(M-m)/(2^n_bit-1) + m ;
end
