X=input('Enter Formula in terms of n: ','s');

for n=0:1:199
    if n==0
        Xninline=inline(X,'n');
        xofn(n+1)=feval(Xninline,n);
        yofn(n+1)=(-1.5*xofn(n+1))+(2*xofn(n+2))-(0.5*xofn(n+3));
    elseif (n>0) && (n<198)
        Xninline=inline(X,'n');
        xOfN(n+1)=feval(Xninline,n);
        yofn(n+1)=(0.5*xofn(n+2))-(0.5*xofn(n));
    else
        Xninline=inline(X,'n');
        xofn(n+1)=feval(Xninline,n);
        yofn(n+1)=(1.5*xofn(n+1))-(2*xofn(n))+(0.5*xofn(n-1));
    end
end
n=0:199;
plot(n, xofn)
hold on
plot(n, yofn)
legend('x of n', 'y of n')
xlabel('n')
ylabel('x(n) and y(n)')
title('Machine Problem 5')