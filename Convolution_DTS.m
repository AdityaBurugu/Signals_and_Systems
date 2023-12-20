clear all;
close all;
n1=-1:1:2;
x=[1 2 3 -1];
n2=0:1:4;
h=[2 -1 -2 4 3];
y=conv(x,h);
a=min(n1)+min(n2);
b=max(n1)+max(n2);
n3=a:1:b;

subplot(3,1,1);
stem(n1,x);
xlabel("time t");
ylabel("amplitude x");
title("input signal(4D4)");
subplot(3,1,2);
stem(n2,h);
xlabel("time t");
ylabel("amplitude x");
title("system response(4D4)");
subplot(3,1,3);
stem(n3,y)
xlabel("time t");
ylabel("amplitude x");
title("convloution(4D4)");