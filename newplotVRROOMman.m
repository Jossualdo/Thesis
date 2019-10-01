%new body plotvrroomman
function newplotVRROOMman(trunkCenter,choice)
if ~exist('trunkCenter');  trunkCenter=[0.4,-1.8,1.2];  end % not used yet
% head      
colormap('copper')
head=trunkCenter+[0.00586,-0.0139,0.15]; 
% headRadii=[.1 .13 .1];
headRadii=[.0779 .04 .1];
[xe, ye, ze]=ellipsoid(head(1),head(2),head(3), headRadii(1),headRadii(2),headRadii(3)); 
surf(xe, ye, ze,'FaceAlpha',0.1); hold on
%trunk
xCalc = [-0.08761 -0.08761 0.08053 0.08053 0.1889 0.1889 -0.1772 -0.1772];
yCalc = [0.0074 -0.07 -0.065 0.0065 0.0074 -0.046 -0.046 0.0074];
zCalc = [-0.53 -0.53 -0.53 -0.53 0 0 0 0];
fill3(xCalc([1 2 3 4]), yCalc([1 2 3 4]), zCalc([1 2 3 4]),1,'FaceAlpha',0.1); hold on %bottom
fill3(xCalc([5 6 7 8]), yCalc([5 6 7 8]), zCalc([5 6 7 8]),1, 'FaceAlpha',0.1); hold on %up
fill3(xCalc([3 4 5 6]), yCalc([3 4 5 6]), zCalc([3 4 5 6]),1, 'FaceAlpha',0.1); hold on %right
fill3(xCalc([1 2 7 8]), yCalc([1 2 7 8]), zCalc([1 2 7 8]),1, 'FaceAlpha',0.1); hold on %left
fill3(xCalc([1 4 5 8]), yCalc([1 4 5 8]), zCalc([1 4 5 8]),1, 'FaceAlpha',0.1); hold on %back
fill3(xCalc([2 3 6 7]), yCalc([2 3 6 7]), zCalc([2 3 6 7]),1,'FaceAlpha',0.1); hold on %front

choice_b=table2array(choice);
L=length(choice_b(:,1));
n=25;
% code to store all the points of all the parts of the body in three columns
% bodyparts=zeros(n*L,3);
% for location=1:25
%     for i=1:3
%         column = 2+(4*(location-1))+i;
%         if(location==1)
%             bodyparts(:,i) = vertcat(choice_b(:,column),zeros((length(bodyparts(:,1))-L),1));
%         else
%             bodyparts(:,i) = vertcat(bodyparts(1:(location-1)*L,i),choice_b(:,column),zeros((length(bodyparts(:,1))-(location*L)),1));
%         end
%     end
% end
bodyparts0=zeros(25,3);
for location=1:25
    for i=1:3
        column = 2+(4*(location-1))+i;
        if(location==1)
            bodyparts0(:,i) = vertcat(choice_b(1,column),zeros(n-1,1));
        else
            bodyparts0(:,i) = vertcat(bodyparts0(1:(location-1),i),choice_b(1,column),zeros((length(bodyparts0(:,1))-location),1));
        end
    end
end
theta1=1.36136; theta2=3.14159;
rot1=zeros(3,3); rot1(1,1)=1; rot1(2,2)=cos(theta1); rot1(2,3)=-sin(theta1); rot1(3,2)=sin(theta1); rot1(3,3)=cos(theta1);
for i=1:length(bodyparts0(:,1))
    puta=rot1*bodyparts0(i,:)';
    bodyparts0(i,:)=puta';
end
rot2=zeros(3,3); rot2(2,2)=cos(theta2); rot2(1,1)=cos(theta2); rot2(1,2)=-sin(theta2); rot2(2,1)=sin(theta2); rot2(3,3)=1;
for i=1:length(bodyparts0(:,1))
    puta=rot2*bodyparts0(i,:)';
    bodyparts0(i,:)=puta';
end
v1=-bodyparts0(21,1); v2=-bodyparts0(21,2); v3=-bodyparts0(21,3); 
trans1=eye(4); trans1(1,4)=v1; trans1(2,4)=v2; trans1(3,4)=v3;
ones1=ones(length(bodyparts0),1);
means_right_shoulder_ones=horzcat(bodyparts0,ones1);
for i=1:length(bodyparts0)
    puta=trans1*means_right_shoulder_ones(i,:)';
    new_bodyparts0(i,:)=puta';
