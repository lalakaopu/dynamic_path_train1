function flag=isOnTheObs(point_now,obs_circlr_Center,obs_circle_Range)
global dongp
if ((point_now(1)-obs_circlr_Center(1))^2+(point_now(2)-obs_circlr_Center(2))^2-obs_circle_Range^2<0)||...
        ((point_now(1)-dongp(1))^2+(point_now(2)-dongp(2))^2-dongp(3)^2<0)
    flag=true;
else
    flag=false;
end
end