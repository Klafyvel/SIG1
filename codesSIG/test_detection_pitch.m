fichier = 'piano.wav';

fmin = 80;
fmax = 2500;
duree_min = 0.0625; % s
taille_fen = 0.05; % s
notes = detection_pitch(fichier, taille_fen, fmin, fmax, duree_min);
%notes
notes
plot(notes(:,1),notes(:,3), 'o');
line([2 2], get(gca, 'ylim'));
line([4 4], get(gca, 'ylim'));
line([6 6], get(gca, 'ylim'));
xlabel('Temps (s)')
ylabel('Numéro de la note.')
title('Reconstitution de la partition')
print '../images/notes.eps' -depsc;