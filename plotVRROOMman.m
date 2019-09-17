%%% 3D plot of a primitive man at VRROOM
%% PATTON 27-June-2006
% all arguements are optional

function plotVRROOMman(trunkCenter,mirrorCenter,mirrorPitch)

if ~exist('trunkCenter');  trunkCenter=[0.4,-1.8,1.2];  end % not used yet
if ~exist('mirrorCenter'); mirrorCenter=[0,1.25,-.38]; end % not used yet
if ~exist('mirrorPitch');  mirrorPitch=60;  end              % degrees

%% head      
colormap('copper')
% plot3(0,0,0,'.'); hold on

%% trunk      
% trunkRadii=[.2 .4 .13];
% trunkCenter1=[.5 -1.8 .9];
trunkCenter1=[0 0 0.4];
trunkRadii=[.2 .13 .4];
ellipsoid(trunkCenter1(1),trunkCenter1(2),trunkCenter1(3), ...
           trunkRadii(1),trunkRadii(2),trunkRadii(3)); 

%% head      
% head=trunkCenter+[0,.5,0]; 
% head=trunkCenter+[0.5,-1.8,1.42]; 
head=trunkCenter+[0,0,0.88]; 
% headRadii=[.1 .13 .1];
headRadii=[.09 .09 .09];
ellipsoid(head(1),head(2),head(3), ...
          headRadii(1),headRadii(2),headRadii(3)); 

%% humerous      
% humerous=trunkCenter+[.14,.3,-.18]; 
% humerous=trunkCenter+[0.6, -1.55, 1.2]; 
humerous=trunkCenter+[0.1, 0.25, 0.7]; 
% humerousRadii=[.03 .03 .18];
humerousRadii=[.03 .18 .03];
ellipsoid(humerous(1),humerous(2),humerous(3), ...
          humerousRadii(1),humerousRadii(2),humerousRadii(3)); 
      
%% arm      
% arm=trunkCenter+[.14,.3,-.4]; 
% arm1=trunkCenter+[0.6, -1.55, 1.2]; 
arm1=trunkCenter+[0.1, 0.25, 0.7]; 
armRadii=[.03 .19 .03];
ellipsoid(arm1(1),arm1(2),arm1(3), ...
          armRadii(1),armRadii(2),armRadii(3)); 

%% VRROOM screen      
% plot3([-.8 .8 .8 -.8 -.8],  ...
%       [1 1 1.4 1.4 1],      ...
%       [0 0 -1.4 -1.4 0],      ...
%       'k', 'linewidth', 3); % 
% 
% campos([-1,1.1,.1])
% camup([0 1 0])
axis equal