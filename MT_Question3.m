clear all
close all
% Create true wt
r1 = -1; r2 = 0.5; r3 = 1;
w_true = [1 r1+r2+r3 r1*r2+r1*r3+r2*r3 r1*r2*r3]';
sigma_noise=1;
%v=mvnrnd(0,sigma_noise);
N=10;
I= eye(4,4);
gn=50;
gama=logspace(-4,4,gn);
for m=1:gn
    for p=1:100
        v=mvnrnd(0,sigma_noise,N);
        for i=1:N
            a=1;
            b=-1;
            x(i,:)=(a-b).*rand(1,1)+b;
        end
        y=polyval(w_true,x)+v;
        D(:,1)=x;
        D(:,2)=y;
        f=inv(x'*x+(sigma_noise^(2))*inv(gama(m)^2)*I);
        g=D(:,1)'*D(:,2);
        wmap=diag(f.*g);
        L(m,p) = norm(w_true - wmap)^2;
        
         
    end
end

L=L';
L=sort(L);
axis equal
plot(log10(gama),log10(L(1,:)))
hold on
plot(log10(gama),log10(L(25,:)))
hold on
plot(log10(gama),log10(L(50,:)))
hold on
plot(log10(gama),log10(L(75,:)))
hold on
plot(log10(gama),log10(L(100,:)))
hold on
xlabel('log(Gamma)') 
ylabel('log(L2 Distance between true vector and MAP estimate vector)')
legend("Minimum of Squared Error","25% of Squared Error","50% of Squared Error","75% of Squared Error","Maximum of Squared Error");
    