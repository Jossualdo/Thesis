%filtering raising hand
%WRIST
location = 11;
for i=1:3
    column = 2+(4*(location-1))+i;
    wrist_rh_1(:,i) = raising(:,column);
end
wrist_rh_1=table2array(wrist_rh_1);
%comparison
%rotation1 73º around X axis 
theta1=1.27409;
%rotation2 25º around Y axis
theta2=0.261799;
%translation
v1=0.014814; v2=1.72275; v3=0.38863;
[wrist_rh_1_ht]=HT(wrist_rh_1, theta1, theta2, v1, v2, v3);
%frames to time
[time1_dr, time2_dr, time3_dr, time4_dr, time5_dr, time6_dr, time7_dr, time8_dr, time9_dr, time10_dr, min_time_dr, X_time_dr]=frames2time_function(drinking, drinking2, drinking3, drinking4, drinking5, drinking6, drinking7, drinking8, drinking9, drinking10);
[time1_rh, time2_rh, time3_rh, time4_rh, time5_rh, time6_rh, time7_rh, time8_rh, time9_rh, time10_rh, min_time_rh, X_time_rh]=frames2time_function(raising, raising2, raising3, raising4, raising5, raising6, raising7, raising8, raising9, raising10);
[time1_tel, time2_tel, time3_tel, time4_tel, time5_tel, time6_tel, time7_tel, time8_tel, time9_tel, time10_tel, min_time_tel, X_time_tel]=frames2time_function(tele, tele2, tele3, tele4, tele5, tele6, tele7, tele8, tele9, tele10);

%% 
%3D
figure,
scatter3(wrist_rh_1_ht(:,1),wrist_rh_1_ht(:,2),wrist_rh_1_ht(:,3),0.5,'b'); hold on
scatter3(new3_raising1(:,1),new3_raising1(:,2),new3_raising1(:,3),0.5,'r'); hold on
plotVRROOMman(trunkCenter,mirrorCenter,mirrorPitch)
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

%% ANGLES DRINKING
% Vectors
[a_dr]=Angles_function(new3_dr_hip, new3_dr_shoulder, new3_drinking1elb, new3_drinking2elb, new3_drinking3elb, new3_drinking4elb, new3_drinking5elb, new3_drinking6elb, new3_drinking7elb, new3_drinking8elb, new3_drinking9elb, new3_drinking10elb, new3_drinking1, new3_drinking2, new3_drinking3, new3_drinking4, new3_drinking5, new3_drinking6, new3_drinking7, new3_drinking8, new3_drinking9, new3_drinking10, minlength_drinking);
[a_rh]=Angles_function(new3_rh_hip, new3_rh_shoulder, new3_raising1elb, new3_raising2elb, new3_raising3elb, new3_raising4elb, new3_raising5elb, new3_raising6elb, new3_raising7elb, new3_raising8elb, new3_raising9elb, new3_raising10elb, new3_raising1, new3_raising2, new3_raising3, new3_raising4, new3_raising5, new3_raising6, new3_raising7, new3_raising8, new3_raising9, new3_raising10, minlength_raising);
[a_tel]=Angles_function(new3_tele_hip, new3_tele_shoulder, new3_tele1elb, new3_tele2elb, new3_tele3elb, new3_tele4elb, new3_tele5elb, new3_tele6elb, new3_tele7elb, new3_tele8elb, new3_tele9elb, new3_tele10elb, new3_tele1, new3_tele2, new3_tele3, new3_tele4, new3_tele5, new3_tele6, new3_tele7, new3_tele8, new3_tele9, new3_tele10, minlength_tele);

