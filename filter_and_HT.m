function [new3_act1, new3_act2, new3_act3, new3_act4, new3_act5, new3_act6, new3_act7,new3_act8,new3_act9,new3_act10, new3_act1elb,new3_act2elb, new3_act3elb, new3_act4elb, new3_act5elb, new3_act6elb, new3_act7elb, new3_act8elb, new3_act9elb, new3_act10elb,new3_right_hip,new3_right_shoulder, min_length] = filter_and_HT(act1, act2, act3, act4, act5, act6, act7, act8, act9, act10, d, theta1, theta2, v1, v2, v3)
%filtering part of the function
%right hip=17, right shoulder=09; right wrist=11; right elbow=10;
location = 11;
for i=1:3
    column = 2+(4*(location-1))+i;
    right_wrist_1(:,i) = act1(:,column);
    right_wrist_2(:,i) = act2(:,column);
    right_wrist_3(:,i) = act3(:,column);
    right_wrist_4(:,i) = act4(:,column);
    right_wrist_5(:,i) = act5(:,column);
    right_wrist_6(:,i) = act6(:,column);
    right_wrist_7(:,i) = act7(:,column);
    right_wrist_8(:,i) = act8(:,column);
    right_wrist_9(:,i) = act9(:,column);
    right_wrist_10(:,i) = act10(:,column);
end

right_wrist_filt_rloess1(:,1)=filtfilt(d,table2array(right_wrist_1(:,1)));
right_wrist_filt_rloess1(:,2)=filtfilt(d,table2array(right_wrist_1(:,2)));
right_wrist_filt_rloess1(:,3)=filtfilt(d,table2array(right_wrist_1(:,3)));
right_wrist_filt_rloess2(:,1)=filtfilt(d,table2array(right_wrist_2(:,1)));
right_wrist_filt_rloess2(:,2)=filtfilt(d,table2array(right_wrist_2(:,2)));
right_wrist_filt_rloess2(:,3)=filtfilt(d,table2array(right_wrist_2(:,3)));
right_wrist_filt_rloess3(:,1)=filtfilt(d,table2array(right_wrist_3(:,1)));
right_wrist_filt_rloess3(:,2)=filtfilt(d,table2array(right_wrist_3(:,2)));
right_wrist_filt_rloess3(:,3)=filtfilt(d,table2array(right_wrist_3(:,3)));
right_wrist_filt_rloess4(:,1)=filtfilt(d,table2array(right_wrist_4(:,1)));
right_wrist_filt_rloess4(:,2)=filtfilt(d,table2array(right_wrist_4(:,2)));
right_wrist_filt_rloess4(:,3)=filtfilt(d,table2array(right_wrist_4(:,3)));
right_wrist_filt_rloess5(:,1)=filtfilt(d,table2array(right_wrist_5(:,1)));
right_wrist_filt_rloess5(:,2)=filtfilt(d,table2array(right_wrist_5(:,2)));
right_wrist_filt_rloess5(:,3)=filtfilt(d,table2array(right_wrist_5(:,3)));
right_wrist_filt_rloess6(:,1)=filtfilt(d,table2array(right_wrist_6(:,1)));
right_wrist_filt_rloess6(:,2)=filtfilt(d,table2array(right_wrist_6(:,2)));
right_wrist_filt_rloess6(:,3)=filtfilt(d,table2array(right_wrist_6(:,3)));
right_wrist_filt_rloess7(:,1)=filtfilt(d,table2array(right_wrist_7(:,1)));
right_wrist_filt_rloess7(:,2)=filtfilt(d,table2array(right_wrist_7(:,2)));
right_wrist_filt_rloess7(:,3)=filtfilt(d,table2array(right_wrist_7(:,3)));
right_wrist_filt_rloess8(:,1)=filtfilt(d,table2array(right_wrist_8(:,1)));
right_wrist_filt_rloess8(:,2)=filtfilt(d,table2array(right_wrist_8(:,2)));
right_wrist_filt_rloess8(:,3)=filtfilt(d,table2array(right_wrist_8(:,3)));
right_wrist_filt_rloess9(:,1)=filtfilt(d,table2array(right_wrist_9(:,1)));
right_wrist_filt_rloess9(:,2)=filtfilt(d,table2array(right_wrist_9(:,2)));
right_wrist_filt_rloess9(:,3)=filtfilt(d,table2array(right_wrist_9(:,3)));
right_wrist_filt_rloess10(:,1)=filtfilt(d,table2array(right_wrist_10(:,1)));
right_wrist_filt_rloess10(:,2)=filtfilt(d,table2array(right_wrist_10(:,2)));
right_wrist_filt_rloess10(:,3)=filtfilt(d,table2array(right_wrist_10(:,3)));

