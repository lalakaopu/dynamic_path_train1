function Pz2=dongtai2(v2,range2,dstartx,dstarty,vx,vy)
persistent pstartx1;
persistent pstarty1;
global h4
global h5
if isempty(pstartx1)
    pstartx1=dstartx;
end

if isempty(pstarty1)
    pstarty1=dstarty;
end

pstartx1=pstartx1-v2*vx;
pstarty1=pstarty1-v2*vy;

Pz2=[pstartx1,pstarty1,range2];

Alpha=0:pi/1000:2*pi;

x1=range2*cos(Alpha)+pstartx1;
y1=range2*sin(Alpha)+pstarty1;

h4=plot(x1,y1,'k');

%% aid trangle
px(1)=pstartx1;
px(2)=pstartx1-5;
px(3)=pstartx1+5;
py(1)=pstarty1+sqrt(3)*5;
py(2)=pstarty1;
py(3)=pstarty1;

h5=patch(px,py,[0.1 0.2 0.3]);
axis([0 200 0 200]);



end