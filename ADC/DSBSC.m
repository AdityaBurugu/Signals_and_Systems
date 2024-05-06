clear all;
close all;

t = -5:0.01:5;  %Time Period

fm=1;
fc=10;

m = sin(2*pi*fm*t);  %Message Signal
c = sin(2*pi*fc*t);  %Carrier Signal

s = m.*c;  %DSBSC Modulated Signal

subplot(4,1,1);
plot(t,m);
ylabel("time");
ylabel("amplitude");
title("Message Signal");

subplot(4,1,2);
plot(t,c);
ylabel("time");
ylabel("amplitude");
title("Carrier Signal");

subplot(4,1,3);
plot(t,s);
ylabel("time");
ylabel("amplitude");
title("Modulated Signal");

d = s.*c;

[a,b]=butter(5,fm/fc/2);

dmod = filter(a,b,d);

subplot(4,1,4);
plot(t,dmod);
ylabel("time");
ylabel("amplitude");
title("Demodulated Signal");