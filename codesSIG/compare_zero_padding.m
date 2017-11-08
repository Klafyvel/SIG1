fichier = 'chat.wav';
i = 30000;
t_tranche = 1000;
[s,fe] = audioread(fichier);
NFFT = 2^nextpow2(t_tranche); % on calcule la puissance de 2 la taille de l'�chantillon
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
title('Signal analys�.');
xlabel('Temps (s)');
hold off;
    
subplot(312);
plot(f,y);
title('Densit� d`�nergie de la tranche sans 0-padding');
xlabel('Fr�quence (Hz)');
ylabel('Densit� en dB');
hold off;

sig = zero_padding(sig, 5000);
t_tranche = length(sig);
NFFT = 2^nextpow2(t_tranche); % on calcule la puissance de 2 la taille de l'�chantillon
sig=s(i:(i+t_tranche));
y = fft(sig,NFFT)/t_tranche;
y = 2*abs(y(1:NFFT/2+1));
y = y .^2;
y = 20 * log10(y);
f = [0:NFFT/2]/NFFT*fe;


subplot(313);
plot(f,y);
title('Densit� d`�nergie de la tranche avec 0-padding de 5000');
xlabel('Fr�quence (Hz)');
ylabel('Densit� en dB');
hold off;