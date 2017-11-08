% function p = puissance(signal)
% Calcule l'énergie d'un signal.
% Exemples d'utilisation:
% energie = energie([1,2,3,1,2,3]);

function e = energie(X)
    e = sum(X.*X);
end
