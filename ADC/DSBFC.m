clear all;
close all;

fs=1000;
T=1/fs;
t=0:T:pi;  %Time Period

fm=1;
fc=100;

am=0.5;
ac=1;

m=(am).*cos(2.*pi.*fm.*t);  %Message Signal
c=(ac).*cos(2.*pi.*fc.*t);  %Carrier Signal

s0=(ac+m).*cos(2.*pi.*fc.*t);  %Under Modulated Signal

subplot(6,1,1);
plot(t,m);
title("Message")
subplot(6,1,2);
plot(t,c);
title("Carrier")
subplot(6,1,3);
plot(t,s0);
title("Under Modulation")

am=1;
ac=1;

m=(am).*cos(2.*pi.*fm.*t);  %Message Signal

s=(ac+m).*cos(2.*pi.*fc.*t);  %Critical Modulated Signal

subplot(6,1,4);
plot(t,s);
title("Critical Modulation")

am=1;
ac=0.5;

m=(am).*cos(2.*pi.*fm.*t);  %Message Signal

s1=(ac+m).*cos(2.*pi.*fc.*t);  %Over Modulated Signal

subplot(6,1,5);
plot(t,s1);
title("Over Modulation")

d = s0.*c;

[a,b]=butter(2,fm/fc/2);

dmod = filter(a,b,d);

subplot(6,1,6);
plot(t,dmod);
xlabel("");
ylabel("");
title("Demodulated Signal");