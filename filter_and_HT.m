function [new3_act1, new3_act2, new3_act3, new3_act4, new3_act5, new3_act6, new3_act7,new3_act8,new3_act9,new3_act10, new3_act1elb,new3_act2elb, new3_act3elb, new3_act4elb, new3_act5elb, new3_act6elb, new3_act7elb, new3_act8elb, new3_act9elb, new3_act10elb, new3_act1sh,new3_act2sh,new3_act3sh,new3_act4sh,new3_act5sh,new3_act6sh,new3_act7sh,new3_act8sh,new3_act9sh,new3_act10sh,new3_act1hip,new3_act2hip,new3_act3hip,new3_act4hip,new3_act5hip,new3_act6hip,new3_act7hip,new3_act8hip,new3_act9hip,new3_act10hip,min_length] = filter_and_HT(act1, act2, act3, act4, act5, act6, act7, act8, act9, act10, d, theta1, theta2)
%filtering part of the function
%right hip=17, right shoulder=09; right wrist=11; right elbow=10; spineShoulder=21
location = 21;n=25;
for i=1:3
    column = 2+(4*(location-1))+i;
    spine_1(:,i) = table2array(act1(:,column));
    spine_2(:,i) = table2array(act2(:,column));
    spine_3(:,i) = table2array(act3(:,column));
    spine_4(:,i) = table2array(act4(:,column));
    spine_5(:,i) = table2array(act5(:,column));
    spine_6(:,i) = table2array(act6(:,column));
    spine_7(:,i) = table2array(act7(:,column));
    spine_8(:,i) = table2array(act8(:,column));
    spine_9(:,i) = table2array(act9(:,column));
    spine_10(:,i) = table2array(act10(:,column));
end
lengths(1,1)=length(spine_1(:,1));lengths(1,2)=length(spine_2(:,1));lengths(1,3)=length(spine_3(:,1));lengths(1,4)=length(spine_4(:,1));lengths(1,5)=length(spine_5(:,1));lengths(1,6)=length(spine_6(:,1));lengths(1,7)=length(spine_7(:,1));lengths(1,8)=length(spine_8(:,1));lengths(1,9)=length(spine_9(:,1));lengths(1,10)=length(spine_10(:,1));
min_length=min(lengths); 

act1_b=table2array(act1); L1=length(act1_b(:,1)); bodyparts1=zeros(n*L1,3);right_wrist_1=zeros(L1,3);
act2_b=table2array(act2); L2=length(act2_b(:,1)); bodyparts2=zeros(n*L2,3);right_wrist_2=zeros(L2,3);
act3_b=table2array(act3); L3=length(act3_b(:,1)); bodyparts3=zeros(n*L3,3);right_wrist_3=zeros(L3,3);
act4_b=table2array(act4); L4=length(act4_b(:,1)); bodyparts4=zeros(n*L4,3);right_wrist_4=zeros(L4,3);
act5_b=table2array(act5); L5=length(act5_b(:,1)); bodyparts5=zeros(n*L5,3);right_wrist_5=zeros(L5,3);
act6_b=table2array(act6); L6=length(act6_b(:,1)); bodyparts6=zeros(n*L6,3);right_wrist_6=zeros(L6,3);
act7_b=table2array(act7); L7=length(act7_b(:,1)); bodyparts7=zeros(n*L7,3);right_wrist_7=zeros(L7,3);
act8_b=table2array(act8); L8=length(act8_b(:,1)); bodyparts8=zeros(n*L8,3);right_wrist_8=zeros(L8,3);
act9_b=table2array(act9); L9=length(act9_b(:,1)); bodyparts9=zeros(n*L9,3);right_wrist_9=zeros(L9,3);
act10_b=table2array(act10); L10=length(act10_b(:,1)); bodyparts10=zeros(n*L10,3);right_wrist_10=zeros(L10,3);

for location=1:n
    for i=1:3
        column = 2+(4*(location-1))+i;
        if(location==1)
            bodyparts1(:,i) = vertcat(act1_b(:,column),zeros((length(bodyparts1(:,1))-L1),1));
            bodyparts2(:,i) = vertcat(act2_b(:,column),zeros((length(bodyparts2(:,1))-L2),1));
            bodyparts3(:,i) = vertcat(act3_b(:,column),zeros((length(bodyparts3(:,1))-L3),1));
            bodyparts4(:,i) = vertcat(act4_b(:,column),zeros((length(bodyparts4(:,1))-L4),1));
            bodyparts5(:,i) = vertcat(act5_b(:,column),zeros((length(bodyparts5(:,1))-L5),1));
            bodyparts6(:,i) = vertcat(act6_b(:,column),zeros((length(bodyparts6(:,1))-L6),1));
            bodyparts7(:,i) = vertcat(act7_b(:,column),zeros((length(bodyparts7(:,1))-L7),1));
            bodyparts8(:,i) = vertcat(act8_b(:,column),zeros((length(bodyparts8(:,1))-L8),1));
            bodyparts9(:,i) = vertcat(act9_b(:,column),zeros((length(bodyparts9(:,1))-L9),1));
            bodyparts10(:,i) = vertcat(act10_b(:,column),zeros((length(bodyparts10(:,1))-L10),1));
        else
            bodyparts1(:,i) = vertcat(bodyparts1(1:(location-1)*L1,i),act1_b(:,column),zeros((length(bodyparts1(:,1))-(location*L1)),1));
            bodyparts2(:,i) = vertcat(bodyparts2(1:(location-1)*L2,i),act2_b(:,column),zeros((length(bodyparts2(:,1))-(location*L2)),1));
            bodyparts3(:,i) = vertcat(bodyparts3(1:(location-1)*L3,i),act3_b(:,column),zeros((length(bodyparts3(:,1))-(location*L3)),1));
            bodyparts4(:,i) = vertcat(bodyparts4(1:(location-1)*L4,i),act4_b(:,column),zeros((length(bodyparts4(:,1))-(location*L4)),1));
            bodyparts5(:,i) = vertcat(bodyparts5(1:(location-1)*L5,i),act5_b(:,column),zeros((length(bodyparts5(:,1))-(location*L5)),1));
            bodyparts6(:,i) = vertcat(bodyparts6(1:(location-1)*L6,i),act6_b(:,column),zeros((length(bodyparts6(:,1))-(location*L6)),1));
            bodyparts7(:,i) = vertcat(bodyparts7(1:(location-1)*L7,i),act7_b(:,column),zeros((length(bodyparts7(:,1))-(location*L7)),1));
            bodyparts8(:,i) = vertcat(bodyparts8(1:(location-1)*L8,i),act8_b(:,column),zeros((length(bodyparts8(:,1))-(location*L8)),1));
            bodyparts9(:,i) = vertcat(bodyparts9(1:(location-1)*L9,i),act9_b(:,column),zeros((length(bodyparts9(:,1))-(location*L9)),1));
            bodyparts10(:,i) = vertcat(bodyparts10(1:(location-1)*L10,i),act10_b(:,column),zeros((length(bodyparts10(:,1))-(location*L10)),1));
        end
    end
