function circle(x,y,range)

Alpha=0:pi/1000:2*pi;
X1=range*cos(Alpha)+x;
Y1=range*sin(Alpha)+y;
figure(1);
plot(X1,Y1);
hold on
end