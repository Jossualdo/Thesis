%filtering raising hand
%WRIST
location = 11;
for i=1:3
    column = 2+(4*(location-1))+i;
    wrist_rh_1(:,i) = raising(:,column);
end
wrist_rh_1=table2array(wrist_rh_1);
%comparison
%rotation1 78º around X axis 
theta1=1.36136;
%rotation2 180º around Z axis
theta2=3.14159;
%translation
n=25;
bodyparts01=zeros(n,3);act1_b=table2array(raising);
for location=1:n
    for i=1:3
        column = 2+(4*(location-1))+i;
        if(location==1)
            bodyparts01(:,i) = vertcat(act1_b(1,column),zeros(n-1,1));
            else
            bodyparts01(:,i) = vertcat(bodyparts01(1:(location-1),i),act1_b(1,column),zeros((length(bodyparts01(:,1))-location),1));
        end
    end
end
rot1=zeros(3,3); rot1(1,1)=1; rot1(2,2)=cos(theta1); rot1(2,3)=-sin(theta1); rot1(3,2)=sin(theta1); rot1(3,3)=cos(theta1);
for i=1:length(bodyparts01(:,1))
    puta=rot1*bodyparts01(i,:)'; new_bodyparts01(i,:)=puta';
end
rot2=zeros(3,3); rot2(2,2)=cos(theta2); rot2(1,1)=cos(theta2); rot2(1,2)=-sin(theta2); rot2(2,1)=sin(theta2); rot2(3,3)=1;
for i=1:length(new_bodyparts01(:,1))
    puta=rot2*new_bodyparts01(i,:)'; new2_bodyparts01(i,:)=puta';
end
v1=-new2_bodyparts01(21,1); v2=-new2_bodyparts01(21,2); v3=-new2_bodyparts01(21,3);trans1=eye(4); trans1(1,4)=v1;trans1(2,4)=v2;trans1(3,4)=v3;
[wrist_rh_1_ht]=HT(wrist_rh_1, theta1, theta2, v1, v2, v3);
%frames to time
[time1_dr, time2_dr, time3_dr, time4_dr, time5_dr, time6_dr, time7_dr, time8_dr, time9_dr, time10_dr, min_time_dr, X_time_dr]=frames2time_function(drinking, drinking2, drinking3, drinking4, drinking5, drinking6, drinking7, drinking8, drinking9, drinking10);
[time11_dr, time12_dr, time13_dr, time14_dr, time15_dr, time16_dr, time17_dr, time18_dr, time19_dr, time20_dr, min_time2_dr, X_time2_dr]=frames2time_function(drinking11, drinking12, drinking13, drinking14, drinking15, drinking16, drinking17, drinking18, drinking19, drinking20);
[time21_dr, time22_dr, time23_dr, time24_dr, time25_dr, time26_dr, time27_dr, time28_dr, time29_dr, time30_dr, min_time3_dr, X_time3_dr]=frames2time_function(drinking21, drinking22, drinking23, drinking24, drinking25, drinking26, drinking27, drinking28, drinking29, drinking30);
[time31_dr, time32_dr, time33_dr, time34_dr, time35_dr, time36_dr, time37_dr, time38_dr, time39_dr, time40_dr, min_time4_dr, X_time4_dr]=frames2time_function(drinking31, drinking32, drinking33, drinking34, drinking35, drinking36, drinking37, drinking38, drinking39, drinking40);
[time41_dr, time42_dr, time43_dr, time44_dr, time45_dr, time46_dr, time47_dr, time48_dr, time49_dr, time50_dr, min_time5_dr, X_time5_dr]=frames2time_function(drinking41, drinking42, drinking43, drinking44, drinking45, drinking46, drinking47, drinking48, drinking49, drinking50);
[time51_dr, time52_dr, time53_dr, time54_dr, time55_dr, time56_dr, time57_dr, time58_dr, time59_dr, time60_dr, min_time6_dr, X_time6_dr]=frames2time_function(drinking51, drinking52, drinking53, drinking54, drinking55, drinking56, drinking57, drinking58, drinking59, drinking60);

[time1_rh, time2_rh, time3_rh, time4_rh, time5_rh, time6_rh, time7_rh, time8_rh, time9_rh, time10_rh, min_time_rh, X_time_rh]=frames2time_function(raising, raising2, raising3, raising4, raising5, raising6, raising7, raising8, raising9, raising10);
[time11_rh, time12_rh, time13_rh, time14_rh, time15_rh, time16_rh, time17_rh, time18_rh, time19_rh, time20_rh, min_time2_rh, X_time2_rh]=frames2time_function(raising11, raising12, raising13, raising14, raising15, raising16, raising17, raising18, raising19, raising20);
[time21_rh, time22_rh, time23_rh, time24_rh, time25_rh, time26_rh, time27_rh, time28_rh, time29_rh, time30_rh, min_time3_rh, X_time3_rh]=frames2time_function(raising21, raising22, raising23, raising24, raising25, raising26, raising27, raising28, raising29, raising30);
[time31_rh, time32_rh, time33_rh, time34_rh, time35_rh, time36_rh, time37_rh, time38_rh, time39_rh, time40_rh, min_time4_rh, X_time4_rh]=frames2time_function(raising31, raising32, raising33, raising34, raising35, raising36, raising37, raising38, raising39, raising40);
[time41_rh, time42_rh, time43_rh, time44_rh, time45_rh, time46_rh, time47_rh, time48_rh, time49_rh, time50_rh, min_time5_rh, X_time5_rh]=frames2time_function(raising41, raising42, raising43, raising44, raising45, raising46, raising47, raising48, raising49, raising50);
[time51_rh, time52_rh, time53_rh, time54_rh, time55_rh, time56_rh, time57_rh, time58_rh, time59_rh, time60_rh, min_time6_rh, X_time6_rh]=frames2time_function(raising51, raising52, raising53, raising54, raising55, raising56, raising57, raising58, raising59, raising60);

[time1_tel, time2_tel, time3_tel, time4_tel, time5_tel, time6_tel, time7_tel, time8_tel, time9_tel, time10_tel, min_time_tel, X_time_tel]=frames2time_function(tele, tele2, tele3, tele4, tele5, tele6, tele7, tele8, tele9, tele10);
[time11_tel, time12_tel, time13_tel, time14_tel, time15_tel, time16_tel, time17_tel, time18_tel, time19_tel, time20_tel, min_time2_tel, X_time2_tel]=frames2time_function(tele11, tele12, tele13, tele14, tele15, tele16, tele17, tele18, tele19, tele20);
[time21_tel, time22_tel, time23_tel, time24_tel, time25_tel, time26_tel, time27_tel, time28_tel, time29_tel, time30_tel, min_time3_tel, X_time3_tel]=frames2time_function(tele21, tele22, tele23, tele24, tele25, tele26, tele27, tele28, tele29, tele30);
[time31_tel, time32_tel, time33_tel, time34_tel, time35_tel, time36_tel, time37_tel, time38_tel, time39_tel, time40_tel, min_time4_tel, X_time4_tel]=frames2time_function(tele31, tele32, tele33, tele34, tele35, tele36, tele37, tele38, tele39, tele40);
[time41_tel, time42_tel, time43_tel, time44_tel, time45_tel, time46_tel, time47_tel, time48_tel, time49_tel, time50_tel, min_time5_tel, X_time5_tel]=frames2time_function(tele41, tele42, tele43, tele44, tele45, tele46, tele47, tele48, tele49, tele50);
[time51_tel, time52_tel, time53_tel, time54_tel, time55_tel, time56_tel, time57_tel, time58_tel, time59_tel, time60_tel, min_time6_tel, X_time6_tel]=frames2time_function(tele51, tele52, tele53, tele54, tele55, tele56, tele57, tele58, tele59, tele60);