end
loc1=11; %right wrist
loc2=10; %right elbow
loc3=9; %right shoulder
loc4=17; %right hip
for i=1:L1
    right_wrist_1(i,:)=bodyparts1((L1*(loc1-1))+i,:);
    right_elbow_1(i,:)=bodyparts1((L1*(loc2-1))+i,:);
    right_shoulder_1(i,:)=bodyparts1((L1*(loc3-1))+i,:);
    right_hip_1(i,:)=bodyparts1((L1*(loc4-1))+i,:);
    
end
for i=1:L2
    right_wrist_2(i,:)=bodyparts2((L2*(loc1-1))+i,:);
    right_elbow_2(i,:)=bodyparts2((L2*(loc2-1))+i,:);
    right_shoulder_2(i,:)=bodyparts2((L2*(loc3-1))+i,:);
    right_hip_2(i,:)=bodyparts2((L2*(loc4-1))+i,:);
end
for i=1:L3
    right_wrist_3(i,:)=bodyparts3((L3*(loc1-1))+i,:);
    right_elbow_3(i,:)=bodyparts3((L3*(loc2-1))+i,:);
    right_shoulder_3(i,:)=bodyparts3((L3*(loc3-1))+i,:);
    right_hip_3(i,:)=bodyparts3((L3*(loc4-1))+i,:);
end
for i=1:L4
    right_wrist_4(i,:)=bodyparts4((L4*(loc1-1))+i,:);
    right_elbow_4(i,:)=bodyparts4((L4*(loc2-1))+i,:);
    right_shoulder_4(i,:)=bodyparts4((L4*(loc3-1))+i,:);
    right_hip_4(i,:)=bodyparts4((L4*(loc4-1))+i,:);
end
for i=1:L5
    right_wrist_5(i,:)=bodyparts5((L5*(loc1-1))+i,:);
    right_elbow_5(i,:)=bodyparts5((L5*(loc2-1))+i,:);
    right_shoulder_5(i,:)=bodyparts5((L5*(loc3-1))+i,:);
    right_hip_5(i,:)=bodyparts5((L5*(loc4-1))+i,:);
end
for i=1:L6
    right_wrist_6(i,:)=bodyparts6((L6*(loc1-1))+i,:);
    right_elbow_6(i,:)=bodyparts6((L6*(loc2-1))+i,:);
    right_shoulder_6(i,:)=bodyparts6((L6*(loc3-1))+i,:);
    right_hip_6(i,:)=bodyparts6((L6*(loc4-1))+i,:);
end
for i=1:L7
    right_wrist_7(i,:)=bodyparts7((L7*(loc1-1))+i,:);
    right_elbow_7(i,:)=bodyparts7((L7*(loc2-1))+i,:);
    right_shoulder_7(i,:)=bodyparts7((L7*(loc3-1))+i,:);
    right_hip_7(i,:)=bodyparts7((L7*(loc4-1))+i,:);
end
for i=1:L8
    right_wrist_8(i,:)=bodyparts8((L8*(loc1-1))+i,:);
    right_elbow_8(i,:)=bodyparts8((L1*(loc2-1))+i,:);
    right_shoulder_8(i,:)=bodyparts8((L1*(loc3-1))+i,:);
    right_hip_8(i,:)=bodyparts8((L8*(loc4-1))+i,:);
end
for i=1:L9
    right_wrist_9(i,:)=bodyparts9((L9*(loc1-1))+i,:);
    right_elbow_9(i,:)=bodyparts9((L9*(loc2-1))+i,:);
    right_shoulder_9(i,:)=bodyparts9((L9*(loc3-1))+i,:);
    right_hip_9(i,:)=bodyparts9((L9*(loc4-1))+i,:);
end
for i=1:L10
    right_wrist_10(i,:)=bodyparts10((L10*(loc1-1))+i,:);
    right_elbow_10(i,:)=bodyparts10((L10*(loc2-1))+i,:);
    right_shoulder_10(i,:)=bodyparts10((L10*(loc3-1))+i,:);
    right_hip_10(i,:)=bodyparts10((L10*(loc4-1))+i,:);
end

