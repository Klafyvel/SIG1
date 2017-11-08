% function [resultat,fe]=augmente_cadence(fichier, taille, debut, f, res)
% Augmente la cadence du signal de la tranche du fichier d'un facteur f
% et le sauvegarde dans res. Renvoie le resultat et la frequence 
% d'échantillonage.
% Exemples d'utilisation:
% augmente_cadence('fichier.wav', 1000, 30000, 4, 'res.wav');

function [resultat,fe_res]=augmente_cadence(fichier, t, i, f, res)
    [s,fe] = audioread(fichier);
    sig = s(i:i+t, 1);
    x = zeros(f*length(sig),1);
    x(1:f:end) = sig;
    audiowrite(res,x,f*fe);
    resultat = x;
    fe_res = f*fe;
end