%% 
%3D
figure,
scatter3(wrist_rh_1_ht(:,1),wrist_rh_1_ht(:,2),wrist_rh_1_ht(:,3),0.5,'b'); hold on
scatter3(new3_raising1(:,1),new3_raising1(:,2),new3_raising1(:,3),0.5,'r'); hold on
newplotVRROOMman(trunkCenter,raising20);
hold on
legend('non filtered','filtered');
title('non filtered vs filtered');
view([85 100 30])

%2D
figure('Name','Right Wrist Location - RAISING HAND'),
for i=1:3
    if(i==1)
        txt='X coordinate';
    else
        if(i==2)
            txt='Y coordinate';
        else
            if(i==3)
                txt='Z coordinate';
            end
        end
    end         
    subplot(2,3,i)
    plot(time1_rh,wrist_rh_1_ht(:,i))
    xlabel('Time (sec)');
    ylabel('ORIGINAL');
    title(txt);
end
for i=1:3
    if(i==1)
        txt='X coordinate';
    else
        if(i==2)
            txt='Y coordinate';
        else
            if(i==3)
                txt='Z coordinate';
            end
        end
    end         
    subplot(2,3,i+3)
    plot(time1_rh,new3_raising1(:,i))
    xlabel('Time (sec)');
    ylabel('SMOOTH');
    title(txt);
end

%% 

