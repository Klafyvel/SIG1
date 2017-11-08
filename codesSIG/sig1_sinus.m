% function res = sig1_sinus(frequence,frequence échantillonage, nombre de points)
% Renvoie un signal sinusoïdal échantilloné à fe, de fréquence f0 et
% comportant N points et l'affiche.
% Exemples d'utilisation:
% signal = sig1_sinus(5, 50, 2000);

function res = sig1_sinus(f0,fe,N)
Te = 1 / fe;
T = 0:Te:(N-1)*Te;
res = sin(2*pi*f0*T);
plot(T,res);
hold on;
title('Sinusoïde échantillonée à f0');
xlabel('Temps(s)');
ylabel('Signal');

end