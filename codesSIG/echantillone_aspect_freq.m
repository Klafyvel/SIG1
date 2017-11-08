f = 500;
N_periode = 20;

fe = 2*f + 1;
s1 = sig1_sinus(f, fe, N_periode*(fe)/f);
t1 = 0:1/(fe):N_periode/f - 1/fe;
figure;
plot(t1,s1, '+');
title(['Signal sinus de frequence ' num2str(f) 'Hz échantilloné à ' num2str(fe) 'Hz']);
xlabel('Temps (s)');

figure;
fe = 40*f;
s1 = sig1_sinus(f, fe, N_periode*(fe)/f);
t1 = 0:1/fe:N_periode/f - 1/fe;
figure;
plot(t1,s1, '+');
title(['Signal sinus de frequence ' num2str(f) 'Hz échantilloné à ' num2str(fe) 'Hz']);
xlabel('Temps (s)');

figure;
fe = 1/3*f;
s1 = sig1_sinus(f, fe, N_periode*(fe)/f);
t1 = 0:1/fe:N_periode/f - 1/(fe);
figure;
plot(t1,s1, '+');
title(['Signal sinus de frequence ' num2str(f) 'Hz échantilloné à ' num2str(fe) 'Hz']);
xlabel('Temps (s)');