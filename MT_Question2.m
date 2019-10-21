close all
clear all
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;
true_position= [0.5 0.5];
landmark4= [1 0;0 1;0 -1;-1 0];
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;

for i = 1:4
    r(i)=-1;
    while(r(i)<0)
        n=normrnd(0,sigman_2);
        r(i) = sqrt((true_position(1,1)-landmark4(i,1))^2+(true_position(1,2)-landmark4(i,2))^2)+n;
    end
end
x = linspace(-2,2);
y = linspace(-2,2);
[X,Y] = meshgrid(x,y);
for i=1:4
    u= X(:).^2/sigmaX_2+Y(:).^2/sigmaY_2;
    v(:,i) = sqrt((X(:)-landmark4(i,1)).^2+(Y(:)-landmark4(i,2)).^2);
    w(:,i) = ((r(i)-v(:,i)).^2)/sigman_2;
end
Gmap= u+w(:,1)+w(:,2)+w(:,3)+w(:,4);
Gmap= reshape(Gmap,[100 100]);
figure (1)
hold on
plot(true_position(1,1),true_position(1,2),'g+');
contour(X,Y,Gmap,'ShowText','on');
for i=1:4
    plot(landmark4(i,1),landmark4(i,2),'o');
    hold on 
end
grid on
xlabel('X') 
ylabel('Y')
legend('True position','MAP contours','Landmark 1','Landmark 2','Landmark 3','Landmark 4')
title('4 landmarks MAP contour')
% 2 landmarks
clear all
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;
true_position= [0.5 0.5];
landmark2= [1 0;-1 0];
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;

for i = 1:2
    r(i)=-1;
    while(r(i)<0)
        n=normrnd(0,sigman_2);
        r(i) = sqrt((true_position(1,1)-landmark2(i,1))^2+(true_position(1,2)-landmark2(i,2))^2)+n;
    end
end
x = linspace(-2,2);
y = linspace(-2,2);
[X,Y] = meshgrid(x,y);
for i=1:2
    u= X(:).^2/sigmaX_2+Y(:).^2/sigmaY_2;
    v(:,i) = sqrt((X(:)-landmark2(i,1)).^2+(Y(:)-landmark2(i,2)).^2);
    w(:,i) = ((r(i)-v(:,i)).^2)/sigman_2;
end
Gmap= u+w(:,1)+w(:,2);
Gmap= reshape(Gmap,[100 100]);
figure (3)
hold on
plot(true_position(1,1),true_position(1,2),'g+');
contour(X,Y,Gmap,'ShowText','on');
for i=1:2
    plot(landmark2(i,1),landmark2(i,2),'o');
    hold on 
end
grid on
xlabel('X') 
ylabel('Y')
legend('True position','MAP contours','Landmark 1','Landmark 2')
title('2 landmarks MAP contour')
% 3 landmarks
clear all
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;
true_position= [0.5 0.5];
landmark3= [cos(2*pi) sin(2*pi);cos(2*pi/3) sin(2*pi/3);cos(4*pi/3) sin(4*pi/3)];
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;

for i = 1:3
    r(i)=-1;
    while(r(i)<0)
        n=normrnd(0,sigman_2);
        r(i) = sqrt((true_position(1,1)-landmark3(i,1))^2+(true_position(1,2)-landmark3(i,2))^2)+n;
    end
end
x = linspace(-2,2);
y = linspace(-2,2);
[X,Y] = meshgrid(x,y);
for i=1:3
    u= X(:).^2/sigmaX_2+Y(:).^2/sigmaY_2;
    v(:,i) = sqrt((X(:)-landmark3(i,1)).^2+(Y(:)-landmark3(i,2)).^2);
    w(:,i) = ((r(i)-v(:,i)).^2)/sigman_2;
end
Gmap= u+w(:,1)+w(:,2)+w(:,3);
Gmap= reshape(Gmap,[100 100]);
figure (2)
hold on
plot(true_position(1,1),true_position(1,2),'g+');
contour(X,Y,Gmap,'ShowText','on');
for i=1:3
    plot(landmark3(i,1),landmark3(i,2),'o');
    hold on 
end
grid on
xlabel('X') 
ylabel('Y')
legend('True position','MAP contours','Landmark 1','Landmark 2','Landmark 3')
title('3 landmarks MAP contour')
% 1 landmark
clear all
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;
true_position= [0.5 0.5];
landmark1= [1 0];
sigman_2=0.3^2;
sigmaX_2= 0.25^2;
sigmaY_2= 0.25^2;

for i = 1:1
    r(i)=-1;
    while(r(i)<0)
        n=normrnd(0,sigman_2);
        r(i) = sqrt((true_position(1,1)-landmark1(i,1))^2+(true_position(1,2)-landmark1(i,2))^2)+n;
    end
end
x = linspace(-2,2);
y = linspace(-2,2);
[X,Y] = meshgrid(x,y);
for i=1:1
    u= X(:).^2/sigmaX_2+Y(:).^2/sigmaY_2;
    v(:,i) = sqrt((X(:)-landmark1(i,1)).^2+(Y(:)-landmark1(i,2)).^2);
    w(:,i) = ((r(i)-v(:,i)).^2)/sigman_2;
end
Gmap= u+w(:,1);
Gmap= reshape(Gmap,[100 100]);
figure (4)
hold on
plot(true_position(1,1),true_position(1,2),'g+');
contour(X,Y,Gmap,'ShowText','on');
for i=1:1
    plot(landmark1(i,1),landmark1(i,2),'o');
    hold on 
end
grid on
xlabel('X') 
ylabel('Y')
legend('True position','MAP contours','Landmark 1')
title('1 landmark MAP contour')