bodyparts01=zeros(n,3);bodyparts02=zeros(n,3);bodyparts03=zeros(n,3);bodyparts04=zeros(n,3);bodyparts05=zeros(n,3);
bodyparts06=zeros(n,3);bodyparts07=zeros(n,3);bodyparts08=zeros(n,3);bodyparts09=zeros(n,3);bodyparts10=zeros(n,3);
for location=1:n
    for i=1:3
        column = 2+(4*(location-1))+i;
        if(location==1)
            bodyparts01(:,i) = vertcat(act1_b(1,column),zeros(n-1,1));
            bodyparts02(:,i) = vertcat(act2_b(1,column),zeros(n-1,1));
            bodyparts03(:,i) = vertcat(act3_b(1,column),zeros(n-1,1));
            bodyparts04(:,i) = vertcat(act4_b(1,column),zeros(n-1,1));
            bodyparts05(:,i) = vertcat(act5_b(1,column),zeros(n-1,1));
            bodyparts06(:,i) = vertcat(act6_b(1,column),zeros(n-1,1));
            bodyparts07(:,i) = vertcat(act7_b(1,column),zeros(n-1,1));
            bodyparts08(:,i) = vertcat(act8_b(1,column),zeros(n-1,1));
            bodyparts09(:,i) = vertcat(act9_b(1,column),zeros(n-1,1));
            bodyparts10(:,i) = vertcat(act10_b(1,column),zeros(n-1,1));
        else
            bodyparts01(:,i) = vertcat(bodyparts01(1:(location-1),i),act1_b(1,column),zeros((length(bodyparts01(:,1))-location),1));
            bodyparts02(:,i) = vertcat(bodyparts02(1:(location-1),i),act2_b(1,column),zeros((length(bodyparts02(:,1))-location),1));
            bodyparts03(:,i) = vertcat(bodyparts03(1:(location-1),i),act3_b(1,column),zeros((length(bodyparts03(:,1))-location),1));
            bodyparts04(:,i) = vertcat(bodyparts04(1:(location-1),i),act4_b(1,column),zeros((length(bodyparts04(:,1))-location),1));
            bodyparts05(:,i) = vertcat(bodyparts05(1:(location-1),i),act5_b(1,column),zeros((length(bodyparts05(:,1))-location),1));
            bodyparts06(:,i) = vertcat(bodyparts06(1:(location-1),i),act6_b(1,column),zeros((length(bodyparts06(:,1))-location),1));
            bodyparts07(:,i) = vertcat(bodyparts07(1:(location-1),i),act7_b(1,column),zeros((length(bodyparts07(:,1))-location),1));
            bodyparts08(:,i) = vertcat(bodyparts08(1:(location-1),i),act8_b(1,column),zeros((length(bodyparts08(:,1))-location),1));
            bodyparts09(:,i) = vertcat(bodyparts09(1:(location-1),i),act9_b(1,column),zeros((length(bodyparts09(:,1))-location),1));
            bodyparts10(:,i) = vertcat(bodyparts10(1:(location-1),i),act10_b(1,column),zeros((length(bodyparts10(:,1))-location),1));
        end
    end
end

rot1=zeros(3,3); rot1(1,1)=1; rot1(2,2)=cos(theta1); rot1(2,3)=-sin(theta1); rot1(3,2)=sin(theta1); rot1(3,3)=cos(theta1);
for i=1:length(bodyparts01(:,1))
    puta=rot1*bodyparts01(i,:)'; new_bodyparts01(i,:)=puta';
end
for i=1:length(bodyparts02(:,1))
    puta=rot1*bodyparts02(i,:)'; new_bodyparts02(i,:)=puta';
end
for i=1:length(bodyparts03(:,1))
    puta=rot1*bodyparts03(i,:)'; new_bodyparts03(i,:)=puta'; 
end
for i=1:length(bodyparts04(:,1))
    puta=rot1*bodyparts04(i,:)'; new_bodyparts04(i,:)=puta';
end
for i=1:length(bodyparts05(:,1))
    puta=rot1*bodyparts05(i,:)'; new_bodyparts05(i,:)=puta';
end
for i=1:length(bodyparts06(:,1))
    puta=rot1*bodyparts06(i,:)'; new_bodyparts06(i,:)=puta';
end
for i=1:length(bodyparts07(:,1))
    puta=rot1*bodyparts07(i,:)'; new_bodyparts07(i,:)=puta';
end
for i=1:length(bodyparts08(:,1))
    puta=rot1*bodyparts08(i,:)'; new_bodyparts08(i,:)=puta';
end
for i=1:length(bodyparts09(:,1))
    puta=rot1*bodyparts09(i,:)'; new_bodyparts09(i,:)=puta';
end
for i=1:length(bodyparts10(:,1))
    puta=rot1*bodyparts10(i,:)'; new_bodyparts10(i,:)=puta';
end
for i=1:length(right_wrist_1(:,1))
    puta=rot1*right_wrist_1(i,:)'; new_act1(i,:)=puta';
    puta=rot1*right_elbow_1(i,:)'; new_act1elb(i,:)=puta';
    puta=rot1*right_shoulder_1(i,:)'; new_act1sh(i,:)=puta';
    puta=rot1*right_hip_1(i,:)'; new_act1hip(i,:)=puta';
end
for i=1:length(right_wrist_2(:,1))
    puta=rot1*right_wrist_2(i,:)'; new_act2(i,:)=puta';
    puta=rot1*right_elbow_2(i,:)'; new_act2elb(i,:)=puta';
    puta=rot1*right_shoulder_2(i,:)'; new_act2sh(i,:)=puta';
    puta=rot1*right_hip_2(i,:)'; new_act2hip(i,:)=puta';
end
for i=1:length(right_wrist_3(:,1))
    puta=rot1*right_wrist_3(i,:)'; new_act3(i,:)=puta';
    puta=rot1*right_elbow_3(i,:)'; new_act3elb(i,:)=puta';
    puta=rot1*right_shoulder_3(i,:)'; new_act3sh(i,:)=puta';
    puta=rot1*right_hip_3(i,:)'; new_act3hip(i,:)=puta';
end
for i=1:length(right_wrist_4(:,1))
    puta=rot1*right_wrist_4(i,:)'; new_act4(i,:)=puta';
    puta=rot1*right_elbow_4(i,:)'; new_act4elb(i,:)=puta';
    puta=rot1*right_shoulder_4(i,:)'; new_act4sh(i,:)=puta';
    puta=rot1*right_hip_4(i,:)'; new_act4hip(i,:)=puta';
end
for i=1:length(right_wrist_5(:,1))
    puta=rot1*right_wrist_5(i,:)'; new_act5(i,:)=puta';
    puta=rot1*right_elbow_5(i,:)'; new_act5elb(i,:)=puta';
    puta=rot1*right_shoulder_5(i,:)';new_act5sh(i,:)=puta';
    puta=rot1*right_hip_5(i,:)'; new_act5hip(i,:)=puta';
end
for i=1:length(right_wrist_6(:,1))
    puta=rot1*right_wrist_6(i,:)';new_act6(i,:)=puta';
    puta=rot1*right_elbow_6(i,:)';new_act6elb(i,:)=puta';
    puta=rot1*right_shoulder_6(i,:)';new_act6sh(i,:)=puta';
    puta=rot1*right_hip_6(i,:)'; new_act6hip(i,:)=puta';