%% 
%drinking
figure,
plot(X_time_dr,a_dr(:,11)); hold on
plot(X_time_dr,a_dr(:,12)); hold on
plot(X_time_dr,a_dr(:,13)); hold on
plot(X_time_dr,a_dr(:,14)); hold on
plot(X_time_dr,a_dr(:,15)); hold on
plot(X_time_dr,a_dr(:,16)); hold on
plot(X_time_dr,a_dr(:,17)); hold on
plot(X_time_dr,a_dr(:,18)); hold on
plot(X_time_dr,a_dr(:,19)); hold on
plot(X_time_dr,a_dr(:,20)); hold on
title('Angle shoulder-elbow-wrist DRINKING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
plot(X_time_dr,a_dr(:,1)); hold on
plot(X_time_dr,a_dr(:,2)); hold on
plot(X_time_dr,a_dr(:,3)); hold on
plot(X_time_dr,a_dr(:,4)); hold on
plot(X_time_dr,a_dr(:,5)); hold on
plot(X_time_dr,a_dr(:,6)); hold on
plot(X_time_dr,a_dr(:,7)); hold on
plot(X_time_dr,a_dr(:,8)); hold on
plot(X_time_dr,a_dr(:,9)); hold on
plot(X_time_dr,a_dr(:,10)); hold on
title('Angle hip-shoulder-elbow DRINKING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
    for i = 1:minlength_drinking 
plot3([new3_dr_shoulder(i,1);new3_drinking10elb(i,1)],[new3_dr_shoulder(i,2);new3_drinking10elb(i,2)],[new3_dr_shoulder(i,3);new3_drinking10elb(i,3)],'b','LineWidth',5); hold on
plot3([new3_drinking10elb(i,1);new3_drinking10(i,1)],[new3_drinking10elb(i,2);new3_drinking10(i,2)],[new3_drinking10elb(i,3);new3_drinking10(i,3)],'r','LineWidth',5); hold on
plotVRROOMman(trunkCenter,mirrorCenter,mirrorPitch);
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
figure,
plot(X_time_rh,a_rh(:,11)); hold on
plot(X_time_rh,a_rh(:,12)); hold on
plot(X_time_rh,a_rh(:,13)); hold on
plot(X_time_rh,a_rh(:,14)); hold on
plot(X_time_rh,a_rh(:,15)); hold on
plot(X_time_rh,a_rh(:,16)); hold on
plot(X_time_rh,a_rh(:,17)); hold on
plot(X_time_rh,a_rh(:,18)); hold on
plot(X_time_rh,a_rh(:,19)); hold on
plot(X_time_rh,a_rh(:,20)); hold on
title('Angle shoulder-elbow-wrist RAISING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
plot(X_time_rh,a_rh(:,1)); hold on
plot(X_time_rh,a_rh(:,2)); hold on
plot(X_time_rh,a_rh(:,3)); hold on
plot(X_time_rh,a_rh(:,4)); hold on
plot(X_time_rh,a_rh(:,5)); hold on
plot(X_time_rh,a_rh(:,6)); hold on
plot(X_time_rh,a_rh(:,7)); hold on
plot(X_time_rh,a_rh(:,8)); hold on
plot(X_time_rh,a_rh(:,9)); hold on
plot(X_time_rh,a_rh(:,10)); hold on
title('Angle hip-shoulder-elbow RAISING');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
    for i = 1:minlength_raising 
plot3([new3_rh_shoulder(i,1);new3_raising10elb(i,1)],[new3_rh_shoulder(i,2);new3_raising10elb(i,2)],[new3_rh_shoulder(i,3);new3_raising10elb(i,3)],'b','LineWidth',5); hold on
plot3([new3_raising10elb(i,1);new3_raising10(i,1)],[new3_raising10elb(i,2);new3_raising10(i,2)],[new3_raising10elb(i,3);new3_raising10(i,3)],'r','LineWidth',5); hold on
plotVRROOMman(trunkCenter,mirrorCenter,mirrorPitch);
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
figure,
plot(X_time_tel,a_tel(:,11)); hold on
plot(X_time_tel,a_tel(:,12)); hold on
plot(X_time_tel,a_tel(:,13)); hold on
plot(X_time_tel,a_tel(:,14)); hold on
plot(X_time_tel,a_tel(:,15)); hold on
plot(X_time_tel,a_tel(:,16)); hold on
plot(X_time_tel,a_tel(:,17)); hold on
plot(X_time_tel,a_tel(:,18)); hold on
plot(X_time_tel,a_tel(:,19)); hold on
plot(X_time_tel,a_tel(:,20)); hold on
title('Angle shoulder-elbow-wrist TELEPHONE');
xlabel('Time (sec)');
ylabel('Angle(degrees)');

figure,
plot(X_time_tel,a_tel(:,1)); hold on
plot(X_time_tel,a_tel(:,2)); hold on
plot(X_time_tel,a_tel(:,3)); hold on
plot(X_time_tel,a_tel(:,4)); hold on
plot(X_time_tel,a_tel(:,5)); hold on
plot(X_time_tel,a_tel(:,6)); hold on
plot(X_time_tel,a_tel(:,7)); hold on
plot(X_time_tel,a_tel(:,8)); hold on
plot(X_time_tel,a_tel(:,9)); hold on
plot(X_time_tel,a_tel(:,10)); hold on
title('Angle hip-shoulder-elbow TELEPHONE');
xlabel('Time (sec)');
ylabel('Angle(degrees)');











