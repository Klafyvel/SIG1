x = sig1_sinus(5, 100, 40);
hold on
y_8 = quantifie(x, 8);
y_3 = quantifie(x, 3);


T = 0:1/100:(40-1)/100;

hold on;
plot(T,y_8,'x');
plot(T,y_3,'o');

legend('signal', 'echantillon 8 bits','echantillon 3 bits');