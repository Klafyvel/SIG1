figure;
[s,fe] = audioread('chat.wav');
s = s(:,1);

long = length(s);
voise = zeros(long,2);
taille_fen = 0.1*fe; % fen�tre de 100ms
fmin = 80;
fmax = 1000;
epsilon = 1/10;
for i = 1:taille_fen:floor(long-taille_fen)-1
    [voise(i,1), voise(i,2)] = detecte_voise(s(i:i+taille_fen),epsilon, ceil(fe/fmax), floor(fe/fmin)); 
end
disp(fe ./ voise(1:taille_fen:floor(long-taille_fen)-1, 2));
t = (1:taille_fen:floor(long-taille_fen)-1)/fe;
plot(t,voise(1:taille_fen:floor(long-taille_fen)-1, 1));