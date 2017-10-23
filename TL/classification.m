figure;
fe = 11200;
ah = audioread('ah.wav');
l = length(ah);
for i = 1:4
    b = i/5 * l / fe;
    e = b + 0.03;
    subplot(420 + 2*i);
    [t,a] = autocorrelation(ah(l/5*i:e*fe), fe);
    plot(t,a)
    title('Autocorrélation');
    xlabel('\tau (s)');
    subplot(420 + 2*i-1);
    plot(t(length(t)/2+1:length(t))+b, ah(l/5*i:e*fe));
    title(['Signal "ah" fe=' num2str(fe) 'Hz']);
    xlabel('t (s)');
end

figure;

subplot(321);
enrgistrement_bruit;
t = mesure(:,1);
s = mesure(:,2);
fe = length(s)/(t(length(t))-t(1));
plot(t,s)
title(['Signal du bruit fe=' num2str(fe) 'Hz']);
xlabel('t (s)');
subplot(322);
[t,a] = autocorrelation(s, fe);
plot(t,a);
title('Autocorrélation');
xlabel('\tau (s)');

subplot(323);
enregistrement_sinus_200;
t = mesure(:,1);
s = mesure(:,2);
fe = length(s)/(t(length(t))-t(1));
plot(t,s)
title(['Signal sinusoïdal fe=' num2str(fe) 'Hz']);
xlabel('t (s)');
subplot(324);
[t,a] = autocorrelation(s, fe);
plot(t,a);
title('Autocorrélation');
xlabel('\tau (s)');

subplot(325);
enregistrement_triangle_200;
t = mesure(:,1);
s = mesure(:,2);
fe = length(s)/(t(length(t))-t(1));
plot(t,s)
title(['Signal triangulaire fe=' num2str(fe) 'Hz']);
xlabel('t (s)');
subplot(326);
[t,a] = autocorrelation(s, fe);
plot(t,a);
title('Autocorrélation');
xlabel('\tau (s)');