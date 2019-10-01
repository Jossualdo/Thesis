%function angles: first 10 regarding hip-shoulder-elbow angles and next 10 regarding shoulder-elbow-wrist angles
function [a]=Angles_function(new3_act1hip, new3_act2hip, new3_act3hip, new3_act4hip, new3_act5hip, new3_act6hip, new3_act7hip, new3_act8hip, new3_act9hip, new3_act10hip, new3_act1sh, new3_act2sh, new3_act3sh, new3_act4sh, new3_act5sh, new3_act6sh, new3_act7sh, new3_act8sh, new3_act9sh, new3_act10sh, new3_act1elb, new3_act2elb, new3_act3elb, new3_act4elb, new3_act5elb, new3_act6elb, new3_act7elb, new3_act8elb, new3_act9elb, new3_act10elb, new3_act1, new3_act2, new3_act3, new3_act4, new3_act5, new3_act6, new3_act7, new3_act8, new3_act9, new3_act10, min_length)
%from hip to shoulder
for i=1:min_length
    vector_hipshoulder(i,:)=abs(new3_act1hip(i,:)-new3_act1sh(i,:));
    vector_hipshoulder2(i,:)=abs(new3_act2hip(i,:)-new3_act2sh(i,:));
    vector_hipshoulder3(i,:)=abs(new3_act3hip(i,:)-new3_act3sh(i,:));
    vector_hipshoulder4(i,:)=abs(new3_act4hip(i,:)-new3_act4sh(i,:));
    vector_hipshoulder5(i,:)=abs(new3_act5hip(i,:)-new3_act5sh(i,:));
    vector_hipshoulder6(i,:)=abs(new3_act6hip(i,:)-new3_act6sh(i,:));
    vector_hipshoulder7(i,:)=abs(new3_act7hip(i,:)-new3_act7sh(i,:));
    vector_hipshoulder8(i,:)=abs(new3_act8hip(i,:)-new3_act8sh(i,:));
    vector_hipshoulder9(i,:)=abs(new3_act9hip(i,:)-new3_act9sh(i,:));
    vector_hipshoulder10(i,:)=abs(new3_act10hip(i,:)-new3_act10sh(i,:));
end
%from shoulder to elbow
for i=1:min_length
    vector_shoulderelbow(i,:)=abs(new3_act1elb(i,:)-new3_act1sh(i,:));
    vector_shoulderelbow2(i,:)=abs(new3_act2elb(i,:)-new3_act2sh(i,:));
    vector_shoulderelbow3(i,:)=abs(new3_act3elb(i,:)-new3_act3sh(i,:));
    vector_shoulderelbow4(i,:)=abs(new3_act4elb(i,:)-new3_act4sh(i,:));
    vector_shoulderelbow5(i,:)=abs(new3_act5elb(i,:)-new3_act5sh(i,:));
    vector_shoulderelbow6(i,:)=abs(new3_act6elb(i,:)-new3_act6sh(i,:));
    vector_shoulderelbow7(i,:)=abs(new3_act7elb(i,:)-new3_act7sh(i,:));
    vector_shoulderelbow8(i,:)=abs(new3_act8elb(i,:)-new3_act8sh(i,:));
    vector_shoulderelbow9(i,:)=abs(new3_act9elb(i,:)-new3_act9sh(i,:));
    vector_shoulderelbow10(i,:)=abs(new3_act10elb(i,:)-new3_act10sh(i,:));
end
%from elbow to wrist
for i=1:min_length
    vector_elbowwrist(i,:)=abs(new3_act1(i,:)-new3_act1elb(i,:));
    vector_elbowwrist2(i,:)=abs(new3_act2(i,:)-new3_act2elb(i,:));
    vector_elbowwrist3(i,:)=abs(new3_act3(i,:)-new3_act3elb(i,:));
    vector_elbowwrist4(i,:)=abs(new3_act4(i,:)-new3_act4elb(i,:));
    vector_elbowwrist5(i,:)=abs(new3_act5(i,:)-new3_act5elb(i,:));
    vector_elbowwrist6(i,:)=abs(new3_act6(i,:)-new3_act6elb(i,:));
    vector_elbowwrist7(i,:)=abs(new3_act7(i,:)-new3_act7elb(i,:));
    vector_elbowwrist8(i,:)=abs(new3_act8(i,:)-new3_act8elb(i,:));
    vector_elbowwrist9(i,:)=abs(new3_act9(i,:)-new3_act9elb(i,:));
    vector_elbowwrist10(i,:)=abs(new3_act10(i,:)-new3_act10elb(i,:));
end
%angles hip-shoulder/\shoulder-elbow
for i=1:min_length
   a(i,1) = atan2d(norm(cross(vector_hipshoulder(i,:),vector_shoulderelbow(i,:))),dot(vector_hipshoulder(i,:),vector_shoulderelbow(i,:)));
