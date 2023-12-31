N=5;
x1=[1,2,-1,-3,2];
x2=[2,-1,3,-4,3];
a1=2;
a2=3;
n=0:1:N-1;
x3=a1*x1+a2*x2;
y01=n.*(x3);
y1=n.*(x1);
y2=n.*(x2);
y02=a1*y1+a2*y2;
disp(' the otput sequence y01 is :');
disp(y01);
disp('the output sequence y02 is:');
disp(y02);
if(y01==y02)
    disp('y01==y02 .hence the system is linear');
else
    disp('y01~=y02 .hence the system is non linear');
end

subplot(3,2,1);
stem(n,x1);
xlabel("time");
ylabel("amplitude");
title(" 1st input signal(4D3)");
subplot(3,2,2);
stem(n,x2);
xlabel("time");
ylabel("amplitude");
title(" 2nd input signal(4D3)");
subplot(3,2,3);
stem(n,y1);
xlabel("time");
ylabel("amplitude");
title(" 1s input response(4D3)");
subplot(3,2,4);
stem(n,y1);
xlabel("time");
ylabel("amplitude");
title(" 2nd input signal(4D3)");
subplot(3,2,5);
stem(n,y01);
xlabel("time");
ylabel("amplitude");
title(" total weighted sum of response(4D3)");
subplot(3,2,6);
stem(n,y02);
xlabel("time");
ylabel("amplitude");
title(" weighted sum of individual response(4D3)");