% function res = signal_double_cos(f1,A1,f2,A2,fe,N)
% Génère un signal de taille N de A1cos(2\pi f_1 t) + A2cos(2\pi f_2 t)
% échantilloné à fe.
% Exemples d'utilisation:
% signal = signal_double_cos(5, 10, 50, 5, 200, 80);

function [res,t] = signal_double_cos(f1,A1,f2,A2,fe,N)
    t = 0:1/fe:(N-1)/fe;
    res = A1 * cos(2*pi*f1*t) + A2 * cos(2*pi*f2*t);
end