end
for i=1:min_length
   a(i,2) = atan2d(norm(cross(vector_hipshoulder2(i,:),vector_shoulderelbow2(i,:))),dot(vector_hipshoulder2(i,:),vector_shoulderelbow2(i,:)));
end
for i=1:min_length
   a(i,3) = atan2d(norm(cross(vector_hipshoulder3(i,:),vector_shoulderelbow3(i,:))),dot(vector_hipshoulder3(i,:),vector_shoulderelbow3(i,:)));
end
for i=1:min_length
   a(i,4) = atan2d(norm(cross(vector_hipshoulder4(i,:),vector_shoulderelbow4(i,:))),dot(vector_hipshoulder4(i,:),vector_shoulderelbow4(i,:)));
end
for i=1:min_length
   a(i,5) = atan2d(norm(cross(vector_hipshoulder5(i,:),vector_shoulderelbow5(i,:))),dot(vector_hipshoulder5(i,:),vector_shoulderelbow5(i,:)));
end
for i=1:min_length
   a(i,6) = atan2d(norm(cross(vector_hipshoulder6(i,:),vector_shoulderelbow6(i,:))),dot(vector_hipshoulder6(i,:),vector_shoulderelbow6(i,:)));
end
for i=1:min_length
   a(i,7) = atan2d(norm(cross(vector_hipshoulder7(i,:),vector_shoulderelbow7(i,:))),dot(vector_hipshoulder7(i,:),vector_shoulderelbow7(i,:)));
end
for i=1:min_length
   a(i,8) = atan2d(norm(cross(vector_hipshoulder8(i,:),vector_shoulderelbow8(i,:))),dot(vector_hipshoulder8(i,:),vector_shoulderelbow8(i,:)));
end
for i=1:min_length
   a(i,9) = atan2d(norm(cross(vector_hipshoulder9(i,:),vector_shoulderelbow9(i,:))),dot(vector_hipshoulder9(i,:),vector_shoulderelbow9(i,:)));
end
for i=1:min_length
   a(i,10) = atan2d(norm(cross(vector_hipshoulder10(i,:),vector_shoulderelbow10(i,:))),dot(vector_hipshoulder10(i,:),vector_shoulderelbow10(i,:)));
end

%angles shoulder-elbow/\elbow-wrist
for i=1:min_length
   a(i,11) = atan2d(norm(cross(vector_shoulderelbow(i,:),vector_elbowwrist(i,:))),dot(vector_shoulderelbow(i,:),vector_elbowwrist(i,:)));
end
for i=1:min_length
   a(i,12) = atan2d(norm(cross(vector_shoulderelbow2(i,:),vector_elbowwrist2(i,:))),dot(vector_shoulderelbow2(i,:),vector_elbowwrist2(i,:)));
end
for i=1:min_length
   a(i,13) = atan2d(norm(cross(vector_shoulderelbow3(i,:),vector_elbowwrist3(i,:))),dot(vector_shoulderelbow3(i,:),vector_elbowwrist3(i,:)));
end
for i=1:min_length
   a(i,14) = atan2d(norm(cross(vector_shoulderelbow4(i,:),vector_elbowwrist4(i,:))),dot(vector_shoulderelbow4(i,:),vector_elbowwrist4(i,:)));
end
for i=1:min_length
   a(i,15) = atan2d(norm(cross(vector_shoulderelbow5(i,:),vector_elbowwrist5(i,:))),dot(vector_shoulderelbow5(i,:),vector_elbowwrist5(i,:)));
end
for i=1:min_length
   a(i,16) = atan2d(norm(cross(vector_shoulderelbow6(i,:),vector_elbowwrist6(i,:))),dot(vector_shoulderelbow6(i,:),vector_elbowwrist6(i,:)));
end
for i=1:min_length
   a(i,17) = atan2d(norm(cross(vector_shoulderelbow7(i,:),vector_elbowwrist7(i,:))),dot(vector_shoulderelbow7(i,:),vector_elbowwrist7(i,:)));
end
for i=1:min_length
   a(i,18) = atan2d(norm(cross(vector_shoulderelbow8(i,:),vector_elbowwrist8(i,:))),dot(vector_shoulderelbow8(i,:),vector_elbowwrist8(i,:)));
end
for i=1:min_length
   a(i,19) = atan2d(norm(cross(vector_shoulderelbow9(i,:),vector_elbowwrist9(i,:))),dot(vector_shoulderelbow9(i,:),vector_elbowwrist9(i,:)));
end
for i=1:min_length
   a(i,20) = atan2d(norm(cross(vector_shoulderelbow10(i,:),vector_elbowwrist10(i,:))),dot(vector_shoulderelbow10(i,:),vector_elbowwrist10(i,:)));
end

for i=1:20
    for j=1:min_length
        a(j,i)=180-a(j,i);
    end
end
