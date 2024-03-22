clc;
close all;
clear all;

fs = 1000;
t = 0:1/fs:2;
ac = 1;
am = 1;
fc = 10;
fm = 1;

wc = 2*pi*fc;
wm = 2*pi*fm;

c = ac.*cos(wc.*t);
m = am.*sin(wm.*t);

b = 1;
s1 = ac.*cos(wc.*t +b.*m);
subplot(4,1,1);
plot(t,s1);
title("narrow band fm-04D4 ");
ylabel('amplitude');
xlabel("time");
colorbar off

%case 1 = wide band fm
b = 5;
s2 = ac.*cos(wc.*t +b.*m);
subplot(4,1,2);
plot(t,s2);
title("wide band fm");
ylabel('amplitude');
xlabel("time");    

%demodulation - narrow band fm
d = s1.* c;
d1 = fmdemod(s1,fc,fs,fc+2);
[b,a] = butter(2,2*fm/fs);
z = filter(b,a,d1);
subplot(4,1,3)
plot(t,z);
title("demodulation -narrow band fm");

%demodulation - wide band fm
d = s2.* c;
d2 = fmdemod(s2,fc,fs,fc+2);
[b,a] = butter(2,2*fm/fs);
z = filter(b,a,d2);
subplot(4,1,4)
plot(t,z);
title("demodulation - wide band fm");

suptitle("FM");