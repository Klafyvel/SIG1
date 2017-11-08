i = 200;
taille_tranche = 256;

Sx = 5*100;
Sy = 5*25;

%f = figure('Position', [0, 0, 500, 5*151]);
%
% Signal
%subplot(511);
f1 = figure(1, 'Position', [0, 0, Sx, Sy]);

hold on;
grid on;
[x,t] = signal_double_cos(40e3, 1, 61e3, 1, 512e3, 1024);
plot(t(i:i+taille_tranche),x(i:i+taille_tranche));
title('Signal analysé');
xlabel('Temps (s)');
print f1 '../images/signal_fenetre.tex' -dtikz -color "-S500,125" ;
hold off;

% Rectangle
%subplot(512);
f2 = figure(2, 'Position', [0, 0, Sx, Sy]);

hold on;
tfd(x, taille_tranche, i, 2048, 'rectangle', false);
grid on;
print f2 '../images/rectangle.tex' -dtikz -color "-S500,125" ;
hold off;

% Hanning
%subplot(513);
f3 = figure(3, 'Position', [0, 0, Sx, Sy]);

hold on;
tfd(x, taille_tranche, i, 2048, 'hanning', false);
grid on;
print f3 '../images/hanning.tex' -dtikz -color "-S500,125" ;
hold off;

% Hamming
%subplot(514);
f4 = figure(4, 'Position', [0, 0, Sx, Sy]);

hold on;
tfd(x, taille_tranche, i, 2048, 'hamming', false);
grid on;
print f4 '../images/hamming.tex' -dtikz -color "-S500,125" ;
hold off;

% Blackman
%subplot(515);
f5 = figure(5, 'Position', [0, 0, Sx, Sy]);

hold on;
tfd(x, taille_tranche, i, 2048, 'blackman', false);
grid on;
print f5 '../images/blackman.tex' -dtikz -color "-S500,125" ;
hold off;

% print -deps2 -color '../images/fenetres.eps'
% print f '../images/fenetres.tex' -dtikz -color "-S500,125" -S500,5*151 -F:5;
