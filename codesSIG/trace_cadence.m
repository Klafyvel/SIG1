fichier = 'chat.wav';
i = 30000;
t = 300;

[s,fe] = audioread(fichier);
sig = s(i:i+t, 1);
disp(fe);
[sa3,fe3a] = augmente_cadence(fichier, t, i, 3, 'augmente3.wav');
[sa30,fe30a] = augmente_cadence(fichier, t, i, 30, 'augmente30.wav');
%[sa300,fe300a] = augmente_cadence(fichier, t, i, 300, 'augmente300.wav');

[sd3,fe3d] = diminue_cadence(fichier, t, i, 3, 'diminue3.wav');
[sd30,fe30d] = diminue_cadence(fichier, t, i, 30, 'diminue30.wav');
%[sd300,fe300d] = diminue_cadence(fichier, t, i, 300, 'diminue300.wav');

fig = figure(1, 'Position', [0,0,500,150]);
t = 0:1/fe:(length(sig)-1)/fe;
plot(t, sig);
title('Echantillon du signal.');
xlabel('Temps (s)');
grid on;
print fig '../images/cadence_signal.tex' -dtikz -color '-S500,150';


fig1 = figure(2, 'Position', [0,0,500,300]);
subplot(211);
t = 0:1/fe3a:(length(sa3)-1)/fe3a;
plot(t, sa3);
title('Signal augmenté de cadence de facteur 3.');
xlabel('Temps (s)');
grid on;
subplot(212);
t = 0:1/fe30a:(length(sa30)-1)/fe30a;
plot(t, sa30);
title('Signal augmenté de cadence de facteur 30.');
xlabel('Temps (s)');
grid on;
%subplot(313);
%t = 0:1/fe300a:(length(sa300)-1)/fe300a;
%plot(t, sa300);
%title('Signal augmenté de cadence de facteur 300.');
%xlabel('Temps (s)');

print fig1 '../images/cadence_augmente.tex' -dtikz -color '-S500,300';

fig2 = figure(3, 'Position', [0,0,500,300]);
subplot(211);
t = 0:1/fe3d:(length(sd3)-1)/fe3d;
plot(t, sd3);
title('Signal diminué de cadence de facteur 3.');
xlabel('Temps (s)');
grid on;
subplot(212);
t = 0:1/fe30d:(length(sd30)-1)/fe30d;
plot(t, sd30);
title('Signal diminué de cadence de facteur 30.');
xlabel('Temps (s)');
grid on;
%subplot(313);
%t = 0:1/fe300d:(length(sd300)-1)/fe300d;
%plot(t, sd300);
%title('Signal diminué de cadence de facteur 300.');
%xlabel('Temps (s)');
print fig2 '../images/cadence_diminue.tex' -dtikz -color  '-S500,300';
% Avec resample

%y = resample(sig, 3,1);
%sound(y, 3*fe);