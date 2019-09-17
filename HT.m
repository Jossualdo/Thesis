function [new3_act1] = HT(right_wrist_filt_rloess1, theta1, theta2, v1, v2, v3)
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

for i=1:length(right_wrist_filt_rloess1(:,1))
    puta=rot1*right_wrist_filt_rloess1(i,:)';
    new_act1(i,:)=puta';
end
for i=1:length(right_wrist_filt_rloess1(:,1))
    puta=rot2*new_act1(i,:)';
    new2_act1(i,:)=puta';
end
ones3=ones(length(right_wrist_filt_rloess1),1);
right_wrist_filt_rloess1_ones=horzcat(new2_act1,ones3);
for i=1:length(right_wrist_filt_rloess1)
    puta=trans1*right_wrist_filt_rloess1_ones(i,:)';
    new3_act1(i,:)=puta';
end
new3_act1(:,4)=[];
