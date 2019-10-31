clear;
clc;
EPS=round(rand(498,1)*1000);
DPS=EPS-(150-round(rand(498,1)*100));
PEPS=EPS+(5-round(rand(498,1)*10));
E_P=round(rand(498,1)*100);
P_E=round(rand(498,1)*10);
Inputs=[EPS,PEPS,DPS,E_P,P_E]';
T=round(rand(498,1)*1000);
Targets=T';
save('test.mat','Inputs','Targets');
disp 'data saved...';
%then run GMDH and After that :
%Targets=Outputs+(5-round(rand(498,1)*10))';
%save('test.mat','Inputs','Targets');