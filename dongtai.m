function Pz=dongtai(v,range,dstartx,dstarty,vx,vy)
global h1
global h2
global h3
persistent pstartx;
persistent pstarty;

if isempty(pstartx)
    pstartx=dstartx;
end

if isempty(pstarty)
    pstarty=dstarty;
end

pstartx=pstartx+v*vx;
pstarty=pstarty+v*vy;

Pz=[pstartx,pstarty,range];

Alpha=0:pi/1000:2*pi;

x1=range*cos(Alpha)+pstartx;
y1=range*sin(Alpha)+pstarty;

h1=plot(x1,y1,'k');

%% aid trangle
px(1)=pstartx;
px(2)=pstartx-5;
px(3)=pstartx+5;
py(1)=pstarty+sqrt(3)*5-3;
py(2)=pstarty-3;
py(3)=pstarty-3;

h2=patch(px,py,[0.1 0.2 0.3]);
axis([0 200 0 200]);



end 