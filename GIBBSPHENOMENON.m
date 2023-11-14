t=-3:0.01:3;
w=2*pi;
c0=zeros(1,length(t));
for i = 1:4
    x=c0;
    N=input("Enter no of Oscillations:");
    for n=1:N
        cn=(2/n*pi)*sin(n*pi/2);
        cnn=cn;
        x=x+(cn)*exp(1i*n*w.*t)+(cnn)*exp(-1i*n*w.*t);
    end
    subplot(2,2,i);
    plot(t,x);
    xlabel("time");
    ylabel("Amplitude");
    title("Gibbs Phenomenon for N=",num2str(N));
    grid
end
