N = 15;
s = hanning(N);

subplot(211);
plot(s);
title(['Fen�tre de Hanning N=' num2str(N)]);
subplot(212);
NFFT = 2^nextpow2(N); % on calcule la taille 
% de l'�chantillon pour faire du 0-pading
y = fft(s,NFFT)/N;
y = 2*abs(y(1:NFFT/2+1));
f = [0:NFFT/2]/NFFT;
plot(f,y);
title('Transform�e de Fourrier');