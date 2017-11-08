% function [voise, ecart] = detecte_voise(s, epsilon, mini, maxi)
% D�tecte si un signal s est vois� ou non, avec une marge d'erreur relative 
% epsilon dans l'autocorr�lation de . mini et maxi donnent l'indice minimum 
% et l'indice maximum de recherche du premier pic .Renvoie voise, un 
% bool�en indiquant si le signal est vois�, et ecart un entier qui donne
% l'�cart entre le pic principal et le premier pic. 


function [voise, ecart] = detecte_voise(s, epsilon, mini, maxi)
    a = autocorrelation(s);
    long = length(a);
    a = a(long/2:long);
    long = length(a);
    energie = a(1);
    maximum_i = 1;
    maximum = 0;
    for i = max(mini,1):min(maxi, long)
        if a(i) > maximum
            maximum_i = i;
            maximum = a(i);
        end
    end
    voise = 0;
    if (abs(a(maximum_i)- energie/long*(long-maximum_i)) <= epsilon * energie/long*(long-maximum_i))
        voise = 1;
    end
    ecart = maximum_i;
end