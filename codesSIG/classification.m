%figure;
%fe = 11200;
%ah = wavread('ah.wav');
%l = length(ah);
%for i = 1:4
%    b = i/5 * l / fe;
%    e = b + 0.03;
%    subplot(420 + 2*i);
%    [t,a] = autocorrelation2(ah(l/5*i:e*fe), fe);
%    plot(t,a)
%    title('Autocorrélation');
%    xlabel('$\tau$ (s)');
%    subplot(420 + 2*i-1);
%    plot(t(length(t)/2+1:length(t))+b, ah(l/5*i:e*fe));
%    title(['Signal "ah" fe=' num2str(fe) 'Hz']);
%    xlabel('t (s)');
%end
%print '../images/classificationAh.tex' -dtikz -color;
figure;

subplot(321);
source('enrgistrement_bruit.m');
t = mesure(:,1);
s = mesure(:,2);
fe = length(s)/(t(length(t))-t(1));
plot(t,s)
title(['Signal du bruit fe=' num2str(fe) 'Hz']);
xlabel('t (s)');
subplot(322);
disp('autocorr');
[t,a] = autocorrelation2(s, fe);
plot(t,a);
title('Autocorrélation');
xlabel('$\tau$ (s)');

subplot(323);
source('enregistrement_sinus_200.m');
t = mesure(:,1);
s = mesure(:,2);
fe = length(s)/(t(length(t))-t(1));
plot(t,s)
title(['Signal sinusoïdal fe=' num2str(fe) 'Hz']);
xlabel('t (s)');
subplot(324);
[t,a] = autocorrelation2(s, fe);
plot(t,a);
title('Autocorrélation');
xlabel('$\tau$ (s)');

subplot(325);
source('enregistrement_triangle_200.m');
t = mesure(:,1);
s = mesure(:,2);
fe = length(s)/(t(length(t))-t(1));
plot(t,s)
title(['Signal triangulaire fe=' num2str(fe) 'Hz']);
xlabel('t (s)');
subplot(326);
[t,a] = autocorrelation2(s, fe);
plot(t,a);
title('Autocorrélation');
xlabel('$\tau$ (s)');
print '../images/classificationSig.tex' -dtikz -color;
