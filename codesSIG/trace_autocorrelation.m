subplot(211);
x = sig1_sinus(20, 500, 100)
subplot(212);
hold on;
a = autocorrelation(x)
b = xcorr(x)
title('Autocorélation');
long = length(a);
n = -long/2+1/2:1:long/2-1/2;
plot(n,a);
long = length(b);
n = -long/2:1:long/2-1;
plot(n,b, 'x');
legend('Autocorr. perso', 'xcorr');