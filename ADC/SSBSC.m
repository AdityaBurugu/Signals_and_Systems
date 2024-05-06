clear all;
close all;

fm=10;
fc=100;
fs=1000;
t=0:1/fs:1; %Time Period

m=cos(2*pi*fm.*t);  %Message Signal with 0 phase shift
mc=sin(2*pi*fm.*t); %Message Signal with 90 phase shift

c=cos(2*pi*fc.*t);  %Carrier Signal with 0 phase shift
cc=sin(2*pi*fc.*t); %Carrier Signal with 90 phase shift

fx=m.*c;    %DSBSC Signal
fy=mc.*cc;  %DSBSC Signal

s1 = fx-fy; %LSB Signal
s2 = fx+fy; %USB Signal

subplot(3,3,1);
plot(t,m);
xlabel("time");
ylabel("amplitude");
title("Message Signal-4D4");


subplot(3,3,2);
plot(t,mc);
xlabel("time");
ylabel("amplitude");
title("Message Signal with phaseshift-4D4");

subplot(3,3,3);
plot(t,c);
xlabel("time");
ylabel("amplitude");
title("Carrier Signal-4D4");

subplot(3,3,4);
plot(t,cc);
xlabel("time");
ylabel("amplitude");
title("Carrier Signal with phaseshift-4D4");

subplot(3,3,5);
plot(t,fx);
xlabel("time");
ylabel("amplitude");
title("DSBSC Signal(fx)");

subplot(3,3,6);
plot(t,fx);
xlabel("time");
ylabel("amplitude");
title("DSBSC Signal(fy)");

subplot(3,3,7);
plot(t,s1);
xlabel("time");
ylabel("amplitude");
title("Lower Side Band Signal-4D4");

subplot(3,3,8);
plot(t,s2);
xlabel("time");
ylabel("amplitude");
title("Upper Side Band Signal-4D4");

d=s1.*cos(2*pi*fc.*t);
[b,a]=butter(5,fm/(fs/2));
demod=filter(b,a,d);

subplot(3,3,9);
plot(t,demod);
xlabel("time");
ylabel("amplitude");
title("Demodulated Signal-4D4");