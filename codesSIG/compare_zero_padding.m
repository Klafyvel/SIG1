fichier = 'chat.wav';
i = 30000;
t_tranche = 1000;
[s,fe] = audioread(fichier);
NFFT = 2^nextpow2(t_tranche); % on calcule la puissance de 2 la taille de l'échantillon
sig=s(i:(i+t_tranche));
y = fft(sig,NFFT)/t_tranche;
y = 2*abs(y(1:NFFT/2+1));
y = y .^2;
y = 20 * log10(y);
f = [0:NFFT/2]/NFFT*fe;
    
figure;
clf;
subplot(311);
plot(sig);
title('Signal analysé.');
xlabel('Temps (s)');

subplot(312);
plot(f,y);
title('Densité d`énergie de la tranche sans 0-padding');
xlabel('Fréquence (Hz)');
ylabel('Densité en dB');

sig = zero_padding(sig, 2000);
t_tranche = length(sig);
NFFT = 2^nextpow2(t_tranche); % on calcule la puissance de 2 la taille de l'échantillon
sig=s(i:(i+t_tranche));
y = fft(sig,NFFT)/t_tranche;
y = 2*abs(y(1:NFFT/2+1));
y = y .^2;
y = 20 * log10(y);
f = [0:NFFT/2]/NFFT*fe;


subplot(313);
plot(f,y);
title('Densité d`énergie de la tranche avec 0-padding de 2000');
xlabel('Fréquence (Hz)');
ylabel('Densité en dB');

%print '../images/comp_0_padding.eps' -depsc -color;
matlab2tikz('myfile.tex', 'noSize', true); 