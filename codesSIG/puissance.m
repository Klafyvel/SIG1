% function p = puissance(signal)
% Calcule la puissance moyenne d'un signal.
% Exemples d'utilisation:
% puissance = puissance([1,2,3,1,2,3]);

function p = puissance(X)
    p = sum(X.*X)/length(X);
end
