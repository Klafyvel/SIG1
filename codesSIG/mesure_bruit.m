x = sig1_sinus(5, 100, 40);
hold on
y_8 = quantifie(x, 8);
y_3 = quantifie(x, 3);

b_8 = energie(x-y_8)/length(x);
disp(b_8);
b_3 = energie(x-y_3)/length(x);
disp(b_3);