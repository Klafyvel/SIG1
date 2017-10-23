[s,fe] = audioread('voix.wav');

t = 0:1/fe:(length(s)-1)*1/fe;
s1 = quantifie(s(:,1), 3);
s2 = quantifie(s(:,1), 8);

plot(t, s(:,1));
hold on
plot(t, s1, 'x');
plot(t, s2, '+');
title('Comparaison de différents échantillonages du son.');
xlabel('Temps (s)');
legend('signal', 'signal échantilloné 3 bits', 'signal échantilloné 8 bits');