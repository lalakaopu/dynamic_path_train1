function Pt8=point8(rout_now,endXY,search_range)
Alpha=atan((endXY(2)-rout_now(2))/(endXY(1)-rout_now(1)) );

point1=[(rout_now(1)+search_range*cos(Alpha)),(rout_now(2)+search_range*sin(Alpha))];
point2=[(rout_now(1)+search_range*cos(Alpha+1/4*pi)),(rout_now(2)+search_range*sin(Alpha+1/4*pi))];
point3=[(rout_now(1)+search_range*cos(Alpha+1/2*pi)),(rout_now(2)+search_range*sin(Alpha+1/2*pi))];
point4=[(rout_now(1)+search_range*cos(Alpha+3/4*pi)),(rout_now(2)+search_range*sin(Alpha+3/4*pi))];
point5=[(rout_now(1)+search_range*cos(Alpha+pi)),(rout_now(2)+search_range*sin(Alpha+pi))];
point6=[(rout_now(1)+search_range*cos(Alpha+5/4*pi)),(rout_now(2)+search_range*sin(Alpha+5/4*pi))];
point7=[(rout_now(1)+search_range*cos(Alpha+6/4*pi)),(rout_now(2)+search_range*sin(Alpha+6/4*pi))];
point8=[(rout_now(1)+search_range*cos(Alpha+7/4*pi)),(rout_now(2)+search_range*sin(Alpha+7/4*pi))];

Pt8=[point1;point2;point3;point4;point5;point6;point7;point8];

for ii=1:8
    if Pt8(ii,:)<10^-6
        Pt8(ii,:)=[0,0];
    else
        Pt8(ii,:)=roundn(Pt8(ii,:),-4);
    end
    
end

end