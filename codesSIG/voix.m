s = wavread('voix.wav');
fe = 44100;
t = 0:1/fe:(length(s)-1)*1/fe;
plot(t,s(:,1));
disp(length(s(:,1)));
hold on;
title('Chronogramme enregistré.');
xlabel('t(s)');
ylabel('Signal');

y_8 = quantifie(s(:,1), 8);


y_3 = quantifie(s(:,1), 3);
y_2 = quantifie(s(:,1), 2);

% sound(s, 44100);
% sound(y_8, 44100);
% sound(y_3, 44100);
% sound(y_2, 44100);