location = 10;
for i=1:3
    column = 2+(4*(location-1))+i;
    right_elbow_1(:,i) = act1(:,column);
    right_elbow_2(:,i) = act2(:,column);
    right_elbow_3(:,i) = act3(:,column);
    right_elbow_4(:,i) = act4(:,column);
    right_elbow_5(:,i) = act5(:,column);
    right_elbow_6(:,i) = act6(:,column);
    right_elbow_7(:,i) = act7(:,column);
    right_elbow_8(:,i) = act8(:,column);
    right_elbow_9(:,i) = act9(:,column);
    right_elbow_10(:,i) = act10(:,column);
end
right_elbow_filt_rloess1(:,1)=filtfilt(d,table2array(right_elbow_1(:,1)));
right_elbow_filt_rloess1(:,2)=filtfilt(d,table2array(right_elbow_1(:,2)));
right_elbow_filt_rloess1(:,3)=filtfilt(d,table2array(right_elbow_1(:,3)));
right_elbow_filt_rloess2(:,1)=filtfilt(d,table2array(right_elbow_2(:,1)));
right_elbow_filt_rloess2(:,2)=filtfilt(d,table2array(right_elbow_2(:,2)));
right_elbow_filt_rloess2(:,3)=filtfilt(d,table2array(right_elbow_2(:,3)));
right_elbow_filt_rloess3(:,1)=filtfilt(d,table2array(right_elbow_3(:,1)));
right_elbow_filt_rloess3(:,2)=filtfilt(d,table2array(right_elbow_3(:,2)));
right_elbow_filt_rloess3(:,3)=filtfilt(d,table2array(right_elbow_3(:,3)));
right_elbow_filt_rloess4(:,1)=filtfilt(d,table2array(right_elbow_4(:,1)));
right_elbow_filt_rloess4(:,2)=filtfilt(d,table2array(right_elbow_4(:,2)));
right_elbow_filt_rloess4(:,3)=filtfilt(d,table2array(right_elbow_4(:,3)));
right_elbow_filt_rloess5(:,1)=filtfilt(d,table2array(right_elbow_5(:,1)));
right_elbow_filt_rloess5(:,2)=filtfilt(d,table2array(right_elbow_5(:,2)));
right_elbow_filt_rloess5(:,3)=filtfilt(d,table2array(right_elbow_5(:,3)));
right_elbow_filt_rloess6(:,1)=filtfilt(d,table2array(right_elbow_6(:,1)));
right_elbow_filt_rloess6(:,2)=filtfilt(d,table2array(right_elbow_6(:,2)));
right_elbow_filt_rloess6(:,3)=filtfilt(d,table2array(right_elbow_6(:,3)));
right_elbow_filt_rloess7(:,1)=filtfilt(d,table2array(right_elbow_7(:,1)));
right_elbow_filt_rloess7(:,2)=filtfilt(d,table2array(right_elbow_7(:,2)));
right_elbow_filt_rloess7(:,3)=filtfilt(d,table2array(right_elbow_7(:,3)));
right_elbow_filt_rloess8(:,1)=filtfilt(d,table2array(right_elbow_8(:,1)));
right_elbow_filt_rloess8(:,2)=filtfilt(d,table2array(right_elbow_8(:,2)));
right_elbow_filt_rloess8(:,3)=filtfilt(d,table2array(right_elbow_8(:,3)));
right_elbow_filt_rloess9(:,1)=filtfilt(d,table2array(right_elbow_9(:,1)));
right_elbow_filt_rloess9(:,2)=filtfilt(d,table2array(right_elbow_9(:,2)));
right_elbow_filt_rloess9(:,3)=filtfilt(d,table2array(right_elbow_9(:,3)));
right_elbow_filt_rloess10(:,1)=filtfilt(d,table2array(right_elbow_10(:,1)));
right_elbow_filt_rloess10(:,2)=filtfilt(d,table2array(right_elbow_10(:,2)));
right_elbow_filt_rloess10(:,3)=filtfilt(d,table2array(right_elbow_10(:,3)));

