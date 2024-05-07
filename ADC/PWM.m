close all;
clear all;

fs=1000;
T=1/fs;
t=0:T:2*pi;  %Time Period

fc = 10;
fm = 1;

c = sawtooth(2*pi*fc.*t);
m=cos(2*pi*fm.*t)+0.5;

n=length(c);
for i=1:n
 if (m(i)-c(i)>=0)
 pwm(i)=1;
 elseif (m(i)-c(i)<=0)
 pwm(i)=0;
 end
end

subplot(4,1,1);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
axis([0 1 min(m)-0.5 max(m)+0.5]); 

subplot(4,1,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
axis([0 1 min(c)-0.5 max(c)+0.5]);

subplot(4,1,3);
plot(t,pwm);
xlabel('Time');
ylabel('Amplitude');
title('PWM Signal');
axis([0 1 min(pwm)-0.5 max(pwm)+0.5]); 

demoddi=demod(pwm,fc,fs,'pwm');
subplot(4,1,4);
plot(demoddi);
title('PWM Demod');
xlabel('Time');
ylabel('Amplitude');