end
for i=1:length(right_wrist_7(:,1))
    puta=rot1*right_wrist_7(i,:)'; new_act7(i,:)=puta';
    puta=rot1*right_elbow_7(i,:)'; new_act7elb(i,:)=puta';
    puta=rot1*right_shoulder_7(i,:)'; new_act7sh(i,:)=puta';
    puta=rot1*right_hip_7(i,:)'; new_act7hip(i,:)=puta';
end
for i=1:length(right_wrist_8(:,1))
    puta=rot1*right_wrist_8(i,:)';new_act8(i,:)=puta';
    puta=rot1*right_elbow_8(i,:)';new_act8elb(i,:)=puta';
    puta=rot1*right_shoulder_8(i,:)';new_act8sh(i,:)=puta';
    puta=rot1*right_hip_8(i,:)'; new_act8hip(i,:)=puta';
end
for i=1:length(right_wrist_9(:,1))
    puta=rot1*right_wrist_9(i,:)'; new_act9(i,:)=puta';
    puta=rot1*right_elbow_9(i,:)'; new_act9elb(i,:)=puta';
    puta=rot1*right_shoulder_9(i,:)'; new_act9sh(i,:)=puta';
    puta=rot1*right_hip_9(i,:)'; new_act9hip(i,:)=puta';
end
for i=1:length(right_wrist_10(:,1))
    puta=rot1*right_wrist_10(i,:)'; new_act10(i,:)=puta';
    puta=rot1*right_elbow_10(i,:)'; new_act10elb(i,:)=puta';
    puta=rot1*right_shoulder_10(i,:)'; new_act10sh(i,:)=puta';
    puta=rot1*right_hip_10(i,:)'; new_act10hip(i,:)=puta';
end

rot2=zeros(3,3); rot2(2,2)=cos(theta2); rot2(1,1)=cos(theta2); rot2(1,2)=-sin(theta2); rot2(2,1)=sin(theta2); rot2(3,3)=1;
for i=1:length(new_bodyparts01(:,1))
    puta=rot2*new_bodyparts01(i,:)'; new2_bodyparts01(i,:)=puta';
end
for i=1:length(new_bodyparts02(:,1))
    puta=rot2*new_bodyparts02(i,:)'; new2_bodyparts02(i,:)=puta';
end
for i=1:length(new_bodyparts03(:,1))
    puta=rot2*new_bodyparts03(i,:)'; new2_bodyparts03(i,:)=puta';
end
for i=1:length(new_bodyparts04(:,1))
    puta=rot2*new_bodyparts04(i,:)'; new2_bodyparts04(i,:)=puta';
end
for i=1:length(new_bodyparts05(:,1))
    puta=rot2*new_bodyparts05(i,:)'; new2_bodyparts05(i,:)=puta';
end
for i=1:length(new_bodyparts06(:,1))
    puta=rot2*new_bodyparts06(i,:)'; new2_bodyparts06(i,:)=puta';
end
for i=1:length(new_bodyparts07(:,1))
    puta=rot2*new_bodyparts07(i,:)'; new2_bodyparts07(i,:)=puta';
end
for i=1:length(new_bodyparts08(:,1))
    puta=rot2*new_bodyparts08(i,:)'; new2_bodyparts08(i,:)=puta';
end
for i=1:length(new_bodyparts09(:,1))
    puta=rot2*new_bodyparts09(i,:)'; new2_bodyparts09(i,:)=puta';
end
for i=1:length(new_bodyparts10(:,1))
    puta=rot2*new_bodyparts10(i,:)'; new2_bodyparts10(i,:)=puta';
end
for i=1:length(new_act1(:,1))
    puta=rot2*new_act1(i,:)'; new2_act1(i,:)=puta';
    puta=rot2*new_act1elb(i,:)'; new2_act1elb(i,:)=puta';
    puta=rot2*new_act1sh(i,:)'; new2_act1sh(i,:)=puta';
    puta=rot2*new_act1hip(i,:)'; new2_act1hip(i,:)=puta';
end
for i=1:length(new_act2(:,1))
    puta=rot2*new_act2(i,:)'; new2_act2(i,:)=puta';
    puta=rot2*new_act2elb(i,:)'; new2_act2elb(i,:)=puta';
    puta=rot2*new_act2sh(i,:)'; new2_act2sh(i,:)=puta';
    puta=rot2*new_act2hip(i,:)'; new2_act2hip(i,:)=puta';
end
for i=1:length(new_act3(:,1))
    puta=rot2*new_act3(i,:)'; new2_act3(i,:)=puta';
    puta=rot2*new_act3elb(i,:)'; new2_act3elb(i,:)=puta';
    puta=rot2*new_act3sh(i,:)'; new2_act3sh(i,:)=puta';
    puta=rot2*new_act3hip(i,:)'; new2_act3hip(i,:)=puta';
end
for i=1:length(new_act4(:,1))
    puta=rot2*new_act4(i,:)'; new2_act4(i,:)=puta';
    puta=rot2*new_act4elb(i,:)'; new2_act4elb(i,:)=puta';
    puta=rot2*new_act4sh(i,:)'; new2_act4sh(i,:)=puta';
    puta=rot2*new_act4hip(i,:)'; new2_act4hip(i,:)=puta';
end
for i=1:length(new_act5(:,1))
    puta=rot2*new_act5(i,:)'; new2_act5(i,:)=puta';
    puta=rot2*new_act5elb(i,:)'; new2_act5elb(i,:)=puta';
    puta=rot2*new_act5sh(i,:)'; new2_act5sh(i,:)=puta';
    puta=rot2*new_act5hip(i,:)'; new2_act5hip(i,:)=puta';
end
for i=1:length(new_act6(:,1))
    puta=rot2*new_act6(i,:)'; new2_act6(i,:)=puta';
    puta=rot2*new_act6elb(i,:)'; new2_act6elb(i,:)=puta';
    puta=rot2*new_act6sh(i,:)'; new2_act6sh(i,:)=puta';
    puta=rot2*new_act6hip(i,:)'; new2_act6hip(i,:)=puta';