%mean of hip and shoulder
location = 17;
for i=1:3
    column = 2+(4*(location-1))+i;
    right_hip_1(:,i) = act1(:,column);
    right_hip_2(:,i) = act2(:,column);
    right_hip_3(:,i) = act3(:,column);
    right_hip_4(:,i) = act4(:,column);
    right_hip_5(:,i) = act5(:,column);
    right_hip_6(:,i) = act6(:,column);
    right_hip_7(:,i) = act7(:,column);
    right_hip_8(:,i) = act8(:,column);
    right_hip_9(:,i) = act9(:,column);
    right_hip_10(:,i) = act10(:,column);
end

lengths(1,1)=length(right_wrist_filt_rloess1(:,1));
lengths(1,2)=length(right_wrist_filt_rloess2(:,1));
lengths(1,3)=length(right_wrist_filt_rloess3(:,1));
lengths(1,4)=length(right_wrist_filt_rloess4(:,1));
lengths(1,5)=length(right_wrist_filt_rloess5(:,1));
lengths(1,6)=length(right_wrist_filt_rloess6(:,1));
lengths(1,7)=length(right_wrist_filt_rloess7(:,1));
lengths(1,8)=length(right_wrist_filt_rloess8(:,1));
lengths(1,9)=length(right_wrist_filt_rloess9(:,1));
lengths(1,10)=length(right_wrist_filt_rloess10(:,1));
min_length=min(lengths);
n=10;
for i=1:3
    for j=1:min_length
        means_right_hip(j,i)=(table2array(right_hip_1(j,i))+table2array(right_hip_2(j,i))+table2array(right_hip_3(j,i))+table2array(right_hip_4(j,i))+table2array(right_hip_5(j,i))+table2array(right_hip_6(j,i))+table2array(right_hip_7(j,i))+table2array(right_hip_8(j,i))+table2array(right_hip_9(j,i))+table2array(right_hip_10(j,i)))/n;
    end
end

location = 9;
for i=1:3
    column = 2+(4*(location-1))+i;
    right_shoulder1(:,i) = act1(:,column);
    right_shoulder2(:,i) = act2(:,column);
    right_shoulder3(:,i) = act3(:,column);
    right_shoulder4(:,i) = act4(:,column);
    right_shoulder5(:,i) = act5(:,column);
    right_shoulder6(:,i) = act6(:,column);
    right_shoulder7(:,i) = act7(:,column);
    right_shoulder8(:,i) = act8(:,column);
    right_shoulder9(:,i) = act9(:,column);
    right_shoulder10(:,i) = act10(:,column);
end

for i=1:3
    for j=1:min(lengths)
        means_right_shoulder(j,i)=(table2array(right_shoulder1(j,i))+table2array(right_shoulder2(j,i))+table2array(right_shoulder3(j,i))+table2array(right_shoulder4(j,i))+table2array(right_shoulder5(j,i))+table2array(right_shoulder6(j,i))+table2array(right_shoulder7(j,i))+table2array(right_shoulder8(j,i))+table2array(right_shoulder9(j,i))+table2array(right_shoulder10(j,i)))/n;
    end
end

%homogeneous transformation
%transform: means_right_shoulder, means_right_hip, right_wrist_filt_rloess1-10
rot1=zeros(3,3);
rot1(1,1)=1;
rot1(2,2)=cos(theta1);
rot1(2,3)=-sin(theta1);
rot1(3,2)=sin(theta1);
rot1(3,3)=cos(theta1);

rot2=zeros(3,3);
rot2(2,2)=1;
rot2(1,1)=cos(theta2);
rot2(1,3)=-sin(theta2);
rot2(3,1)=sin(theta2);
rot2(3,3)=cos(theta2);

trans1=eye(4);
trans1(1,4)=v1;
trans1(2,4)=v2;
trans1(3,4)=v3;

for i=1:length(means_right_shoulder(:,1))
    puta=rot1*means_right_shoulder(i,:)';
    new_right_shoulder(i,:)=puta';
