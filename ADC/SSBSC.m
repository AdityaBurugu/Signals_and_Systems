fm=10;
fc=100;
fs=1000;
t=0:1/fs:1;
%am=5;
%ac=15;
m=cos(2*pi*fm.*t);
mc=sin(2*pi*fm.*t);
s1=m.*cos(2*pi*fc.*t)+mc.*sin(2*pi*fc.*t);
s2=m.*cos(2*pi*fc.*t)-mc.*sin(2*pi*fc.*t);

subplot(5,1,1);
plot(t,m);
xlabel("time");
ylabel("amplitude");
title("message signal-4D4");


subplot(5,1,2);
plot(t,mc);
xlabel("time");
ylabel("amplitude");
title("message signal with phaseshift-4D4");

subplot(5,1,3);
plot(t,s1);
xlabel("time");
ylabel("amplitude");
title("lower sideband signal-4D4");

subplot(5,1,4);
plot(t,s2);
xlabel("time");
ylabel("amplitude");
title("upper sideband signal-4D4");

d=s1.*cos(2*pi*fc.*t);
[b,a]=butter(5,fm/(fs/2));
demod=filter(b,a,d);


subplot(5,1,5);
plot(t,demod);
xlabel("time");
ylabel("amplitude");
title("demodulated signal-4D4");