end
for i=1:length(new_act7(:,1))
    puta=rot2*new_act7(i,:)'; new2_act7(i,:)=puta';
    puta=rot2*new_act7elb(i,:)'; new2_act7elb(i,:)=puta';
    puta=rot2*new_act7sh(i,:)'; new2_act7sh(i,:)=puta';
    puta=rot2*new_act7hip(i,:)'; new2_act7hip(i,:)=puta';
end
for i=1:length(new_act8(:,1))
    puta=rot2*new_act8(i,:)'; new2_act8(i,:)=puta';
    puta=rot2*new_act8elb(i,:)'; new2_act8elb(i,:)=puta';
    puta=rot2*new_act8sh(i,:)'; new2_act8sh(i,:)=puta';
    puta=rot2*new_act8hip(i,:)'; new2_act8hip(i,:)=puta';
end
for i=1:length(new_act9(:,1))
    puta=rot2*new_act9(i,:)'; new2_act9(i,:)=puta';
    puta=rot2*new_act9elb(i,:)'; new2_act9elb(i,:)=puta';
    puta=rot2*new_act9sh(i,:)'; new2_act9sh(i,:)=puta';
    puta=rot2*new_act9hip(i,:)'; new2_act9hip(i,:)=puta';
end
for i=1:length(new_act10(:,1))
    puta=rot2*new_act10(i,:)'; new2_act10(i,:)=puta';
    puta=rot2*new_act10elb(i,:)'; new2_act10elb(i,:)=puta';
    puta=rot2*new_act10sh(i,:)'; new2_act10sh(i,:)=puta';
    puta=rot2*new_act10hip(i,:)'; new2_act10hip(i,:)=puta';
