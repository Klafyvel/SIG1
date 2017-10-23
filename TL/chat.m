fe = 16000;
cha = audioread('chat.wav');
l = length(cha);
DUREE_ECH = [0.01 0.06 0.16 0.64];
N_MESURE = 4;
for i = 1:4
    figure;
    taille_ech = floor(DUREE_ECH(i)*fe);
    for j = 1:N_MESURE
        subplot(100*(N_MESURE)+20+2*j);
        b = floor(j*l/N_MESURE);
        e = b + taille_ech;
        [t,a] = autocorrelation(cha(b:e), fe);
        plot(t,a);
        title(['Autocorr�lation sur ' num2str(DUREE_ECH(i)) ' s']);
        xlabel('\tau (s)');
        subplot(100*(N_MESURE)+20+2*j-1);
        plot(t(length(t)/2+1:length(t))+b/fe, cha(b:e));
        title(['Signal "chat" fe=' num2str(fe) 'Hz']);
        xlabel('t (s)');
    end
end