end
new_bodyparts0(:,4)=[];

%whole body
scatter3(new_bodyparts0(:,1),new_bodyparts0(:,2),new_bodyparts0(:,3),'b'); hold on
plot3([new_bodyparts0(3,1);new_bodyparts0(4,1)],[new_bodyparts0(3,2);new_bodyparts0(4,2)],[new_bodyparts0(3,3);new_bodyparts0(4,3)],'r','LineWidth',5); hold on
plot3([new_bodyparts0(5,1);new_bodyparts0(9,1)],[new_bodyparts0(5,2);new_bodyparts0(9,2)],[new_bodyparts0(5,3);new_bodyparts0(9,3)],'k','LineWidth',5); hold on
plot3([new_bodyparts0(10,1);new_bodyparts0(9,1)],[new_bodyparts0(10,2);new_bodyparts0(9,2)],[new_bodyparts0(10,3);new_bodyparts0(9,3)],'b','LineWidth',5); hold on
plot3([new_bodyparts0(11,1);new_bodyparts0(10,1)],[new_bodyparts0(11,2);new_bodyparts0(10,2)],[new_bodyparts0(11,3);new_bodyparts0(10,3)],'b','LineWidth',5); hold on
plot3([new_bodyparts0(6,1);new_bodyparts0(5,1)],[new_bodyparts0(6,2);new_bodyparts0(5,2)],[new_bodyparts0(6,3);new_bodyparts0(5,3)],'b','LineWidth',5); hold on
plot3([new_bodyparts0(7,1);new_bodyparts0(6,1)],[new_bodyparts0(7,2);new_bodyparts0(6,2)],[new_bodyparts0(7,3);new_bodyparts0(6,3)],'b','LineWidth',5); hold on
plot3([new_bodyparts0(17,1);new_bodyparts0(13,1)],[new_bodyparts0(17,2);new_bodyparts0(13,2)],[new_bodyparts0(17,3);new_bodyparts0(13,3)],'g','LineWidth',5); hold on
plot3([new_bodyparts0(21,1);new_bodyparts0(2,1)],[new_bodyparts0(21,2);new_bodyparts0(2,2)],[new_bodyparts0(21,3);new_bodyparts0(2,3)],'m','LineWidth',5); hold on
plot3([new_bodyparts0(1,1);new_bodyparts0(2,1)],[new_bodyparts0(1,2);new_bodyparts0(2,2)],[new_bodyparts0(1,3);new_bodyparts0(2,3)],'m','LineWidth',5); hold on
plot3([new_bodyparts0(18,1);new_bodyparts0(17,1)],[new_bodyparts0(18,2);new_bodyparts0(17,2)],[new_bodyparts0(18,3);new_bodyparts0(17,3)],'y','LineWidth',5); hold on
plot3([new_bodyparts0(18,1);new_bodyparts0(19,1)],[new_bodyparts0(18,2);new_bodyparts0(19,2)],[new_bodyparts0(18,3);new_bodyparts0(19,3)],'y','LineWidth',5); hold on
plot3([new_bodyparts0(13,1);new_bodyparts0(14,1)],[new_bodyparts0(13,2);new_bodyparts0(14,2)],[new_bodyparts0(13,3);new_bodyparts0(14,3)],'y','LineWidth',5); hold on
plot3([new_bodyparts0(14,1);new_bodyparts0(15,1)],[new_bodyparts0(14,2);new_bodyparts0(15,2)],[new_bodyparts0(14,3);new_bodyparts0(15,3)],'y','LineWidth',5); hold on
scatter3(new_bodyparts0(9,1),new_bodyparts0(9,2),new_bodyparts0(9,3),70,'MarkerEdgeColor','k','MarkerFaceColor','g'); hold on
scatter3(new_bodyparts0(17,1),new_bodyparts0(17,2),new_bodyparts0(17,3),150,'MarkerEdgeColor','k','MarkerFaceColor','y'); hold on
