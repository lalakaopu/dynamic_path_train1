%% dynamic obstacle avoidance path plannning 
%second trying

clc
clear all
close all

%% paramenter initial

global dongp;
dongp=[80,0,10];
global dongp1;
dongp1=[150,150,10];
global h1;
global h2;
global h3;
global h4
global h5
format short
startXY=[0 0];
endXY=[150 150];
search_range=4;


obs_circlr_Center=[40 50];
obs_circle_Range=20;

%% still obs
r=rectangle('position',[obs_circlr_Center(1)-obs_circle_Range,obs_circlr_Center(2)-obs_circle_Range,...
    obs_circle_Range*2,obs_circle_Range*2]...
    ,'Curvature',[1 1]);
figure(1);
hold on 
r.FaceColor=[0 0 0];%% wrong hear Facecolo
axis([0 200 0 200]);
rout_now=startXY;
rout_length=0;
rout=[startXY];

%%  main
tic;
ii=1;
while ( sqrt((endXY(1)-rout_now(1))^2+(endXY(2)-rout_now(2))^2)>=2*search_range )
    Pt8=point8(rout_now,endXY,search_range);
    routLength=inf;
    for n=1:8
        if (~isOnTheObs(Pt8(n,:),obs_circlr_Center,obs_circle_Range))
            Pt18=point8(Pt8(n,:),endXY,search_range);
            for m=1:8
                length=sqrt( (Pt18(m,1)-endXY(1))^2+(Pt18(m,2)-endXY(2))^2);
                if length<routLength
                    routLength=length;
                    preRout=Pt8(n,:);
                end
            end
        end
    end
rout_now=preRout;
rout=[rout;rout_now];
rout_length=rout_length+search_range;
circle(rout_now(1),rout_now(2),3);
if ii>22
    
    dongp=dongtai(3,12,80,0,-0.1,0);
else
    dongp=dongtai(3,12,80,0,0,1);
end
ii=ii+1;
dongp1=dongtai2(2,12,150,150,0.5,0.5);
pause(0.1);
delete(h1);
delete(h2);
delete(h3);
delete(h4);
delete(h5);
end

%% result output
rout=[rout;endXY];
rout_length=rout_length+sqrt((endXY(1)-rout_now(1))^2+(endXY(2)-rout_now(2))^2);
routPlot(rout);