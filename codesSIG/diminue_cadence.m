% function [resultat,fe]=diminue_cadence(fichier, taille, debut, f, res)
% Diminue la cadence du signal de la tranche du fichier d'un facteur f
% et le sauvegarde dans res. Renvoie le resultat et la frequence 
% d'échantillonage.
% Exemples d'utilisation:
% diminue_cadence('fichier.wav', 1000, 30000, 4, 'res.wav');

function [resultat,fe_res]=diminue_cadence(fichier, t, i, f, res)
    [s,fe] = audioread(fichier);
    sig = s(i:i+t, 1);
    x = sig(1:f:end);
    audiowrite(res,x,floor(fe/f));
    resultat = x;
    fe_res = fe/f;
end