%Velocity and acceleration
%drinking
for i=1:minlength_drinking-1
    vel_drinking1(i,:)=(new3_drinking1(i+1,:))-abs(new3_drinking1(i,:))/(time1_dr(i+1)-time1_dr(i));
    vel_drinking2(i,:)=(new3_drinking2(i+1,:))-abs(new3_drinking2(i,:))/(time2_dr(i+1)-time2_dr(i));
    vel_drinking3(i,:)=(new3_drinking3(i+1,:))-abs(new3_drinking3(i,:))/(time3_dr(i+1)-time3_dr(i));
    vel_drinking4(i,:)=(new3_drinking4(i+1,:))-abs(new3_drinking4(i,:))/(time4_dr(i+1)-time4_dr(i));
    vel_drinking5(i,:)=(new3_drinking5(i+1,:))-abs(new3_drinking5(i,:))/(time5_dr(i+1)-time5_dr(i));
    vel_drinking6(i,:)=(new3_drinking6(i+1,:))-abs(new3_drinking6(i,:))/(time6_dr(i+1)-time6_dr(i));
    vel_drinking7(i,:)=(new3_drinking7(i+1,:))-abs(new3_drinking7(i,:))/(time7_dr(i+1)-time7_dr(i));
    vel_drinking8(i,:)=(new3_drinking8(i+1,:)-new3_drinking8(i,:))/(time8_dr(i+1)-time8_dr(i));
    vel_drinking9(i,:)=(new3_drinking9(i+1,:)-new3_drinking9(i,:))/(time9_dr(i+1)-time9_dr(i));
    vel_drinking10(i,:)=(new3_drinking10(i+1,:))-abs(new3_drinking10(i,:))/(time10_dr(i+1)-time10_dr(i));
end
for i=1:minlength_drinking-2
    acc_drinking1(i,:)=abs((abs(vel_drinking1(i+1,:))-abs(vel_drinking1(i,:))))/(time1_dr(i+1)-time1_dr(i));
    acc_drinking2(i,:)=abs((abs(vel_drinking2(i+1,:))-abs(vel_drinking2(i,:))))/(time2_dr(i+1)-time2_dr(i));
    acc_drinking3(i,:)=abs((abs(vel_drinking3(i+1,:))-abs(vel_drinking3(i,:))))/(time3_dr(i+1)-time3_dr(i));
    acc_drinking4(i,:)=abs((abs(vel_drinking4(i+1,:))-abs(vel_drinking4(i,:))))/(time4_dr(i+1)-time4_dr(i));
    acc_drinking5(i,:)=abs((abs(vel_drinking5(i+1,:))-abs(vel_drinking5(i,:))))/(time5_dr(i+1)-time5_dr(i));
    acc_drinking6(i,:)=abs((abs(vel_drinking6(i+1,:))-abs(vel_drinking6(i,:))))/(time6_dr(i+1)-time6_dr(i));
    acc_drinking7(i,:)=abs((abs(vel_drinking7(i+1,:))-abs(vel_drinking7(i,:))))/(time7_dr(i+1)-time7_dr(i));
    acc_drinking8(i,:)=abs((abs(vel_drinking8(i+1,:))-abs(vel_drinking8(i,:))))/(time8_dr(i+1)-time8_dr(i));
    acc_drinking9(i,:)=abs((abs(vel_drinking9(i+1,:))-abs(vel_drinking9(i,:))))/(time9_dr(i+1)-time9_dr(i));
    acc_drinking10(i,:)=abs((abs(vel_drinking10(i+1,:))-abs(vel_drinking10(i,:))))/(time10_dr(i+1)-time10_dr(i));
end

figure('Name','Right Wrist Velocity - DRINKING'),
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
    subplot(1,3,i)
