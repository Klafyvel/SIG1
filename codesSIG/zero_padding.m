% function zero_padding(signal, nb_zero)
% Ajoute des zeros à la fin du signal
% Exemples d'utilisation:
% signal = zero_padding([1 2 3], 4);

function res = zero_padding(sig, n)
    res = horzcat(sig, zeros(1,n));
end