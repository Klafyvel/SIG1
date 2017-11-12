% function p = puissance(signal)
% Calcule l'�nergie d'un signal.
% Exemples d'utilisation:
% energie = energie([1,2,3,1,2,3]);

function e = energie(X)
    e = X*X';
end