%     plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking1(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking2(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking3(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking4(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking5(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking6(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking7(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking8(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking9(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-1),vel_drinking10(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Velocity (space/s)');
    title(txt);
end

figure('Name','Right Wrist Acceleration - DRINKING'),
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
    subplot(1,3,i)
%     plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking1(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking2(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking3(:,i)); hold on
%     plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking4(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking5(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking6(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking7(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking8(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking9(:,i)); hold on
    plot(X_time_dr(1:length(X_time_dr(:,1))-2),acc_drinking10(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Acceleration (space/s^2)');
    title(txt);
end

%% 
%RAISING HAND
for i=1:minlength_raising-1
    vel_raising1(i,:)=abs((abs(new3_raising1(i+1,:))-abs(new3_raising1(i,:))))/(time1_rh(i+1)-time1_rh(i));
    vel_raising2(i,:)=abs((abs(new3_raising2(i+1,:))-abs(new3_raising2(i,:))))/(time2_rh(i+1)-time2_rh(i));
    vel_raising3(i,:)=abs((abs(new3_raising3(i+1,:))-abs(new3_raising3(i,:))))/(time3_rh(i+1)-time3_rh(i));
    vel_raising4(i,:)=abs((abs(new3_raising4(i+1,:))-abs(new3_raising4(i,:))))/(time4_rh(i+1)-time4_rh(i));
    vel_raising5(i,:)=abs((abs(new3_raising5(i+1,:))-abs(new3_raising5(i,:))))/(time5_rh(i+1)-time5_rh(i));
    vel_raising6(i,:)=abs((abs(new3_raising6(i+1,:))-abs(new3_raising6(i,:))))/(time6_rh(i+1)-time6_rh(i));
    vel_raising7(i,:)=abs((abs(new3_raising7(i+1,:))-abs(new3_raising7(i,:))))/(time7_rh(i+1)-time7_rh(i));
    vel_raising8(i,:)=abs((abs(new3_raising8(i+1,:))-abs(new3_raising8(i,:))))/(time8_rh(i+1)-time8_rh(i));
    vel_raising9(i,:)=abs((abs(new3_raising9(i+1,:))-abs(new3_raising9(i,:))))/(time9_rh(i+1)-time9_rh(i));
    vel_raising10(i,:)=abs((abs(new3_raising10(i+1,:))-abs(new3_raising10(i,:))))/(time10_rh(i+1)-time10_rh(i));
end
for i=1:minlength_raising-2
    acc_raising1(i,:)=abs((abs(vel_raising1(i+1,:))-abs(vel_raising1(i,:))))/(time1_rh(i+1)-time1_rh(i));
    acc_raising2(i,:)=abs((abs(vel_raising2(i+1,:))-abs(vel_raising2(i,:))))/(time2_rh(i+1)-time2_rh(i));
    acc_raising3(i,:)=abs((abs(vel_raising3(i+1,:))-abs(vel_raising3(i,:))))/(time3_rh(i+1)-time3_rh(i));
    acc_raising4(i,:)=abs((abs(vel_raising4(i+1,:))-abs(vel_raising4(i,:))))/(time4_rh(i+1)-time4_rh(i));
    acc_raising5(i,:)=abs((abs(vel_raising5(i+1,:))-abs(vel_raising5(i,:))))/(time5_rh(i+1)-time5_rh(i));
    acc_raising6(i,:)=abs((abs(vel_raising6(i+1,:))-abs(vel_raising6(i,:))))/(time6_rh(i+1)-time6_rh(i));
    acc_raising7(i,:)=abs((abs(vel_raising7(i+1,:))-abs(vel_raising7(i,:))))/(time7_rh(i+1)-time7_rh(i));
    acc_raising8(i,:)=abs((abs(vel_raising8(i+1,:))-abs(vel_raising8(i,:))))/(time8_rh(i+1)-time8_rh(i));
    acc_raising9(i,:)=abs((abs(vel_raising9(i+1,:))-abs(vel_raising9(i,:))))/(time9_rh(i+1)-time9_rh(i));
    acc_raising10(i,:)=abs((abs(vel_raising10(i+1,:))-abs(vel_raising10(i,:))))/(time10_rh(i+1)-time10_rh(i));
end

figure('Name','Right Wrist Velocity - RAISING HAND'),
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
    subplot(1,3,i)
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising1(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising2(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising3(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising4(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising5(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising6(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising7(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising8(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising9(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-1),vel_raising10(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Velocity (space/s)');
    title(txt);
end

figure('Name','Right Wrist Acceleration - RAISING HAND'),
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
    subplot(1,3,i)
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising1(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising2(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising3(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising4(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising5(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising6(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising7(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising8(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising9(:,i)); hold on
    plot(X_time_rh(1:length(X_time_rh(:,1))-2),acc_raising10(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Acceleration (space/s^2)');
    title(txt);
end

%% TELEPHONE
for i=1:minlength_tele-1
    vel_tele1(i,:)=abs((abs(new3_tele1(i+1,:))-abs(new3_tele1(i,:))))/(time1_tel(i+1)-time1_tel(i));
    vel_tele2(i,:)=abs((abs(new3_tele2(i+1,:))-abs(new3_tele2(i,:))))/(time2_tel(i+1)-time2_tel(i));
    vel_tele3(i,:)=abs((abs(new3_tele3(i+1,:))-abs(new3_tele3(i,:))))/(time3_tel(i+1)-time3_tel(i));
    vel_tele4(i,:)=abs((abs(new3_tele4(i+1,:))-abs(new3_tele4(i,:))))/(time4_tel(i+1)-time4_tel(i));
    vel_tele5(i,:)=abs((abs(new3_tele5(i+1,:))-abs(new3_tele5(i,:))))/(time5_tel(i+1)-time5_tel(i));
    vel_tele6(i,:)=abs((abs(new3_tele6(i+1,:))-abs(new3_tele6(i,:))))/(time6_tel(i+1)-time6_tel(i));
    vel_tele7(i,:)=abs((abs(new3_tele7(i+1,:))-abs(new3_tele7(i,:))))/(time7_tel(i+1)-time7_tel(i));
    vel_tele8(i,:)=abs((abs(new3_tele8(i+1,:))-abs(new3_tele8(i,:))))/(time8_tel(i+1)-time8_tel(i));
    vel_tele9(i,:)=abs((abs(new3_tele9(i+1,:))-abs(new3_tele9(i,:))))/(time9_tel(i+1)-time9_tel(i));
    vel_tele10(i,:)=abs((abs(new3_tele10(i+1,:))-abs(new3_tele10(i,:))))/(time10_tel(i+1)-time10_tel(i));
end
for i=1:minlength_tele-2
    acc_tele1(i,:)=abs((abs(vel_tele1(i+1,:))-abs(vel_tele1(i,:))))/(time1_tel(i+1)-time1_tel(i));
    acc_tele2(i,:)=abs((abs(vel_tele2(i+1,:))-abs(vel_tele2(i,:))))/(time2_tel(i+1)-time2_tel(i));
    acc_tele3(i,:)=abs((abs(vel_tele3(i+1,:))-abs(vel_tele3(i,:))))/(time3_tel(i+1)-time3_tel(i));
    acc_tele4(i,:)=abs((abs(vel_tele4(i+1,:))-abs(vel_tele4(i,:))))/(time4_tel(i+1)-time4_tel(i));
    acc_tele5(i,:)=abs((abs(vel_tele5(i+1,:))-abs(vel_tele5(i,:))))/(time5_tel(i+1)-time5_tel(i));
    acc_tele6(i,:)=abs((abs(vel_tele6(i+1,:))-abs(vel_tele6(i,:))))/(time6_tel(i+1)-time6_tel(i));
    acc_tele7(i,:)=abs((abs(vel_tele7(i+1,:))-abs(vel_tele7(i,:))))/(time7_tel(i+1)-time7_tel(i));
    acc_tele8(i,:)=abs((abs(vel_tele8(i+1,:))-abs(vel_tele8(i,:))))/(time8_tel(i+1)-time8_tel(i));
    acc_tele9(i,:)=abs((abs(vel_tele9(i+1,:))-abs(vel_tele9(i,:))))/(time9_tel(i+1)-time9_tel(i));
    acc_tele10(i,:)=abs((abs(vel_tele10(i+1,:))-abs(vel_tele10(i,:))))/(time10_tel(i+1)-time10_tel(i));
end

figure('Name','Right Wrist Velocity - TELEPHONE'),
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
    subplot(1,3,i)
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele1(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele2(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele3(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele4(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele5(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele6(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele7(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele8(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele9(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-1),vel_tele10(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Velocity (space/s)');
    title(txt);
end

figure('Name','Right Wrist Acceleration - TELEPHONE'),
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
    subplot(1,3,i)
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele1(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele2(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele3(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele4(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele5(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele6(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele7(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele8(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele9(:,i)); hold on
    plot(X_time_tel(1:length(X_time_tel(:,1))-2),acc_tele10(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Acceleration (space/s^2)');
    title(txt);
end

%% 
figure,
% scatter3(vel_drinking1(:,1),vel_drinking1(:,2),vel_drinking1(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(vel_drinking2(:,1),vel_drinking2(:,2),vel_drinking2(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking3(:,1),vel_drinking3(:,2),vel_drinking3(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking4(:,1),vel_drinking4(:,2),vel_drinking4(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking5(:,1),vel_drinking5(:,2),vel_drinking5(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking6(:,1),vel_drinking6(:,2),vel_drinking6(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking7(:,1),vel_drinking7(:,2),vel_drinking7(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking8(:,1),vel_drinking8(:,2),vel_drinking8(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking9(:,1),vel_drinking8(:,2),vel_drinking9(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking10(:,1),vel_drinking10(:,2),vel_drinking10(:,3),2,'r','MarkerFaceColor','r'); hold on

scatter3(vel_raising1(:,1),vel_raising1(:,2),vel_raising1(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising2(:,1),vel_raising2(:,2),vel_raising2(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising3(:,1),vel_raising3(:,2),vel_raising3(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising4(:,1),vel_raising4(:,2),vel_raising4(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising5(:,1),vel_raising5(:,2),vel_raising5(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising6(:,1),vel_raising6(:,2),vel_raising6(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising7(:,1),vel_raising7(:,2),vel_raising7(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising8(:,1),vel_raising8(:,2),vel_raising8(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising9(:,1),vel_raising8(:,2),vel_raising9(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising10(:,1),vel_raising10(:,2),vel_raising10(:,3),2,'b','MarkerFaceColor','b'); hold on

scatter3(vel_tele1(:,1),vel_tele1(:,2),vel_tele1(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele2(:,1),vel_tele2(:,2),vel_tele2(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele3(:,1),vel_tele3(:,2),vel_tele3(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele4(:,1),vel_tele4(:,2),vel_tele4(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele5(:,1),vel_tele5(:,2),vel_tele5(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele6(:,1),vel_tele6(:,2),vel_tele6(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele7(:,1),vel_tele7(:,2),vel_tele7(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele8(:,1),vel_tele8(:,2),vel_tele8(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele9(:,1),vel_tele8(:,2),vel_tele9(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele10(:,1),vel_tele10(:,2),vel_tele10(:,3),2,'k','MarkerFaceColor','k'); hold on
plotVRROOMman(trunkCenter,mirrorCenter,mirrorPitch)
hold on
title('Velocity DRINKING vs RAISING HAND vs TELEPHONE');
text(0,0.5,0.1,'Drinking task','Color','b')
text(0,0.5,0.2,'Raising hand','Color','r')
text(0,0.5,0.3,'Telephone','Color','k')
view([85 100 30])

figure,
% scatter3(acc_drinking1(:,1),acc_drinking1(:,2),acc_drinking1(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking2(:,1),acc_drinking2(:,2),acc_drinking2(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking3(:,1),acc_drinking3(:,2),acc_drinking3(:,3),0.5,'r','MarkerFaceColor','g'); hold on
% scatter3(acc_drinking4(:,1),acc_drinking4(:,2),acc_drinking4(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking5(:,1),acc_drinking5(:,2),acc_drinking5(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking6(:,1),acc_drinking6(:,2),acc_drinking6(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking7(:,1),acc_drinking7(:,2),acc_drinking7(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking8(:,1),acc_drinking8(:,2),acc_drinking8(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking9(:,1),acc_drinking8(:,2),acc_drinking9(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking10(:,1),acc_drinking10(:,2),acc_drinking10(:,3),0.5,'r','MarkerFaceColor','g'); hold on

scatter3(acc_raising1(:,1),acc_raising1(:,2),acc_raising1(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising2(:,1),acc_raising2(:,2),acc_raising2(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising3(:,1),acc_raising3(:,2),acc_raising3(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising4(:,1),acc_raising4(:,2),acc_raising4(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising5(:,1),acc_raising5(:,2),acc_raising5(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising6(:,1),acc_raising6(:,2),acc_raising6(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising7(:,1),acc_raising7(:,2),acc_raising7(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising8(:,1),acc_raising8(:,2),acc_raising8(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising9(:,1),acc_raising8(:,2),acc_raising9(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising10(:,1),acc_raising10(:,2),acc_raising10(:,3),0.5,'b','MarkerFaceColor','g'); hold on

scatter3(acc_tele1(:,1),acc_tele1(:,2),acc_tele1(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele2(:,1),acc_tele2(:,2),acc_tele2(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele3(:,1),acc_tele3(:,2),acc_tele3(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele4(:,1),acc_tele4(:,2),acc_tele4(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele5(:,1),acc_tele5(:,2),acc_tele5(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele6(:,1),acc_tele6(:,2),acc_tele6(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele7(:,1),acc_tele7(:,2),acc_tele7(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele8(:,1),acc_tele8(:,2),acc_tele8(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele9(:,1),acc_tele8(:,2),acc_tele9(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele10(:,1),acc_tele10(:,2),acc_tele10(:,3),0.5,'k','MarkerFaceColor','g'); hold on
plotVRROOMman(trunkCenter,mirrorCenter,mirrorPitch)
hold on
title('Acceleration DRINKING vs RAISING HAND vs TELEPHONE');
text(0,15,1,'Drinking task','Color','b')
text(0,15,2.5,'Raising hand','Color','r')
text(0,15,4,'Telephone','Color','k')
view([85 100 30])



