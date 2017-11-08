% function trace_dse(fichier,taille de tranche, indice de debut de tranche, taille_fft)
% Trace la DSE d'une tranche du signal d'un fichier pass� en param�tre.
% avec les fr�quences en abscisses et les ordonn�es en dB. On fait du
% zero-padding jusqu'� taille_fft.
% Exemples d'utilisation:
% signal = trace_dse('son.wav', 50, 2000);

function trace_dse(fichier, t_tranche, i,taille_fft)
    [s,fe] = audioread(fichier);
    NFFT = 2^nextpow2(t_tranche+taille_fft); % on calcule la taille 
    % de l'�chantillon pour faire du 0-pading
    sig=s(i:(i+t_tranche));
    y = fft(sig,NFFT)/t_tranche;
    y = 2*abs(y(1:NFFT/2+1));
    y = y .^2;
    y = 20 * log10(y);
    f = [0:NFFT/2]/NFFT*fe;
    
    figure;
    clf;
    subplot(211);
    plot(sig);
    title('Signal analys�.');
    xlabel('Temps (s)');
    hold off;
    
    subplot(212);
    plot(f,y);
    title('Densit� d`�nergie de la tranche');
    xlabel('Fr�quence (Hz)');
    ylabel('Densit� en dB');
    hold off;
end