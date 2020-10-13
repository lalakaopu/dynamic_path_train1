function Pz=dongtai(v,range,dstartx,dstarty,vx,vy)
global h1
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
axis([0 100 0 100]);


end 