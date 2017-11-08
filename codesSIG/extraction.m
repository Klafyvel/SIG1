c = 50718
[s,fe] = wavread('voix.wav');
s_1 = s(1:c,1);
s_2 = s(c:98304,1);

wavwrite(s_1, fe, 'mot1.wav');
wavwrite(s_2, fe, 'mot2.wav');