end
for i=1:length(means_right_hip(:,1))
    puta=rot1*means_right_hip(i,:)';
    new_right_hip(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess1(:,1))
    puta=rot1*right_wrist_filt_rloess1(i,:)';
    new_act1(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess2(:,1))
    puta=rot1*right_wrist_filt_rloess2(i,:)';
    new_act2(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess3(:,1))
    puta=rot1*right_wrist_filt_rloess3(i,:)';
    new_act3(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess4(:,1))
    puta=rot1*right_wrist_filt_rloess4(i,:)';
    new_act4(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess5(:,1))
    puta=rot1*right_wrist_filt_rloess5(i,:)';
    new_act5(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess6(:,1))
    puta=rot1*right_wrist_filt_rloess6(i,:)';
    new_act6(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess7(:,1))
    puta=rot1*right_wrist_filt_rloess7(i,:)';
    new_act7(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess8(:,1))
    puta=rot1*right_wrist_filt_rloess8(i,:)';
    new_act8(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess9(:,1))
    puta=rot1*right_wrist_filt_rloess9(i,:)';
    new_act9(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess10(:,1))
    puta=rot1*right_wrist_filt_rloess10(i,:)';
    new_act10(i,:)=puta';
end

for i=1:length(right_elbow_filt_rloess1(:,1))
    puta=rot1*right_elbow_filt_rloess1(i,:)';
    new_act1elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess2(:,1))
    puta=rot1*right_elbow_filt_rloess2(i,:)';
    new_act2elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess3(:,1))
    puta=rot1*right_elbow_filt_rloess3(i,:)';
    new_act3elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess4(:,1))
    puta=rot1*right_elbow_filt_rloess4(i,:)';
    new_act4elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess5(:,1))
    puta=rot1*right_elbow_filt_rloess5(i,:)';
    new_act5elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess6(:,1))
    puta=rot1*right_elbow_filt_rloess6(i,:)';
    new_act6elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess7(:,1))
    puta=rot1*right_elbow_filt_rloess7(i,:)';
    new_act7elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess8(:,1))
    puta=rot1*right_elbow_filt_rloess8(i,:)';
    new_act8elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess9(:,1))
    puta=rot1*right_elbow_filt_rloess9(i,:)';
    new_act9elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess10(:,1))
    puta=rot1*right_elbow_filt_rloess10(i,:)';
    new_act10elb(i,:)=puta';
end

for i=1:length(means_right_shoulder(:,1))
    puta=rot2*new_right_shoulder(i,:)';
    new2_right_shoulder(i,:)=puta';
end
for i=1:length(means_right_hip(:,1))
    puta=rot2*new_right_hip(i,:)';
    new2_right_hip(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess1(:,1))
    puta=rot2*new_act1(i,:)';
    new2_act1(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess2(:,1))
    puta=rot2*new_act2(i,:)';
    new2_act2(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess3(:,1))
    puta=rot2*new_act3(i,:)';
    new2_act3(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess4(:,1))
    puta=rot2*new_act4(i,:)';
    new2_act4(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess5(:,1))
    puta=rot2*new_act5(i,:)';
    new2_act5(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess6(:,1))
    puta=rot2*new_act6(i,:)';
    new2_act6(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess7(:,1))
    puta=rot2*new_act7(i,:)';
    new2_act7(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess8(:,1))
    puta=rot2*new_act8(i,:)';
    new2_act8(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess9(:,1))
    puta=rot2*new_act9(i,:)';
    new2_act9(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess10(:,1))
    puta=rot2*new_act10(i,:)';
    new2_act10(i,:)=puta';
end

for i=1:length(right_elbow_filt_rloess1(:,1))
    puta=rot2*new_act1elb(i,:)';
    new2_act1elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess2(:,1))
    puta=rot2*new_act2elb(i,:)';
    new2_act2elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess3(:,1))
    puta=rot2*new_act3elb(i,:)';
    new2_act3elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess4(:,1))
    puta=rot2*new_act4elb(i,:)';
    new2_act4elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess5(:,1))
    puta=rot2*new_act5elb(i,:)';
    new2_act5elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess6(:,1))
    puta=rot2*new_act6elb(i,:)';
    new2_act6elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess7(:,1))
    puta=rot2*new_act7elb(i,:)';
    new2_act7elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess8(:,1))
    puta=rot2*new_act8elb(i,:)';
    new2_act8elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess9(:,1))
    puta=rot2*new_act9elb(i,:)';
    new2_act9elb(i,:)=puta';
