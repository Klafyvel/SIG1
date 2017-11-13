N = 15;
s = hanning(N);

fig = figure('Position', [0,0,500,200]);

%subplot(211);
%plot(s);
%title(['Fenêtre de Hanning N=' num2str(N)]);
%grid on;
%subplot(212);
NFFT = 2^nextpow2(N); % on calcule la taille 
% de l'échantillon pour faire du 0-pading
y = fft(s,NFFT);%/N;
y = abs(y(1:NFFT/2+1));
f = [0:NFFT/2]/NFFT;
plot(f,y);
grid on;
title(["Transformée de Fourier d'une fenêtre de Hanning, N=" num2str(N)]);
xlabel('$f$ (Hz)');

print fig '../images/hanning_tfd.tex' -dtikz -color '-S500,200';