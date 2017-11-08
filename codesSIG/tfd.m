% function tfd(signal,taille de tranche, indice de debut de tranche, taille_fft, fenetre)
% Trace la TFD d'une tranche du signal d'un fichier passé en paramètre.
% avec les fréquences en abscisses. On fait du
% zero-padding jusqu'à taille_fft et on pondère par la fenetre passée en
% paramètre. Par défaut c'est un rectangle.
% Exemples d'utilisation:
% signal = tfd(s, 50, 2000, 5000);

function tfd(s, t_tranche, i,taille_fft, fenetre, affiche=true)
    NFFT = 2^nextpow2(t_tranche+taille_fft); % on calcule la taille
    % de l'échantillon pour faire du 0-pading
    sig = s(i:(i+t_tranche));
    if (strcmp(fenetre,'hanning'))
        sig = sig .* hanning(length(sig))';
    elseif (strcmp(fenetre, 'hamming'))
        sig = sig .* hamming(length(sig))';
    elseif (strcmp(fenetre, 'blackman'))
        sig = sig .* blackman(length(sig))';
    end
    y = fft(sig,NFFT)/t_tranche;
    y = 2*abs(y(1:NFFT/2+1));
    %y = 20 * log10(y);
    f = [0:NFFT/2]/NFFT;

	if affiche
		figure;
		clf;
		subplot(211);
		plot(sig);
		title('Signal analysé.');
		xlabel('Temps (s)');
		hold off;

		subplot(212);
	end
    plot(f,y);
    title(['TFD de la tranche, fenêtre ' fenetre ' zero-padding : ' num2str(taille_fft)]);
    xlabel('Fréquence (Hz)');
	if affiche
		hold off;
	end
end