%HIP - check that the hip location doesnt move as you are moving the joint
% location = 17;
% for i=1:3
%     column = 2+(4*(location-1))+i;
%     hip_rh_1(:,i) = raising4(:,column);
% end
% hip_rh_1=table2array(hip_rh_1);
% [hip_rh_1_ht]=HT(hip_rh_1, theta1, theta2, v1, v2, v3);
% 
% x=mean(hip_rh_1_ht(:,1));
% y=mean(hip_rh_1_ht(:,2));
% z=mean(hip_rh_1_ht(:,3));
% mean_hip_rh_1_ht=zeros(1,3);
% mean_hip_rh_1_ht(1,1)=x;mean_hip_rh_1_ht(1,2)=y;mean_hip_rh_1_ht(1,3)=z;
% % Z=zeros(length(hip_rh_1_ht(:,1)),2);
% % Z(:,1)=hip_rh_1_ht(:,1);
% % Z(:,2)=hip_rh_1_ht(:,2);
% figure,
% % scatter3(wrist_rh_1_ht(:,1),wrist_rh_1_ht(:,2),wrist_rh_1_ht(:,3),0.7,'b'); hold on
% % scatter3(new3_raising1(:,1),new3_raising1(:,2),new3_raising1(:,3),0.7,'r'); hold on
% scatter3(hip_rh_1_ht(:,1),hip_rh_1_ht(:,2),hip_rh_1_ht(:,3),0.7,'k'); hold on
% scatter3(mean_hip_rh_1_ht(:,1),mean_hip_rh_1_ht(:,2),mean_hip_rh_1_ht(:,3),100,'MarkerEdgeColor','k','MarkerFaceColor','y'); hold on
% 
% scatter(hip_rh_1_ht(:,1),hip_rh_1_ht(:,2),5); hold on
% [n,c] = hist3([hip_rh_1_ht(:,1), hip_rh_1_ht(:,2)]);
% contour(c{1},c{2},n.','ShowText','on'); hold on
% pcolor(c{1},c{2},n.'); hold off
% title('HIP');

%% ANGLES
% Vectors
[a_dr]=Angles_function(new3_drinking1hip,new3_drinking2hip,new3_drinking3hip,new3_drinking4hip,new3_drinking5hip,new3_drinking6hip,new3_drinking7hip,new3_drinking8hip,new3_drinking9hip,new3_drinking10hip,new3_drinking1sh,new3_drinking2sh,new3_drinking3sh,new3_drinking4sh,new3_drinking5sh,new3_drinking6sh,new3_drinking7sh,new3_drinking8sh,new3_drinking9sh,new3_drinking10sh, new3_drinking1elb, new3_drinking2elb, new3_drinking3elb, new3_drinking4elb, new3_drinking5elb, new3_drinking6elb, new3_drinking7elb, new3_drinking8elb, new3_drinking9elb, new3_drinking10elb, new3_drinking1, new3_drinking2, new3_drinking3, new3_drinking4, new3_drinking5, new3_drinking6, new3_drinking7, new3_drinking8, new3_drinking9, new3_drinking10, minlength_drinking);
[a_dr2]=Angles_function(new3_drinking11hip,new3_drinking12hip,new3_drinking13hip,new3_drinking14hip,new3_drinking15hip,new3_drinking16hip,new3_drinking17hip,new3_drinking18hip,new3_drinking19hip,new3_drinking20hip,new3_drinking11sh,new3_drinking12sh,new3_drinking13sh,new3_drinking14sh,new3_drinking15sh,new3_drinking16sh,new3_drinking17sh,new3_drinking18sh,new3_drinking19sh,new3_drinking20sh, new3_drinking11elb, new3_drinking12elb, new3_drinking13elb, new3_drinking14elb, new3_drinking15elb, new3_drinking16elb, new3_drinking17elb, new3_drinking18elb, new3_drinking19elb, new3_drinking20elb, new3_drinking11, new3_drinking12, new3_drinking13, new3_drinking14, new3_drinking15, new3_drinking16, new3_drinking17, new3_drinking18, new3_drinking19, new3_drinking20, minlength2_drinking);
[a_dr3]=Angles_function(new3_drinking21hip,new3_drinking22hip,new3_drinking23hip,new3_drinking24hip,new3_drinking25hip,new3_drinking26hip,new3_drinking27hip,new3_drinking28hip,new3_drinking29hip,new3_drinking30hip,new3_drinking21sh,new3_drinking22sh,new3_drinking23sh,new3_drinking24sh,new3_drinking25sh,new3_drinking26sh,new3_drinking27sh,new3_drinking28sh,new3_drinking29sh,new3_drinking30sh, new3_drinking21elb, new3_drinking22elb, new3_drinking23elb, new3_drinking24elb, new3_drinking25elb, new3_drinking26elb, new3_drinking27elb, new3_drinking28elb, new3_drinking29elb, new3_drinking30elb, new3_drinking21, new3_drinking22, new3_drinking23, new3_drinking24, new3_drinking25, new3_drinking26, new3_drinking27, new3_drinking28, new3_drinking29, new3_drinking30, minlength3_drinking);
[a_dr4]=Angles_function(new3_drinking31hip,new3_drinking32hip,new3_drinking33hip,new3_drinking34hip,new3_drinking35hip,new3_drinking36hip,new3_drinking37hip,new3_drinking38hip,new3_drinking39hip,new3_drinking40hip,new3_drinking31sh,new3_drinking32sh,new3_drinking33sh,new3_drinking34sh,new3_drinking35sh,new3_drinking36sh,new3_drinking37sh,new3_drinking38sh,new3_drinking39sh,new3_drinking40sh, new3_drinking31elb, new3_drinking32elb, new3_drinking33elb, new3_drinking34elb, new3_drinking35elb, new3_drinking36elb, new3_drinking37elb, new3_drinking38elb, new3_drinking39elb, new3_drinking40elb, new3_drinking31, new3_drinking32, new3_drinking33, new3_drinking34, new3_drinking35, new3_drinking36, new3_drinking37, new3_drinking38, new3_drinking39, new3_drinking40, minlength4_drinking);
[a_dr5]=Angles_function(new3_drinking41hip,new3_drinking42hip,new3_drinking43hip,new3_drinking44hip,new3_drinking45hip,new3_drinking46hip,new3_drinking47hip,new3_drinking48hip,new3_drinking49hip,new3_drinking50hip,new3_drinking41sh,new3_drinking42sh,new3_drinking43sh,new3_drinking44sh,new3_drinking45sh,new3_drinking46sh,new3_drinking47sh,new3_drinking48sh,new3_drinking49sh,new3_drinking50sh, new3_drinking41elb, new3_drinking42elb, new3_drinking43elb, new3_drinking44elb, new3_drinking45elb, new3_drinking46elb, new3_drinking47elb, new3_drinking48elb, new3_drinking49elb, new3_drinking50elb, new3_drinking41, new3_drinking42, new3_drinking43, new3_drinking44, new3_drinking45, new3_drinking46, new3_drinking47, new3_drinking48, new3_drinking49, new3_drinking50, minlength5_drinking);
[a_dr6]=Angles_function(new3_drinking51hip,new3_drinking52hip,new3_drinking53hip,new3_drinking54hip,new3_drinking55hip,new3_drinking56hip,new3_drinking57hip,new3_drinking58hip,new3_drinking59hip,new3_drinking60hip,new3_drinking51sh,new3_drinking52sh,new3_drinking53sh,new3_drinking54sh,new3_drinking55sh,new3_drinking56sh,new3_drinking57sh,new3_drinking58sh,new3_drinking59sh,new3_drinking60sh, new3_drinking51elb, new3_drinking52elb, new3_drinking53elb, new3_drinking54elb, new3_drinking55elb, new3_drinking56elb, new3_drinking57elb, new3_drinking58elb, new3_drinking59elb, new3_drinking60elb, new3_drinking51, new3_drinking52, new3_drinking53, new3_drinking54, new3_drinking55, new3_drinking56, new3_drinking57, new3_drinking58, new3_drinking59, new3_drinking60, minlength6_drinking);

[a_rh]=Angles_function(new3_raising1hip,new3_raising2hip,new3_raising3hip,new3_raising4hip,new3_raising5hip,new3_raising6hip,new3_raising7hip,new3_raising8hip,new3_raising9hip,new3_raising10hip, new3_raising1sh,new3_raising2sh,new3_raising3sh,new3_raising4sh,new3_raising5sh,new3_raising6sh,new3_raising7sh,new3_raising8sh,new3_raising9sh,new3_raising10sh, new3_raising1elb, new3_raising2elb, new3_raising3elb, new3_raising4elb, new3_raising5elb, new3_raising6elb, new3_raising7elb, new3_raising8elb, new3_raising9elb, new3_raising10elb, new3_raising1, new3_raising2, new3_raising3, new3_raising4, new3_raising5, new3_raising6, new3_raising7, new3_raising8, new3_raising9, new3_raising10, minlength_raising);
[a_rh2]=Angles_function(new3_raising11hip,new3_raising12hip,new3_raising13hip,new3_raising14hip,new3_raising15hip,new3_raising16hip,new3_raising17hip,new3_raising18hip,new3_raising19hip,new3_raising20hip, new3_raising11sh,new3_raising12sh,new3_raising13sh,new3_raising14sh,new3_raising15sh,new3_raising16sh,new3_raising17sh,new3_raising18sh,new3_raising19sh,new3_raising20sh, new3_raising11elb, new3_raising12elb, new3_raising13elb, new3_raising14elb, new3_raising15elb, new3_raising16elb, new3_raising17elb, new3_raising18elb, new3_raising19elb, new3_raising20elb, new3_raising11, new3_raising12, new3_raising13, new3_raising14, new3_raising15, new3_raising16, new3_raising17, new3_raising18, new3_raising19, new3_raising20, minlength2_raising);
[a_rh3]=Angles_function(new3_raising21hip,new3_raising22hip,new3_raising23hip,new3_raising24hip,new3_raising25hip,new3_raising26hip,new3_raising27hip,new3_raising28hip,new3_raising29hip,new3_raising30hip, new3_raising21sh,new3_raising22sh,new3_raising23sh,new3_raising24sh,new3_raising25sh,new3_raising26sh,new3_raising27sh,new3_raising28sh,new3_raising29sh,new3_raising30sh, new3_raising21elb, new3_raising22elb, new3_raising23elb, new3_raising24elb, new3_raising25elb, new3_raising26elb, new3_raising27elb, new3_raising28elb, new3_raising29elb, new3_raising30elb, new3_raising21, new3_raising22, new3_raising23, new3_raising24, new3_raising25, new3_raising26, new3_raising27, new3_raising28, new3_raising29, new3_raising30, minlength3_raising);
[a_rh4]=Angles_function(new3_raising31hip,new3_raising32hip,new3_raising33hip,new3_raising34hip,new3_raising35hip,new3_raising36hip,new3_raising37hip,new3_raising38hip,new3_raising39hip,new3_raising40hip, new3_raising31sh,new3_raising32sh,new3_raising33sh,new3_raising34sh,new3_raising35sh,new3_raising36sh,new3_raising37sh,new3_raising38sh,new3_raising39sh,new3_raising40sh, new3_raising31elb, new3_raising32elb, new3_raising33elb, new3_raising34elb, new3_raising35elb, new3_raising36elb, new3_raising37elb, new3_raising38elb, new3_raising39elb, new3_raising40elb, new3_raising31, new3_raising32, new3_raising33, new3_raising34, new3_raising35, new3_raising36, new3_raising37, new3_raising38, new3_raising39, new3_raising40, minlength4_raising);
[a_rh5]=Angles_function(new3_raising41hip,new3_raising42hip,new3_raising43hip,new3_raising44hip,new3_raising45hip,new3_raising46hip,new3_raising47hip,new3_raising48hip,new3_raising49hip,new3_raising50hip, new3_raising41sh,new3_raising42sh,new3_raising43sh,new3_raising44sh,new3_raising45sh,new3_raising46sh,new3_raising47sh,new3_raising48sh,new3_raising49sh,new3_raising50sh, new3_raising41elb, new3_raising42elb, new3_raising43elb, new3_raising44elb, new3_raising45elb, new3_raising46elb, new3_raising47elb, new3_raising48elb, new3_raising49elb, new3_raising50elb, new3_raising41, new3_raising42, new3_raising43, new3_raising44, new3_raising45, new3_raising46, new3_raising47, new3_raising48, new3_raising49, new3_raising50, minlength5_raising);
[a_rh6]=Angles_function(new3_raising51hip,new3_raising52hip,new3_raising53hip,new3_raising54hip,new3_raising55hip,new3_raising56hip,new3_raising57hip,new3_raising58hip,new3_raising59hip,new3_raising60hip, new3_raising51sh,new3_raising52sh,new3_raising53sh,new3_raising54sh,new3_raising55sh,new3_raising56sh,new3_raising57sh,new3_raising58sh,new3_raising59sh,new3_raising60sh, new3_raising51elb, new3_raising52elb, new3_raising53elb, new3_raising54elb, new3_raising55elb, new3_raising56elb, new3_raising57elb, new3_raising58elb, new3_raising59elb, new3_raising60elb, new3_raising51, new3_raising52, new3_raising53, new3_raising54, new3_raising55, new3_raising56, new3_raising57, new3_raising58, new3_raising59, new3_raising60, minlength6_raising);

[a_tel]=Angles_function(new3_tele1hip,new3_tele2hip,new3_tele3hip,new3_tele4hip,new3_tele5hip,new3_tele6hip,new3_tele7hip,new3_tele8hip,new3_tele9hip,new3_tele10hip, new3_tele1sh,new3_tele2sh,new3_tele3sh,new3_tele4sh,new3_tele5sh,new3_tele6sh,new3_tele7sh,new3_tele8sh,new3_tele9sh,new3_tele10sh, new3_tele1elb, new3_tele2elb, new3_tele3elb, new3_tele4elb, new3_tele5elb, new3_tele6elb, new3_tele7elb, new3_tele8elb, new3_tele9elb, new3_tele10elb, new3_tele1, new3_tele2, new3_tele3, new3_tele4, new3_tele5, new3_tele6, new3_tele7, new3_tele8, new3_tele9, new3_tele10, minlength_tele);
[a_tel2]=Angles_function(new3_tele11hip,new3_tele12hip,new3_tele13hip,new3_tele14hip,new3_tele15hip,new3_tele16hip,new3_tele17hip,new3_tele18hip,new3_tele19hip,new3_tele20hip, new3_tele11sh,new3_tele12sh,new3_tele13sh,new3_tele14sh,new3_tele15sh,new3_tele16sh,new3_tele17sh,new3_tele18sh,new3_tele19sh,new3_tele20sh, new3_tele11elb, new3_tele12elb, new3_tele13elb, new3_tele14elb, new3_tele15elb, new3_tele16elb, new3_tele17elb, new3_tele18elb, new3_tele19elb, new3_tele20elb, new3_tele11, new3_tele12, new3_tele13, new3_tele14, new3_tele15, new3_tele16, new3_tele17, new3_tele18, new3_tele19, new3_tele20, minlength2_tele);
[a_tel3]=Angles_function(new3_tele21hip,new3_tele22hip,new3_tele23hip,new3_tele24hip,new3_tele25hip,new3_tele26hip,new3_tele27hip,new3_tele28hip,new3_tele29hip,new3_tele30hip, new3_tele21sh,new3_tele22sh,new3_tele23sh,new3_tele24sh,new3_tele25sh,new3_tele26sh,new3_tele27sh,new3_tele28sh,new3_tele29sh,new3_tele30sh, new3_tele21elb, new3_tele22elb, new3_tele23elb, new3_tele24elb, new3_tele25elb, new3_tele26elb, new3_tele27elb, new3_tele28elb, new3_tele29elb, new3_tele30elb, new3_tele21, new3_tele22, new3_tele23, new3_tele24, new3_tele25, new3_tele26, new3_tele27, new3_tele28, new3_tele29, new3_tele30, minlength3_tele);
[a_tel4]=Angles_function(new3_tele31hip,new3_tele32hip,new3_tele33hip,new3_tele34hip,new3_tele35hip,new3_tele36hip,new3_tele37hip,new3_tele38hip,new3_tele39hip,new3_tele40hip, new3_tele31sh,new3_tele32sh,new3_tele33sh,new3_tele34sh,new3_tele35sh,new3_tele36sh,new3_tele37sh,new3_tele38sh,new3_tele39sh,new3_tele40sh, new3_tele31elb, new3_tele32elb, new3_tele33elb, new3_tele34elb, new3_tele35elb, new3_tele36elb, new3_tele37elb, new3_tele38elb, new3_tele39elb, new3_tele40elb, new3_tele31, new3_tele32, new3_tele33, new3_tele34, new3_tele35, new3_tele36, new3_tele37, new3_tele38, new3_tele39, new3_tele40, minlength4_tele);
[a_tel5]=Angles_function(new3_tele41hip,new3_tele42hip,new3_tele43hip,new3_tele44hip,new3_tele45hip,new3_tele46hip,new3_tele47hip,new3_tele48hip,new3_tele49hip,new3_tele50hip, new3_tele41sh,new3_tele42sh,new3_tele43sh,new3_tele44sh,new3_tele45sh,new3_tele46sh,new3_tele47sh,new3_tele48sh,new3_tele49sh,new3_tele50sh, new3_tele41elb, new3_tele42elb, new3_tele43elb, new3_tele44elb, new3_tele45elb, new3_tele46elb, new3_tele47elb, new3_tele48elb, new3_tele49elb, new3_tele50elb, new3_tele41, new3_tele42, new3_tele43, new3_tele44, new3_tele45, new3_tele46, new3_tele47, new3_tele48, new3_tele49, new3_tele50, minlength5_tele);
[a_tel6]=Angles_function(new3_tele51hip,new3_tele52hip,new3_tele53hip,new3_tele54hip,new3_tele55hip,new3_tele56hip,new3_tele57hip,new3_tele58hip,new3_tele59hip,new3_tele60hip, new3_tele51sh,new3_tele52sh,new3_tele53sh,new3_tele54sh,new3_tele55sh,new3_tele56sh,new3_tele57sh,new3_tele58sh,new3_tele59sh,new3_tele60sh, new3_tele51elb, new3_tele52elb, new3_tele53elb, new3_tele54elb, new3_tele55elb, new3_tele56elb, new3_tele57elb, new3_tele58elb, new3_tele59elb, new3_tele60elb, new3_tele51, new3_tele52, new3_tele53, new3_tele54, new3_tele55, new3_tele56, new3_tele57, new3_tele58, new3_tele59, new3_tele60, minlength6_tele);

%% 
%drinking
lengths(1,1)=length(X_time_dr);lengths(1,2)=length(X_time2_dr);lengths(1,3)=length(X_time3_dr);lengths(1,4)=length(X_time4_dr);lengths(1,5)=length(X_time5_dr);lengths(1,6)=length(X_time6_dr);
minnn=min(lengths); 
for i=1:6
if(lengths(1,i)==minnn)
locator=i;
end
end
X_time_drmin=X_time2_dr;
a_dr=a_dr(1:length(X_time_drmin),:); a_dr2=a_dr2(1:length(X_time_drmin),:);a_dr3=a_dr3(1:length(X_time_drmin),:);
a_dr4=a_dr4(1:length(X_time_drmin),:); a_dr5=a_dr5(1:length(X_time_drmin),:);a_dr6=a_dr6(1:length(X_time_drmin),:);

figure,
plot(X_time_drmin,a_dr(:,11)); hold on
plot(X_time_drmin,a_dr(:,12)); hold on
plot(X_time_drmin,a_dr(:,13)); hold on
plot(X_time_drmin,a_dr(:,14)); hold on
plot(X_time_drmin,a_dr(:,15)); hold on
plot(X_time_drmin,a_dr(:,16)); hold on
plot(X_time_drmin,a_dr(:,17)); hold on
plot(X_time_drmin,a_dr(:,18)); hold on
plot(X_time_drmin,a_dr(:,19)); hold on
plot(X_time_drmin,a_dr(:,20)); hold on
plot(X_time_drmin,a_dr2(:,11)); hold on
plot(X_time_drmin,a_dr2(:,12)); hold on
plot(X_time_drmin,a_dr2(:,13)); hold on
plot(X_time_drmin,a_dr2(:,14)); hold on
plot(X_time_drmin,a_dr2(:,15)); hold on
plot(X_time_drmin,a_dr2(:,16)); hold on
plot(X_time_drmin,a_dr2(:,17)); hold on
plot(X_time_drmin,a_dr2(:,18)); hold on
plot(X_time_drmin,a_dr2(:,19)); hold on
plot(X_time_drmin,a_dr2(:,20)); hold on
plot(X_time_drmin,a_dr3(:,11)); hold on
plot(X_time_drmin,a_dr3(:,12)); hold on
plot(X_time_drmin,a_dr3(:,13)); hold on
plot(X_time_drmin,a_dr3(:,14)); hold on
plot(X_time_drmin,a_dr3(:,15)); hold on
plot(X_time_drmin,a_dr3(:,16)); hold on
plot(X_time_drmin,a_dr3(:,17)); hold on
plot(X_time_drmin,a_dr3(:,18)); hold on
plot(X_time_drmin,a_dr3(:,19)); hold on
plot(X_time_drmin,a_dr3(:,20)); hold on
plot(X_time_drmin,a_dr4(:,11)); hold on
plot(X_time_drmin,a_dr4(:,12)); hold on
plot(X_time_drmin,a_dr4(:,13)); hold on
plot(X_time_drmin,a_dr4(:,14)); hold on
plot(X_time_drmin,a_dr4(:,15)); hold on
plot(X_time_drmin,a_dr4(:,16)); hold on
plot(X_time_drmin,a_dr4(:,17)); hold on
plot(X_time_drmin,a_dr4(:,18)); hold on
plot(X_time_drmin,a_dr4(:,19)); hold on
plot(X_time_drmin,a_dr4(:,20)); hold on
plot(X_time_drmin,a_dr5(:,11)); hold on
plot(X_time_drmin,a_dr5(:,12)); hold on
plot(X_time_drmin,a_dr5(:,13)); hold on
plot(X_time_drmin,a_dr5(:,14)); hold on
plot(X_time_drmin,a_dr5(:,15)); hold on
plot(X_time_drmin,a_dr5(:,16)); hold on
plot(X_time_drmin,a_dr5(:,17)); hold on
plot(X_time_drmin,a_dr5(:,18)); hold on
plot(X_time_drmin,a_dr5(:,19)); hold on
plot(X_time_drmin,a_dr5(:,20)); hold on
plot(X_time_drmin,a_dr6(:,11)); hold on
plot(X_time_drmin,a_dr6(:,12)); hold on
plot(X_time_drmin,a_dr6(:,13)); hold on
plot(X_time_drmin,a_dr6(:,14)); hold on
plot(X_time_drmin,a_dr6(:,15)); hold on
plot(X_time_drmin,a_dr6(:,16)); hold on
plot(X_time_drmin,a_dr6(:,17)); hold on
plot(X_time_drmin,a_dr6(:,18)); hold on
plot(X_time_drmin,a_dr6(:,19)); hold on
plot(X_time_drmin,a_dr6(:,20)); hold on
title('Angle shoulder-elbow-wrist DRINKING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
plot(X_time_drmin,a_dr(:,1)); hold on
plot(X_time_drmin,a_dr(:,2)); hold on
plot(X_time_drmin,a_dr(:,3)); hold on
plot(X_time_drmin,a_dr(:,4)); hold on
plot(X_time_drmin,a_dr(:,5)); hold on
plot(X_time_drmin,a_dr(:,6)); hold on
plot(X_time_drmin,a_dr(:,7)); hold on
plot(X_time_drmin,a_dr(:,8)); hold on
plot(X_time_drmin,a_dr(:,9)); hold on
plot(X_time_drmin,a_dr(:,10)); hold on
plot(X_time_drmin,a_dr2(:,1)); hold on
plot(X_time_drmin,a_dr2(:,2)); hold on
plot(X_time_drmin,a_dr2(:,3)); hold on
plot(X_time_drmin,a_dr2(:,4)); hold on
plot(X_time_drmin,a_dr2(:,5)); hold on
plot(X_time_drmin,a_dr2(:,6)); hold on
plot(X_time_drmin,a_dr2(:,7)); hold on
plot(X_time_drmin,a_dr2(:,8)); hold on
plot(X_time_drmin,a_dr2(:,9)); hold on
plot(X_time_drmin,a_dr2(:,10)); hold on
plot(X_time_drmin,a_dr3(:,1)); hold on
plot(X_time_drmin,a_dr3(:,2)); hold on
plot(X_time_drmin,a_dr3(:,3)); hold on
plot(X_time_drmin,a_dr3(:,4)); hold on
plot(X_time_drmin,a_dr3(:,5)); hold on
plot(X_time_drmin,a_dr3(:,6)); hold on
plot(X_time_drmin,a_dr3(:,7)); hold on
plot(X_time_drmin,a_dr3(:,8)); hold on
plot(X_time_drmin,a_dr3(:,9)); hold on
plot(X_time_drmin,a_dr3(:,10)); hold on
plot(X_time_drmin,a_dr4(:,1)); hold on
plot(X_time_drmin,a_dr4(:,2)); hold on
plot(X_time_drmin,a_dr4(:,3)); hold on
plot(X_time_drmin,a_dr4(:,4)); hold on
plot(X_time_drmin,a_dr4(:,5)); hold on
plot(X_time_drmin,a_dr4(:,6)); hold on
plot(X_time_drmin,a_dr4(:,7)); hold on
plot(X_time_drmin,a_dr4(:,8)); hold on
plot(X_time_drmin,a_dr4(:,9)); hold on
plot(X_time_drmin,a_dr4(:,10)); hold on
plot(X_time_drmin,a_dr5(:,1)); hold on
plot(X_time_drmin,a_dr5(:,2)); hold on
plot(X_time_drmin,a_dr5(:,3)); hold on
plot(X_time_drmin,a_dr5(:,4)); hold on
plot(X_time_drmin,a_dr5(:,5)); hold on
plot(X_time_drmin,a_dr5(:,6)); hold on
plot(X_time_drmin,a_dr5(:,7)); hold on
plot(X_time_drmin,a_dr5(:,8)); hold on
plot(X_time_drmin,a_dr5(:,9)); hold on
plot(X_time_drmin,a_dr5(:,10)); hold on
plot(X_time_drmin,a_dr6(:,1)); hold on
plot(X_time_drmin,a_dr6(:,2)); hold on
plot(X_time_drmin,a_dr6(:,3)); hold on
plot(X_time_drmin,a_dr6(:,4)); hold on
plot(X_time_drmin,a_dr6(:,5)); hold on
plot(X_time_drmin,a_dr6(:,6)); hold on
plot(X_time_drmin,a_dr6(:,7)); hold on
plot(X_time_drmin,a_dr6(:,8)); hold on
plot(X_time_drmin,a_dr6(:,9)); hold on
plot(X_time_drmin,a_dr6(:,10)); hold on
title('Angle hip-shoulder-elbow DRINKING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');
%% 

figure,
    for i = 1:minlength_drinking 
plot3([new3_dr_shoulder(i,1);new3_drinking10elb(i,1)],[new3_dr_shoulder(i,2);new3_drinking10elb(i,2)],[new3_dr_shoulder(i,3);new3_drinking10elb(i,3)],'b','LineWidth',5); hold on
plot3([new3_drinking10elb(i,1);new3_drinking10(i,1)],[new3_drinking10elb(i,2);new3_drinking10(i,2)],[new3_drinking10elb(i,3);new3_drinking10(i,3)],'r','LineWidth',5); hold on
newplotVRROOMman(trunkCenter,raising20);
hold off
view([85 100 30])
legend('Upper arm','Forearm');
title('Vectors');
ylim([-0.2 0.48]);
xlim([-0.15 0.42]);
zlim([0 1.3]);
      F(i) = getframe(gcf) ;
      drawnow
    end
  % create the video writer with 1 fps
  writerObj = VideoWriter('myVideo_drinking.avi');
  writerObj.FrameRate = 4;
  % set the seconds per image
% open the video writer
open(writerObj);
% write the frames to the video
for i=1:length(F)
    % convert the image to a frame
    frame = F(i) ;    
    writeVideo(writerObj, frame);
end
% close the writer object
close(writerObj);

%% 
%raising
lengths(1,1)=length(X_time_rh);lengths(1,2)=length(X_time2_rh);lengths(1,3)=length(X_time3_rh);lengths(1,4)=length(X_time4_rh);lengths(1,5)=length(X_time5_rh);lengths(1,6)=length(X_time6_rh);
minnn=min(lengths); 
for i=1:6
if(lengths(1,i)==minnn)
locator=i;
end
end
X_time_rhmin=X_time4_rh;
a_rh=a_rh(1:length(X_time_rhmin),:); a_rh2=a_rh2(1:length(X_time_rhmin),:);a_rh3=a_rh3(1:length(X_time_rhmin),:);
a_rh4=a_rh4(1:length(X_time_rhmin),:); a_rh5=a_rh4(1:length(X_time_rhmin),:);a_rh6=a_rh6(1:length(X_time_rhmin),:);
figure,
plot(X_time_rhmin,a_rh(:,11)); hold on
plot(X_time_rhmin,a_rh(:,12)); hold on
plot(X_time_rhmin,a_rh(:,13)); hold on
plot(X_time_rhmin,a_rh(:,14)); hold on
plot(X_time_rhmin,a_rh(:,15)); hold on
plot(X_time_rhmin,a_rh(:,16)); hold on
plot(X_time_rhmin,a_rh(:,17)); hold on
plot(X_time_rhmin,a_rh(:,18)); hold on
plot(X_time_rhmin,a_rh(:,19)); hold on
plot(X_time_rhmin,a_rh(:,20)); hold on
plot(X_time_rhmin,a_rh2(:,11)); hold on
plot(X_time_rhmin,a_rh2(:,12)); hold on
plot(X_time_rhmin,a_rh2(:,13)); hold on
plot(X_time_rhmin,a_rh2(:,14)); hold on
plot(X_time_rhmin,a_rh2(:,15)); hold on
plot(X_time_rhmin,a_rh2(:,16)); hold on
plot(X_time_rhmin,a_rh2(:,17)); hold on
plot(X_time_rhmin,a_rh2(:,18)); hold on
plot(X_time_rhmin,a_rh2(:,19)); hold on
plot(X_time_rhmin,a_rh2(:,20)); hold on
plot(X_time_rhmin,a_rh3(:,11)); hold on
plot(X_time_rhmin,a_rh3(:,12)); hold on
plot(X_time_rhmin,a_rh3(:,13)); hold on
plot(X_time_rhmin,a_rh3(:,14)); hold on
plot(X_time_rhmin,a_rh3(:,15)); hold on
plot(X_time_rhmin,a_rh3(:,16)); hold on
plot(X_time_rhmin,a_rh3(:,17)); hold on
plot(X_time_rhmin,a_rh3(:,18)); hold on
plot(X_time_rhmin,a_rh3(:,19)); hold on
plot(X_time_rhmin,a_rh3(:,20)); hold on
plot(X_time_rhmin,a_rh4(:,11)); hold on
plot(X_time_rhmin,a_rh4(:,12)); hold on
plot(X_time_rhmin,a_rh4(:,13)); hold on
plot(X_time_rhmin,a_rh4(:,14)); hold on
plot(X_time_rhmin,a_rh4(:,15)); hold on
plot(X_time_rhmin,a_rh4(:,16)); hold on
plot(X_time_rhmin,a_rh4(:,17)); hold on
plot(X_time_rhmin,a_rh4(:,18)); hold on
plot(X_time_rhmin,a_rh4(:,19)); hold on
plot(X_time_rhmin,a_rh4(:,20)); hold on
plot(X_time_rhmin,a_rh5(:,11)); hold on
plot(X_time_rhmin,a_rh5(:,12)); hold on
plot(X_time_rhmin,a_rh5(:,13)); hold on
plot(X_time_rhmin,a_rh5(:,14)); hold on
plot(X_time_rhmin,a_rh5(:,15)); hold on
plot(X_time_rhmin,a_rh5(:,16)); hold on
plot(X_time_rhmin,a_rh5(:,17)); hold on
plot(X_time_rhmin,a_rh5(:,18)); hold on
plot(X_time_rhmin,a_rh5(:,19)); hold on
plot(X_time_rhmin,a_rh5(:,20)); hold on
plot(X_time_rhmin,a_rh6(:,11)); hold on
plot(X_time_rhmin,a_rh6(:,12)); hold on
plot(X_time_rhmin,a_rh6(:,13)); hold on
plot(X_time_rhmin,a_rh6(:,14)); hold on
plot(X_time_rhmin,a_rh6(:,15)); hold on
plot(X_time_rhmin,a_rh6(:,16)); hold on
plot(X_time_rhmin,a_rh6(:,17)); hold on
plot(X_time_rhmin,a_rh6(:,18)); hold on
plot(X_time_rhmin,a_rh6(:,19)); hold on
plot(X_time_rhmin,a_rh6(:,20)); hold on
title('Angle shoulder-elbow-wrist RAISING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
plot(X_time_rhmin,a_rh(:,1)); hold on
plot(X_time_rhmin,a_rh(:,2)); hold on
plot(X_time_rhmin,a_rh(:,3)); hold on
plot(X_time_rhmin,a_rh(:,4)); hold on
plot(X_time_rhmin,a_rh(:,5)); hold on
plot(X_time_rhmin,a_rh(:,6)); hold on
plot(X_time_rhmin,a_rh(:,7)); hold on
plot(X_time_rhmin,a_rh(:,8)); hold on
plot(X_time_rhmin,a_rh(:,9)); hold on
plot(X_time_rhmin,a_rh(:,10)); hold on
plot(X_time_rhmin,a_rh2(:,1)); hold on
plot(X_time_rhmin,a_rh2(:,2)); hold on
plot(X_time_rhmin,a_rh2(:,3)); hold on
plot(X_time_rhmin,a_rh2(:,4)); hold on
plot(X_time_rhmin,a_rh2(:,5)); hold on
plot(X_time_rhmin,a_rh2(:,6)); hold on
plot(X_time_rhmin,a_rh2(:,7)); hold on
plot(X_time_rhmin,a_rh2(:,8)); hold on
plot(X_time_rhmin,a_rh2(:,9)); hold on
plot(X_time_rhmin,a_rh2(:,10)); hold on
plot(X_time_rhmin,a_rh3(:,1)); hold on
plot(X_time_rhmin,a_rh3(:,2)); hold on
plot(X_time_rhmin,a_rh3(:,3)); hold on
plot(X_time_rhmin,a_rh3(:,4)); hold on
plot(X_time_rhmin,a_rh3(:,5)); hold on
plot(X_time_rhmin,a_rh3(:,6)); hold on
plot(X_time_rhmin,a_rh3(:,7)); hold on
plot(X_time_rhmin,a_rh3(:,8)); hold on
plot(X_time_rhmin,a_rh3(:,9)); hold on
plot(X_time_rhmin,a_rh3(:,10)); hold on
plot(X_time_rhmin,a_rh4(:,1)); hold on
plot(X_time_rhmin,a_rh4(:,2)); hold on
plot(X_time_rhmin,a_rh4(:,3)); hold on
plot(X_time_rhmin,a_rh4(:,4)); hold on
plot(X_time_rhmin,a_rh4(:,5)); hold on
plot(X_time_rhmin,a_rh4(:,6)); hold on
plot(X_time_rhmin,a_rh4(:,7)); hold on
plot(X_time_rhmin,a_rh4(:,8)); hold on
plot(X_time_rhmin,a_rh4(:,9)); hold on
plot(X_time_rhmin,a_rh4(:,10)); hold on
plot(X_time_rhmin,a_rh5(:,1)); hold on
plot(X_time_rhmin,a_rh5(:,2)); hold on
plot(X_time_rhmin,a_rh5(:,3)); hold on
plot(X_time_rhmin,a_rh5(:,4)); hold on
plot(X_time_rhmin,a_rh5(:,5)); hold on
plot(X_time_rhmin,a_rh5(:,6)); hold on
plot(X_time_rhmin,a_rh5(:,7)); hold on
plot(X_time_rhmin,a_rh5(:,8)); hold on
plot(X_time_rhmin,a_rh5(:,9)); hold on
plot(X_time_rhmin,a_rh5(:,10)); hold on
plot(X_time_rhmin,a_rh6(:,1)); hold on
plot(X_time_rhmin,a_rh6(:,2)); hold on
plot(X_time_rhmin,a_rh6(:,3)); hold on
plot(X_time_rhmin,a_rh6(:,4)); hold on
plot(X_time_rhmin,a_rh6(:,5)); hold on
plot(X_time_rhmin,a_rh6(:,6)); hold on
plot(X_time_rhmin,a_rh6(:,7)); hold on
plot(X_time_rhmin,a_rh6(:,8)); hold on
plot(X_time_rhmin,a_rh6(:,9)); hold on
plot(X_time_rhmin,a_rh6(:,10)); hold on
title('Angle hip-shoulder-elbow RAISING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');
%% 

figure,
    for i = 1:minlength_raising 
plot3([new3_raising20sh(i,1);new3_raising20elb(i,1)],[new3_raising20sh(i,2);new3_raising20elb(i,2)],[new3_raising20sh(i,3);new3_raising20elb(i,3)],'b','LineWidth',5); hold on
plot3([new3_raising20elb(i,1);new3_raising20(i,1)],[new3_raising20elb(i,2);new3_raising20(i,2)],[new3_raising20elb(i,3);new3_raising20(i,3)],'r','LineWidth',5); hold on
newplotVRROOMman(trunkCenter,raising20);
hold off
% view([85 100 30])
legend('Upper arm','Forearm');
title('Vectors');
% ylim([-0.2 0.48]);
% xlim([-0.15 0.42]);
% zlim([0 1.3]);
      F(i) = getframe(gcf) ;
      drawnow
    end

  % create the video writer with 1 fps
  writerObj = VideoWriter('myVideo_raising.avi');
  writerObj.FrameRate = 4;
  % set the seconds per image
% open the video writer
open(writerObj);
% write the frames to the video
for i=1:length(F)
    % convert the image to a frame
    frame = F(i) ;    
    writeVideo(writerObj, frame);
end
% close the writer object
close(writerObj);

%% Telephone
lengths(1,1)=length(X_time_tel);lengths(1,2)=length(X_time2_tel);lengths(1,3)=length(X_time3_tel);lengths(1,4)=length(X_time4_tel);lengths(1,5)=length(X_time5_tel);lengths(1,6)=length(X_time6_tel);
minnn=min(lengths); 
for i=1:6
if(lengths(1,i)==minnn)
locator=i;
end
end
X_time_telmin=X_time2_tel;
a_tel=a_tel(1:length(X_time_telmin),:); a_tel2=a_tel2(1:length(X_time_telmin),:);a_tel3=a_tel3(1:length(X_time_telmin),:);
a_tel4=a_tel4(1:length(X_time_telmin),:); a_tel5=a_tel4(1:length(X_time_telmin),:);a_tel6=a_tel6(1:length(X_time_telmin),:);
figure,
plot(X_time_telmin,a_tel(:,11)); hold on
plot(X_time_telmin,a_tel(:,12)); hold on
plot(X_time_telmin,a_tel(:,13)); hold on
plot(X_time_telmin,a_tel(:,14)); hold on
plot(X_time_telmin,a_tel(:,15)); hold on
plot(X_time_telmin,a_tel(:,16)); hold on
plot(X_time_telmin,a_tel(:,17)); hold on
plot(X_time_telmin,a_tel(:,18)); hold on
plot(X_time_telmin,a_tel(:,19)); hold on
plot(X_time_telmin,a_tel(:,20)); hold on
plot(X_time_telmin,a_tel2(:,11)); hold on
plot(X_time_telmin,a_tel2(:,12)); hold on
plot(X_time_telmin,a_tel2(:,13)); hold on
plot(X_time_telmin,a_tel2(:,14)); hold on
plot(X_time_telmin,a_tel2(:,15)); hold on
plot(X_time_telmin,a_tel2(:,16)); hold on
plot(X_time_telmin,a_tel2(:,17)); hold on
plot(X_time_telmin,a_tel2(:,18)); hold on
plot(X_time_telmin,a_tel2(:,19)); hold on
plot(X_time_telmin,a_tel2(:,20)); hold on
plot(X_time_telmin,a_tel3(:,11)); hold on
plot(X_time_telmin,a_tel3(:,12)); hold on
plot(X_time_telmin,a_tel3(:,13)); hold on
plot(X_time_telmin,a_tel3(:,14)); hold on
plot(X_time_telmin,a_tel3(:,15)); hold on
plot(X_time_telmin,a_tel3(:,16)); hold on
plot(X_time_telmin,a_tel3(:,17)); hold on
plot(X_time_telmin,a_tel3(:,18)); hold on
plot(X_time_telmin,a_tel3(:,19)); hold on
plot(X_time_telmin,a_tel3(:,20)); hold on
plot(X_time_telmin,a_tel4(:,11)); hold on
plot(X_time_telmin,a_tel4(:,12)); hold on
plot(X_time_telmin,a_tel4(:,13)); hold on
plot(X_time_telmin,a_tel4(:,14)); hold on
plot(X_time_telmin,a_tel4(:,15)); hold on
plot(X_time_telmin,a_tel4(:,16)); hold on
plot(X_time_telmin,a_tel4(:,17)); hold on
plot(X_time_telmin,a_tel4(:,18)); hold on
plot(X_time_telmin,a_tel4(:,19)); hold on
plot(X_time_telmin,a_tel4(:,20)); hold on
plot(X_time_telmin,a_tel5(:,11)); hold on
plot(X_time_telmin,a_tel5(:,12)); hold on
plot(X_time_telmin,a_tel5(:,13)); hold on
plot(X_time_telmin,a_tel5(:,14)); hold on
plot(X_time_telmin,a_tel5(:,15)); hold on
plot(X_time_telmin,a_tel5(:,16)); hold on
plot(X_time_telmin,a_tel5(:,17)); hold on
plot(X_time_telmin,a_tel5(:,18)); hold on
plot(X_time_telmin,a_tel5(:,19)); hold on
plot(X_time_telmin,a_tel5(:,20)); hold on
plot(X_time_telmin,a_tel6(:,11)); hold on
plot(X_time_telmin,a_tel6(:,12)); hold on
plot(X_time_telmin,a_tel6(:,13)); hold on
plot(X_time_telmin,a_tel6(:,14)); hold on
plot(X_time_telmin,a_tel6(:,15)); hold on
plot(X_time_telmin,a_tel6(:,16)); hold on
plot(X_time_telmin,a_tel6(:,17)); hold on
plot(X_time_telmin,a_tel6(:,18)); hold on
plot(X_time_telmin,a_tel6(:,19)); hold on
plot(X_time_telmin,a_tel6(:,20)); hold on
title('Angle shoulder-elbow-wrist TELEPHONE');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
plot(X_time_telmin,a_tel(:,1)); hold on
plot(X_time_telmin,a_tel(:,2)); hold on
plot(X_time_telmin,a_tel(:,3)); hold on
plot(X_time_telmin,a_tel(:,4)); hold on
plot(X_time_telmin,a_tel(:,5)); hold on
plot(X_time_telmin,a_tel(:,6)); hold on
plot(X_time_telmin,a_tel(:,7)); hold on
plot(X_time_telmin,a_tel(:,8)); hold on
plot(X_time_telmin,a_tel(:,9)); hold on
plot(X_time_telmin,a_tel(:,10)); hold on
plot(X_time_telmin,a_tel2(:,1)); hold on
plot(X_time_telmin,a_tel2(:,2)); hold on
plot(X_time_telmin,a_tel2(:,3)); hold on
plot(X_time_telmin,a_tel2(:,4)); hold on
plot(X_time_telmin,a_tel2(:,5)); hold on
plot(X_time_telmin,a_tel2(:,6)); hold on
plot(X_time_telmin,a_tel2(:,7)); hold on
plot(X_time_telmin,a_tel2(:,8)); hold on
plot(X_time_telmin,a_tel2(:,9)); hold on
plot(X_time_telmin,a_tel2(:,10)); hold on
plot(X_time_telmin,a_tel3(:,1)); hold on
plot(X_time_telmin,a_tel3(:,2)); hold on
plot(X_time_telmin,a_tel3(:,3)); hold on
plot(X_time_telmin,a_tel3(:,4)); hold on
plot(X_time_telmin,a_tel3(:,5)); hold on
plot(X_time_telmin,a_tel3(:,6)); hold on
plot(X_time_telmin,a_tel3(:,7)); hold on
plot(X_time_telmin,a_tel3(:,8)); hold on
plot(X_time_telmin,a_tel3(:,9)); hold on
plot(X_time_telmin,a_tel3(:,10)); hold on
plot(X_time_telmin,a_tel4(:,1)); hold on
plot(X_time_telmin,a_tel4(:,2)); hold on
plot(X_time_telmin,a_tel4(:,3)); hold on
plot(X_time_telmin,a_tel4(:,4)); hold on
plot(X_time_telmin,a_tel4(:,5)); hold on
plot(X_time_telmin,a_tel4(:,6)); hold on
plot(X_time_telmin,a_tel4(:,7)); hold on
plot(X_time_telmin,a_tel4(:,8)); hold on
plot(X_time_telmin,a_tel4(:,9)); hold on
plot(X_time_telmin,a_tel4(:,10)); hold on
plot(X_time_telmin,a_tel5(:,1)); hold on
plot(X_time_telmin,a_tel5(:,2)); hold on
plot(X_time_telmin,a_tel5(:,3)); hold on
plot(X_time_telmin,a_tel5(:,4)); hold on
plot(X_time_telmin,a_tel5(:,5)); hold on
plot(X_time_telmin,a_tel5(:,6)); hold on
plot(X_time_telmin,a_tel5(:,7)); hold on
plot(X_time_telmin,a_tel5(:,8)); hold on
plot(X_time_telmin,a_tel5(:,9)); hold on
plot(X_time_telmin,a_tel5(:,10)); hold on
plot(X_time_telmin,a_tel6(:,1)); hold on
plot(X_time_telmin,a_tel6(:,2)); hold on
plot(X_time_telmin,a_tel6(:,3)); hold on
plot(X_time_telmin,a_tel6(:,4)); hold on
plot(X_time_telmin,a_tel6(:,5)); hold on
plot(X_time_telmin,a_tel6(:,6)); hold on
plot(X_time_telmin,a_tel6(:,7)); hold on
plot(X_time_telmin,a_tel6(:,8)); hold on
plot(X_time_telmin,a_tel6(:,9)); hold on
plot(X_time_telmin,a_tel6(:,10)); hold on
title('Angle hip-shoulder-elbow TELEPHONE');
xlabel('Time (sec)');
ylabel('Angle(degrees)');