end
for i=1:length(right_elbow_filt_rloess10(:,1))
    puta=rot2*new_act10elb(i,:)';
    new2_act10elb(i,:)=puta';
end

ones1=ones(length(means_right_shoulder),1);
means_right_shoulder_ones=horzcat(new2_right_shoulder,ones1);
for i=1:length(means_right_shoulder)
    puta=trans1*means_right_shoulder_ones(i,:)';
    new3_right_shoulder(i,:)=puta';
end
new3_right_shoulder(:,4)=[];
ones2=ones(length(means_right_hip),1);
means_right_hip_ones=horzcat(new2_right_hip,ones2);
for i=1:length(means_right_hip)
    puta=trans1*means_right_hip_ones(i,:)';
    new3_right_hip(i,:)=puta';
end
new3_right_hip(:,4)=[];
ones3=ones(length(right_wrist_filt_rloess1),1);
right_wrist_filt_rloess1_ones=horzcat(new2_act1,ones3);
for i=1:length(right_wrist_filt_rloess1)
    puta=trans1*right_wrist_filt_rloess1_ones(i,:)';
    new3_act1(i,:)=puta';
end
new3_act1(:,4)=[];
ones4=ones(length(right_wrist_filt_rloess2),1);
right_wrist_filt_rloess2_ones=horzcat(new2_act2,ones4);
for i=1:length(right_wrist_filt_rloess2)
    puta=trans1*right_wrist_filt_rloess2_ones(i,:)';
    new3_act2(i,:)=puta';
end
new3_act2(:,4)=[];
ones5=ones(length(right_wrist_filt_rloess3),1);
right_wrist_filt_rloess3_ones=horzcat(new2_act3,ones5);
for i=1:length(right_wrist_filt_rloess3)
    puta=trans1*right_wrist_filt_rloess3_ones(i,:)';
    new3_act3(i,:)=puta';
end
new3_act3(:,4)=[];
ones6=ones(length(right_wrist_filt_rloess4),1);
right_wrist_filt_rloess4_ones=horzcat(new2_act4,ones6);
for i=1:length(right_wrist_filt_rloess4)
    puta=trans1*right_wrist_filt_rloess4_ones(i,:)';
    new3_act4(i,:)=puta';
end
new3_act4(:,4)=[];
ones7=ones(length(right_wrist_filt_rloess5),1);
right_wrist_filt_rloess5_ones=horzcat(new2_act5,ones7);
for i=1:length(right_wrist_filt_rloess5)
    puta=trans1*right_wrist_filt_rloess5_ones(i,:)';
    new3_act5(i,:)=puta';
end
new3_act5(:,4)=[];
ones8=ones(length(right_wrist_filt_rloess6),1);
right_wrist_filt_rloess6_ones=horzcat(new2_act6,ones8);
for i=1:length(right_wrist_filt_rloess6)
    puta=trans1*right_wrist_filt_rloess6_ones(i,:)';
    new3_act6(i,:)=puta';
end
new3_act6(:,4)=[];
ones9=ones(length(right_wrist_filt_rloess7),1);
right_wrist_filt_rloess7_ones=horzcat(new2_act7,ones9);
for i=1:length(right_wrist_filt_rloess7)
    puta=trans1*right_wrist_filt_rloess7_ones(i,:)';
    new3_act7(i,:)=puta';
end
new3_act7(:,4)=[];
ones10=ones(length(right_wrist_filt_rloess8),1);
right_wrist_filt_rloess8_ones=horzcat(new2_act8,ones10);
for i=1:length(right_wrist_filt_rloess8)
    puta=trans1*right_wrist_filt_rloess8_ones(i,:)';
    new3_act8(i,:)=puta';
end
new3_act8(:,4)=[];
ones11=ones(length(right_wrist_filt_rloess9),1);
right_wrist_filt_rloess9_ones=horzcat(new2_act9,ones11);
for i=1:length(right_wrist_filt_rloess9)
    puta=trans1*right_wrist_filt_rloess9_ones(i,:)';
    new3_act9(i,:)=puta';
