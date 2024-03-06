clear all;
close all;

t = -5:0.01:5;

fm=1;
fc=10;

m = sin(2*pi*fm*t);
c = sin(2*pi*fc*t);

s = m.*c;

subplot(4,1,1);
plot(t,m);
xlabel("");
ylabel("");
title("Message");

subplot(4,1,2);
plot(t,c);
xlabel("");
ylabel("");
title("Carrier");

subplot(4,1,3);
plot(t,s);
xlabel("");
ylabel("");
title("Modulated");

d = s.*c;

[a,b]=butter(5,fm/fc/2);

dmod = filter(a,b,d);

subplot(4,1,4);
plot(t,dmod);
xlabel("");
ylabel("");
title("Demodulated");
