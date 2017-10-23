fe = 100;
N = 40;
f0 = 5;


x = sig1_sinus(f0, fe, N);
hold on
y_8 = quantifie(x, 8);
y_3 = quantifie(x, 3);


Te = 1 / fe;
T = 0:Te:(N-1)*Te;

plot(T, y_3, 'o');
plot(T, y_8, 'x');
legend('signal', 'échantillon 3 bits', 'échantillon 8 bits');

b_8 = puissance(x-y_8);
disp(b_8);
b_3 = puissance(x-y_3);
disp(b_3);