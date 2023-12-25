clear all;
close all;
t1=-2:0.01:2;
x=exp(-2.*t1).*(t1>=0) + 0.*(t1<0);
t2=-1:0.01:3;
h=1.*(t2>=0) + 0.*(t2<0);
y=conv(x,h);
a=min(t1)+min(t2);
b=max(t1)+max(t2);
t3=a:0.01:b;

subplot(3,1,1);
plot(t1,x);
xlabel("time t");
ylabel("amplitude x");
title("input signal(4D3)");
subplot(3,1,2);
plot(t2,h);
xlabel("time t");
ylabel("amplitude x");
title("system response(4D3)");
subplot(3,1,3);
plot(t3,y)
xlabel("time t");
ylabel("amplitude x");
title("convloution(4D3)");