end
%% 
%Translation
v1=-new2_bodyparts01(21,1); v2=-new2_bodyparts01(21,2); v3=-new2_bodyparts01(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones1=ones(length(right_wrist_1),1); new2_act1_ones=horzcat(new2_act1,ones1);
for i=1:length(right_wrist_1)
    puta=trans1*new2_act1_ones(i,:)'; new3_act1(i,:)=puta';
end
new3_act1(:,4)=[];
ones11=ones(length(right_elbow_1),1); new2_act1elb_ones=horzcat(new2_act1elb,ones11);
for i=1:length(right_elbow_1)
    puta=trans1*new2_act1elb_ones(i,:)'; new3_act1elb(i,:)=puta';
end
new3_act1elb(:,4)=[];
ones21=ones(length(right_shoulder_1),1); new2_act1sh_ones=horzcat(new2_act1sh,ones21);
for i=1:length(right_shoulder_1)
    puta=trans1*new2_act1sh_ones(i,:)'; new3_act1sh(i,:)=puta';
end
new3_act1sh(:,4)=[];
ones31=ones(length(right_hip_1),1); new2_act1hip_ones=horzcat(new2_act1hip,ones31);
for i=1:length(right_hip_1)
    puta=trans1*new2_act1hip_ones(i,:)'; new3_act1hip(i,:)=puta';
end
new3_act1hip(:,4)=[];
v1=-new2_bodyparts02(21,1); v2=-new2_bodyparts02(21,2); v3=-new2_bodyparts02(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones2=ones(length(right_wrist_2),1); new2_act2_ones=horzcat(new2_act2,ones2);
for i=1:length(right_wrist_2)
    puta=trans1*new2_act2_ones(i,:)';
    new3_act2(i,:)=puta';
end
new3_act2(:,4)=[];
ones12=ones(length(right_elbow_2),1); new2_act2elb_ones=horzcat(new2_act2elb,ones12);
for i=1:length(right_elbow_2)
    puta=trans1*new2_act2elb_ones(i,:)';
    new3_act2elb(i,:)=puta';
end
new3_act2elb(:,4)=[];
ones22=ones(length(right_shoulder_2),1); new2_act2sh_ones=horzcat(new2_act2sh,ones22);
for i=1:length(right_shoulder_2)
    puta=trans1*new2_act2sh_ones(i,:)'; new3_act2sh(i,:)=puta';
end
new3_act2sh(:,4)=[];
ones32=ones(length(right_hip_2),1); new2_act2hip_ones=horzcat(new2_act2hip,ones32);
for i=1:length(right_hip_2)
    puta=trans1*new2_act2hip_ones(i,:)'; new3_act2hip(i,:)=puta';
end
new3_act2hip(:,4)=[];
v1=-new2_bodyparts03(21,1); v2=-new2_bodyparts03(21,2); v3=-new2_bodyparts03(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones3=ones(length(right_wrist_3),1); new2_act3_ones=horzcat(new2_act3,ones3);
for i=1:length(right_wrist_3)
    puta=trans1*new2_act3_ones(i,:)';
    new3_act3(i,:)=puta';
end
new3_act3(:,4)=[];
ones13=ones(length(right_elbow_3),1); new2_act3elb_ones=horzcat(new2_act3elb,ones13);
for i=1:length(right_elbow_3)
    puta=trans1*new2_act3elb_ones(i,:)';
    new3_act3elb(i,:)=puta';
end
new3_act3elb(:,4)=[];
ones23=ones(length(right_shoulder_3),1); new2_act3sh_ones=horzcat(new2_act3sh,ones23);
for i=1:length(right_shoulder_3)
    puta=trans1*new2_act3sh_ones(i,:)'; new3_act3sh(i,:)=puta';
end
new3_act3sh(:,4)=[];
ones33=ones(length(right_hip_3),1); new2_act3hip_ones=horzcat(new2_act3hip,ones33);
for i=1:length(right_hip_3)
    puta=trans1*new2_act3hip_ones(i,:)'; new3_act3hip(i,:)=puta';
end
new3_act3hip(:,4)=[];
v1=-new2_bodyparts04(21,1); v2=-new2_bodyparts04(21,2); v3=-new2_bodyparts04(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones4=ones(length(right_wrist_4),1); new2_act4_ones=horzcat(new2_act4,ones4);
for i=1:length(right_wrist_4)
    puta=trans1*new2_act4_ones(i,:)';
    new3_act4(i,:)=puta';
end
new3_act4(:,4)=[];
ones14=ones(length(right_elbow_4),1); new2_act4elb_ones=horzcat(new2_act4elb,ones14);
for i=1:length(right_elbow_4)
    puta=trans1*new2_act4elb_ones(i,:)';
    new3_act4elb(i,:)=puta';
end
new3_act4elb(:,4)=[];
ones24=ones(length(right_shoulder_4),1); new2_act4sh_ones=horzcat(new2_act4sh,ones24);
for i=1:length(right_shoulder_4)
    puta=trans1*new2_act4sh_ones(i,:)'; new3_act4sh(i,:)=puta';
end
new3_act4sh(:,4)=[];
ones34=ones(length(right_hip_4),1); new2_act4hip_ones=horzcat(new2_act4hip,ones34);
for i=1:length(right_hip_4)
    puta=trans1*new2_act4hip_ones(i,:)'; new3_act4hip(i,:)=puta';
end
new3_act4hip(:,4)=[];
v1=-new2_bodyparts05(21,1); v2=-new2_bodyparts05(21,2); v3=-new2_bodyparts05(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones5=ones(length(right_wrist_5),1); new2_act5_ones=horzcat(new2_act5,ones5);
for i=1:length(right_wrist_5)
    puta=trans1*new2_act5_ones(i,:)';
    new3_act5(i,:)=puta';
end
new3_act5(:,4)=[];
ones15=ones(length(right_elbow_5),1); new2_act5elb_ones=horzcat(new2_act5elb,ones15);
for i=1:length(right_elbow_5)
    puta=trans1*new2_act5elb_ones(i,:)';
    new3_act5elb(i,:)=puta';
end
new3_act5elb(:,4)=[];
ones25=ones(length(right_shoulder_5),1); new2_act5sh_ones=horzcat(new2_act5sh,ones25);
for i=1:length(right_shoulder_5)
    puta=trans1*new2_act5sh_ones(i,:)'; new3_act5sh(i,:)=puta';
end
new3_act5sh(:,4)=[];
ones35=ones(length(right_hip_5),1); new2_act5hip_ones=horzcat(new2_act5hip,ones35);
for i=1:length(right_hip_5)
    puta=trans1*new2_act5hip_ones(i,:)'; new3_act5hip(i,:)=puta';
end
new3_act5hip(:,4)=[];
v1=-new2_bodyparts06(21,1); v2=-new2_bodyparts06(21,2); v3=-new2_bodyparts06(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones6=ones(length(right_wrist_6),1); new2_act6_ones=horzcat(new2_act6,ones6);
for i=1:length(right_wrist_6)
    puta=trans1*new2_act6_ones(i,:)';
    new3_act6(i,:)=puta';
end
new3_act6(:,4)=[];
ones16=ones(length(right_elbow_6),1); new2_act6elb_ones=horzcat(new2_act6elb,ones16);
for i=1:length(right_elbow_6)
    puta=trans1*new2_act6elb_ones(i,:)';
    new3_act6elb(i,:)=puta';
end
new3_act6elb(:,4)=[];
ones26=ones(length(right_shoulder_6),1); new2_act6sh_ones=horzcat(new2_act6sh,ones26);
for i=1:length(right_shoulder_6)
    puta=trans1*new2_act6sh_ones(i,:)'; new3_act6sh(i,:)=puta';
end
new3_act6sh(:,4)=[];
ones36=ones(length(right_hip_6),1); new2_act6hip_ones=horzcat(new2_act6hip,ones36);
for i=1:length(right_hip_6)
    puta=trans1*new2_act6hip_ones(i,:)'; new3_act6hip(i,:)=puta';
end
new3_act6hip(:,4)=[];
v1=-new2_bodyparts07(21,1); v2=-new2_bodyparts07(21,2); v3=-new2_bodyparts07(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones7=ones(length(right_wrist_7),1); new2_act7_ones=horzcat(new2_act7,ones7);
for i=1:length(right_wrist_7)
    puta=trans1*new2_act7_ones(i,:)';
    new3_act7(i,:)=puta';
end
new3_act7(:,4)=[];
ones17=ones(length(right_elbow_7),1); new2_act7elb_ones=horzcat(new2_act7elb,ones17);
for i=1:length(right_elbow_7)
    puta=trans1*new2_act7elb_ones(i,:)';
    new3_act7elb(i,:)=puta';
end
new3_act7elb(:,4)=[];
ones27=ones(length(right_shoulder_7),1); new2_act7sh_ones=horzcat(new2_act7sh,ones27);
for i=1:length(right_shoulder_7)
    puta=trans1*new2_act7sh_ones(i,:)'; new3_act7sh(i,:)=puta';
end
new3_act7sh(:,4)=[];
ones37=ones(length(right_hip_7),1); new2_act7hip_ones=horzcat(new2_act7hip,ones37);
for i=1:length(right_hip_7)
    puta=trans1*new2_act7hip_ones(i,:)'; new3_act7hip(i,:)=puta';
end
new3_act7hip(:,4)=[];
v1=-new2_bodyparts08(21,1); v2=-new2_bodyparts08(21,2); v3=-new2_bodyparts08(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones8=ones(length(right_wrist_8),1); new2_act8_ones=horzcat(new2_act8,ones8);
for i=1:length(right_wrist_8)
    puta=trans1*new2_act8_ones(i,:)';
    new3_act8(i,:)=puta';
end
new3_act8(:,4)=[];
ones18=ones(length(right_elbow_8),1); new2_act8elb_ones=horzcat(new2_act8elb,ones18);
for i=1:length(right_elbow_8)
    puta=trans1*new2_act8elb_ones(i,:)';
    new3_act8elb(i,:)=puta';
end
new3_act8elb(:,4)=[];
ones28=ones(length(right_shoulder_8),1); new2_act8sh_ones=horzcat(new2_act8sh,ones28);
for i=1:length(right_shoulder_8)
    puta=trans1*new2_act8sh_ones(i,:)'; new3_act8sh(i,:)=puta';
end
new3_act8sh(:,4)=[];
ones38=ones(length(right_hip_8),1); new2_act8hip_ones=horzcat(new2_act8hip,ones38);
for i=1:length(right_hip_8)
    puta=trans1*new2_act8hip_ones(i,:)'; new3_act8hip(i,:)=puta';
end
new3_act8hip(:,4)=[];
v1=-new2_bodyparts09(21,1); v2=-new2_bodyparts09(21,2); v3=-new2_bodyparts09(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones9=ones(length(right_wrist_9),1); new2_act9_ones=horzcat(new2_act9,ones9);
for i=1:length(right_wrist_9)
    puta=trans1*new2_act9_ones(i,:)';
    new3_act9(i,:)=puta';
end
new3_act9(:,4)=[];
ones19=ones(length(right_elbow_9),1); new2_act9elb_ones=horzcat(new2_act9elb,ones19);
for i=1:length(right_elbow_9)
    puta=trans1*new2_act9elb_ones(i,:)';
    new3_act9elb(i,:)=puta';
end
new3_act9elb(:,4)=[];
ones29=ones(length(right_shoulder_9),1); new2_act9sh_ones=horzcat(new2_act9sh,ones29);
for i=1:length(right_shoulder_9)
    puta=trans1*new2_act9sh_ones(i,:)'; new3_act9sh(i,:)=puta';
end
new3_act9sh(:,4)=[];
ones39=ones(length(right_hip_9),1); new2_act9hip_ones=horzcat(new2_act9hip,ones39);
for i=1:length(right_hip_9)
    puta=trans1*new2_act9hip_ones(i,:)'; new3_act9hip(i,:)=puta';
end
new3_act9hip(:,4)=[];
v1=-new2_bodyparts10(21,1); v2=-new2_bodyparts10(21,2); v3=-new2_bodyparts10(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
ones10=ones(length(right_wrist_10),1); new2_act10_ones=horzcat(new2_act10,ones10);
for i=1:length(right_wrist_10)
    puta=trans1*new2_act10_ones(i,:)';
    new3_act10(i,:)=puta';
end
new3_act10(:,4)=[];
ones20=ones(length(right_elbow_10),1); new2_act10elb_ones=horzcat(new2_act10elb,ones20);
for i=1:length(right_elbow_10)
    puta=trans1*new2_act10elb_ones(i,:)';
    new3_act10elb(i,:)=puta';
end
new3_act10elb(:,4)=[];
ones30=ones(length(right_shoulder_10),1); new2_act10sh_ones=horzcat(new2_act10sh,ones30);
for i=1:length(right_shoulder_10)
    puta=trans1*new2_act10sh_ones(i,:)'; new3_act10sh(i,:)=puta';
end
new3_act10sh(:,4)=[];
ones40=ones(length(right_hip_10),1); new2_act10hip_ones=horzcat(new2_act10hip,ones40);
for i=1:length(right_hip_10)
    puta=trans1*new2_act10hip_ones(i,:)'; new3_act10hip(i,:)=puta';
end
new3_act10hip(:,4)=[];

new3_act1(:,1)=filtfilt(d,new3_act1(:,1));new3_act1(:,2)=filtfilt(d,new3_act1(:,2));new3_act1(:,3)=filtfilt(d,new3_act1(:,3));
new3_act2(:,1)=filtfilt(d,new3_act2(:,1));new3_act2(:,2)=filtfilt(d,new3_act2(:,2));new3_act2(:,3)=filtfilt(d,new3_act2(:,3));
new3_act3(:,1)=filtfilt(d,new3_act3(:,1));new3_act3(:,2)=filtfilt(d,new3_act3(:,2));new3_act3(:,3)=filtfilt(d,new3_act3(:,3));
new3_act4(:,1)=filtfilt(d,new3_act4(:,1));new3_act4(:,2)=filtfilt(d,new3_act4(:,2));new3_act4(:,3)=filtfilt(d,new3_act4(:,3));
new3_act5(:,1)=filtfilt(d,new3_act5(:,1));new3_act5(:,2)=filtfilt(d,new3_act5(:,2));new3_act5(:,3)=filtfilt(d,new3_act5(:,3));
new3_act6(:,1)=filtfilt(d,new3_act6(:,1));new3_act6(:,2)=filtfilt(d,new3_act6(:,2));new3_act6(:,3)=filtfilt(d,new3_act6(:,3));
new3_act7(:,1)=filtfilt(d,new3_act7(:,1));new3_act7(:,2)=filtfilt(d,new3_act7(:,2));new3_act7(:,3)=filtfilt(d,new3_act7(:,3));
new3_act8(:,1)=filtfilt(d,new3_act8(:,1));new3_act8(:,2)=filtfilt(d,new3_act8(:,2));new3_act8(:,3)=filtfilt(d,new3_act8(:,3));
new3_act9(:,1)=filtfilt(d,new3_act9(:,1));new3_act9(:,2)=filtfilt(d,new3_act9(:,2));new3_act9(:,3)=filtfilt(d,new3_act9(:,3));
new3_act10(:,1)=filtfilt(d,new3_act10(:,1));new3_act10(:,2)=filtfilt(d,new3_act10(:,2));new3_act10(:,3)=filtfilt(d,new3_act10(:,3));

new3_act1elb(:,1)=filtfilt(d,new3_act1elb(:,1));new3_act1elb(:,2)=filtfilt(d,new3_act1elb(:,2));new3_act1elb(:,3)=filtfilt(d,new3_act1elb(:,3));
new3_act2elb(:,1)=filtfilt(d,new3_act2elb(:,1));new3_act2elb(:,2)=filtfilt(d,new3_act2elb(:,2));new3_act2elb(:,3)=filtfilt(d,new3_act2elb(:,3));
new3_act3elb(:,1)=filtfilt(d,new3_act3elb(:,1));new3_act3elb(:,2)=filtfilt(d,new3_act3elb(:,2));new3_act3elb(:,3)=filtfilt(d,new3_act3elb(:,3));
new3_act4elb(:,1)=filtfilt(d,new3_act4elb(:,1));new3_act4elb(:,2)=filtfilt(d,new3_act4elb(:,2));new3_act4elb(:,3)=filtfilt(d,new3_act4elb(:,3));
new3_act5elb(:,1)=filtfilt(d,new3_act5elb(:,1));new3_act5elb(:,2)=filtfilt(d,new3_act5elb(:,2));new3_act5elb(:,3)=filtfilt(d,new3_act5elb(:,3));
new3_act6elb(:,1)=filtfilt(d,new3_act6elb(:,1));new3_act6elb(:,2)=filtfilt(d,new3_act6elb(:,2));new3_act6elb(:,3)=filtfilt(d,new3_act6elb(:,3));
new3_act7elb(:,1)=filtfilt(d,new3_act7elb(:,1));new3_act7elb(:,2)=filtfilt(d,new3_act7elb(:,2));new3_act7elb(:,3)=filtfilt(d,new3_act7elb(:,3));
new3_act8elb(:,1)=filtfilt(d,new3_act8elb(:,1));new3_act8elb(:,2)=filtfilt(d,new3_act8elb(:,2));new3_act8elb(:,3)=filtfilt(d,new3_act8elb(:,3));
new3_act9elb(:,1)=filtfilt(d,new3_act9elb(:,1));new3_act9elb(:,2)=filtfilt(d,new3_act9elb(:,2));new3_act9elb(:,3)=filtfilt(d,new3_act9elb(:,3));
new3_act10elb(:,1)=filtfilt(d,new3_act10elb(:,1));new3_act10elb(:,2)=filtfilt(d,new3_act10elb(:,2));new3_act10elb(:,3)=filtfilt(d,new3_act10elb(:,3));

new3_act1sh(:,1)=filtfilt(d,new3_act1sh(:,1));new3_act1sh(:,2)=filtfilt(d,new3_act1sh(:,2));new3_act1sh(:,3)=filtfilt(d,new3_act1sh(:,3));
new3_act2sh(:,1)=filtfilt(d,new3_act2sh(:,1));new3_act2sh(:,2)=filtfilt(d,new3_act2sh(:,2));new3_act2sh(:,3)=filtfilt(d,new3_act2sh(:,3));
new3_act3sh(:,1)=filtfilt(d,new3_act3sh(:,1));new3_act3sh(:,2)=filtfilt(d,new3_act3sh(:,2));new3_act3sh(:,3)=filtfilt(d,new3_act3sh(:,3));
new3_act4sh(:,1)=filtfilt(d,new3_act4sh(:,1));new3_act4sh(:,2)=filtfilt(d,new3_act4sh(:,2));new3_act4sh(:,3)=filtfilt(d,new3_act4sh(:,3));
new3_act5sh(:,1)=filtfilt(d,new3_act5sh(:,1));new3_act5sh(:,2)=filtfilt(d,new3_act5sh(:,2));new3_act5sh(:,3)=filtfilt(d,new3_act5sh(:,3));
new3_act6sh(:,1)=filtfilt(d,new3_act6sh(:,1));new3_act6sh(:,2)=filtfilt(d,new3_act6sh(:,2));new3_act6sh(:,3)=filtfilt(d,new3_act6sh(:,3));
new3_act7sh(:,1)=filtfilt(d,new3_act7sh(:,1));new3_act7sh(:,2)=filtfilt(d,new3_act7sh(:,2));new3_act7sh(:,3)=filtfilt(d,new3_act7sh(:,3));
new3_act8sh(:,1)=filtfilt(d,new3_act8sh(:,1));new3_act8sh(:,2)=filtfilt(d,new3_act8sh(:,2));new3_act8sh(:,3)=filtfilt(d,new3_act8sh(:,3));
new3_act9sh(:,1)=filtfilt(d,new3_act9sh(:,1));new3_act9sh(:,2)=filtfilt(d,new3_act9sh(:,2));new3_act9sh(:,3)=filtfilt(d,new3_act9sh(:,3));
new3_act10sh(:,1)=filtfilt(d,new3_act10sh(:,1));new3_act10sh(:,2)=filtfilt(d,new3_act10sh(:,2));new3_act10sh(:,3)=filtfilt(d,new3_act10sh(:,3));

new3_act1hip(:,1)=filtfilt(d,new3_act1hip(:,1));new3_act1hip(:,2)=filtfilt(d,new3_act1hip(:,2));new3_act1hip(:,3)=filtfilt(d,new3_act1hip(:,3));
new3_act2hip(:,1)=filtfilt(d,new3_act2hip(:,1));new3_act2hip(:,2)=filtfilt(d,new3_act2hip(:,2));new3_act2hip(:,3)=filtfilt(d,new3_act2hip(:,3));
new3_act3hip(:,1)=filtfilt(d,new3_act3hip(:,1));new3_act3hip(:,2)=filtfilt(d,new3_act3hip(:,2));new3_act3hip(:,3)=filtfilt(d,new3_act3hip(:,3));
new3_act4hip(:,1)=filtfilt(d,new3_act4hip(:,1));new3_act4hip(:,2)=filtfilt(d,new3_act4hip(:,2));new3_act4hip(:,3)=filtfilt(d,new3_act4hip(:,3));
new3_act5hip(:,1)=filtfilt(d,new3_act5hip(:,1));new3_act5hip(:,2)=filtfilt(d,new3_act5hip(:,2));new3_act5hip(:,3)=filtfilt(d,new3_act5hip(:,3));
new3_act6hip(:,1)=filtfilt(d,new3_act6hip(:,1));new3_act6hip(:,2)=filtfilt(d,new3_act6hip(:,2));new3_act6hip(:,3)=filtfilt(d,new3_act6hip(:,3));
new3_act7hip(:,1)=filtfilt(d,new3_act7hip(:,1));new3_act7hip(:,2)=filtfilt(d,new3_act7hip(:,2));new3_act7hip(:,3)=filtfilt(d,new3_act7hip(:,3));
new3_act8hip(:,1)=filtfilt(d,new3_act8hip(:,1));new3_act8hip(:,2)=filtfilt(d,new3_act8hip(:,2));new3_act8hip(:,3)=filtfilt(d,new3_act8hip(:,3));
new3_act9hip(:,1)=filtfilt(d,new3_act9hip(:,1));new3_act9hip(:,2)=filtfilt(d,new3_act9hip(:,2));new3_act9hip(:,3)=filtfilt(d,new3_act9hip(:,3));
new3_act10hip(:,1)=filtfilt(d,new3_act10hip(:,1));new3_act10hip(:,2)=filtfilt(d,new3_act10hip(:,2));new3_act10hip(:,3)=filtfilt(d,new3_act10hip(:,3));

