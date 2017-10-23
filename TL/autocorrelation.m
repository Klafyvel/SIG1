%calcule l'autocorrélation d'un signal quelconque et la trace

function [x,autocorr] = autocorrelation(sig, fe)
    long = length(sig);
    autocorr = zeros(2*long,1);
    for n = -long:long
        for i = 1:long
            if (n+i>0) && (i+n <= long) % Pour ne pas sortir du tableau.
                autocorr(n+long) = autocorr(n+long) + sig(i)*sig(i+n);
            end
        end
    end
    Te = 1/fe;
    x = [-(long-1/2)*Te : Te : (long-1/2)*Te];
end