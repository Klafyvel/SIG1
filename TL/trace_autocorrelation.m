
subplot(211);
x = sig1_sinus(20, 500, 100)
subplot(212);
hold on;
[t, a] = autocorrelation(x, 500);
b = xcorr(x);
title('Autocorrélation');
plot(t,a);
plot(t(1:length(b)),b, 'x');
legend('Autocorr. perso', 'xcorr');
xlabel('\tau (s)');