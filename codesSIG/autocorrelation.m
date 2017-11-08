%calcule l'autocorrélation d'un signal quelconque et la trace

function autocorr = autocorrelation(sig)
    long = length(sig);
    autocorr = zeros(2*long,1);
    for n = -long:long
        for i = 1:long
            if (n+i>0) && (i+n <= long)
                autocorr(n+long) = autocorr(n+long) + sig(i)*sig(i+n);
            end
        end
    end
end