end
new3_act9(:,4)=[];
ones12=ones(length(right_wrist_filt_rloess10),1);
right_wrist_filt_rloess10_ones=horzcat(new2_act10,ones12);
for i=1:length(right_wrist_filt_rloess10)
    puta=trans1*right_wrist_filt_rloess10_ones(i,:)';
    new3_act10(i,:)=puta';
end
new3_act10(:,4)=[];

ones13=ones(length(right_elbow_filt_rloess1),1);
right_elbow_filt_rloess1_ones=horzcat(new2_act1elb,ones13);
for i=1:length(right_elbow_filt_rloess1)
    puta=trans1*right_elbow_filt_rloess1_ones(i,:)';
    new3_act1elb(i,:)=puta';
end
new3_act1elb(:,4)=[];
ones14=ones(length(right_elbow_filt_rloess2),1);
right_elbow_filt_rloess2_ones=horzcat(new2_act2elb,ones14);
for i=1:length(right_elbow_filt_rloess2)
    puta=trans1*right_elbow_filt_rloess2_ones(i,:)';
    new3_act2elb(i,:)=puta';
end
new3_act2elb(:,4)=[];
ones15=ones(length(right_elbow_filt_rloess3),1);
right_elbow_filt_rloess3_ones=horzcat(new2_act3elb,ones15);
for i=1:length(right_elbow_filt_rloess3)
    puta=trans1*right_elbow_filt_rloess3_ones(i,:)';
    new3_act3elb(i,:)=puta';
end
new3_act3elb(:,4)=[];
ones16=ones(length(right_elbow_filt_rloess4),1);
right_elbow_filt_rloess4_ones=horzcat(new2_act4elb,ones16);
for i=1:length(right_elbow_filt_rloess4)
    puta=trans1*right_elbow_filt_rloess4_ones(i,:)';
    new3_act4elb(i,:)=puta';
end
new3_act4elb(:,4)=[];
ones17=ones(length(right_elbow_filt_rloess5),1);
right_elbow_filt_rloess5_ones=horzcat(new2_act5elb,ones17);
for i=1:length(right_elbow_filt_rloess5)
    puta=trans1*right_elbow_filt_rloess5_ones(i,:)';
    new3_act5elb(i,:)=puta';
end
new3_act5elb(:,4)=[];
ones18=ones(length(right_elbow_filt_rloess6),1);
right_elbow_filt_rloess6_ones=horzcat(new2_act6elb,ones18);
for i=1:length(right_elbow_filt_rloess6)
    puta=trans1*right_elbow_filt_rloess6_ones(i,:)';
    new3_act6elb(i,:)=puta';
end
new3_act6elb(:,4)=[];
ones19=ones(length(right_elbow_filt_rloess7),1);
right_elbow_filt_rloess7_ones=horzcat(new2_act7elb,ones19);
for i=1:length(right_elbow_filt_rloess7)
    puta=trans1*right_elbow_filt_rloess7_ones(i,:)';
    new3_act7elb(i,:)=puta';
end
new3_act7elb(:,4)=[];
ones20=ones(length(right_elbow_filt_rloess8),1);
right_elbow_filt_rloess8_ones=horzcat(new2_act8elb,ones20);
for i=1:length(right_elbow_filt_rloess8)
    puta=trans1*right_elbow_filt_rloess8_ones(i,:)';
    new3_act8elb(i,:)=puta';
end
new3_act8elb(:,4)=[];
ones21=ones(length(right_elbow_filt_rloess9),1);
right_elbow_filt_rloess9_ones=horzcat(new2_act9elb,ones21);
for i=1:length(right_elbow_filt_rloess9)
    puta=trans1*right_elbow_filt_rloess9_ones(i,:)';
    new3_act9elb(i,:)=puta';
end
new3_act9elb(:,4)=[];
ones22=ones(length(right_elbow_filt_rloess10),1);
right_elbow_filt_rloess10_ones=horzcat(new2_act10elb,ones22);
for i=1:length(right_elbow_filt_rloess10)
    puta=trans1*right_elbow_filt_rloess10_ones(i,:)';
    new3_act10elb(i,:)=puta';
end
new3_act10elb(:,4)=[];

