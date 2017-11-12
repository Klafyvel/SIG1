% function sig_quant = quantifie(X, n_bit)
% quantifie sur n bits le signal X.
% Exemples d'utilisation:
% quantifie = quantifie([1,2,3,1,2,3], 8);

function sig_quant = quantifie(X, n_bit)
    m = min(X);
    M = max(X);
    c = (m+M)/2;
    d = M-m;
    q = 1 / (2 ^ n_bit);
    s1 = (X - c)/d;
    sig_quant = min((floor(s1/q) + 1/2) * q, 1/2-q/2)*d + c;
end