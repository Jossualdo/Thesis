%Velocity and acceleration
%drinking
lengths_dr(1,1)=minlength_drinking;lengths_dr(1,2)=minlength2_drinking;lengths_dr(1,3)=minlength3_drinking;
lengths_dr(1,4)=minlength4_drinking;lengths_dr(1,5)=minlength5_drinking;lengths_dr(1,6)=minlength6_drinking;
minminlength_drinking=min(lengths_dr);
for i=1:minminlength_drinking-1
    vel_drinking1(i,:)=abs((new3_drinking1(i+1,:)-new3_drinking1(i,:)))/(time1_dr(i+1)-time1_dr(i));
    vel_drinking2(i,:)=abs((new3_drinking2(i+1,:)-new3_drinking2(i,:)))/(time2_dr(i+1)-time2_dr(i));
    vel_drinking3(i,:)=abs((new3_drinking3(i+1,:)-new3_drinking3(i,:)))/(time3_dr(i+1)-time3_dr(i));
    vel_drinking4(i,:)=abs((new3_drinking4(i+1,:)-new3_drinking4(i,:)))/(time4_dr(i+1)-time4_dr(i));
    vel_drinking5(i,:)=abs((new3_drinking5(i+1,:)-new3_drinking5(i,:)))/(time5_dr(i+1)-time5_dr(i));
    vel_drinking6(i,:)=abs((new3_drinking6(i+1,:)-new3_drinking6(i,:)))/(time6_dr(i+1)-time6_dr(i));
    vel_drinking7(i,:)=abs((new3_drinking7(i+1,:)-new3_drinking7(i,:)))/(time7_dr(i+1)-time7_dr(i));
    vel_drinking8(i,:)=abs((new3_drinking8(i+1,:)-new3_drinking8(i,:)))/(time8_dr(i+1)-time8_dr(i));
    vel_drinking9(i,:)=abs((new3_drinking9(i+1,:)-new3_drinking9(i,:)))/(time9_dr(i+1)-time9_dr(i));
    vel_drinking10(i,:)=abs((new3_drinking10(i+1,:)-new3_drinking10(i,:)))/(time10_dr(i+1)-time10_dr(i));
    vel_drinking11(i,:)=abs((new3_drinking11(i+1,:)-new3_drinking11(i,:)))/(time11_dr(i+1)-time11_dr(i));
    vel_drinking12(i,:)=abs((new3_drinking12(i+1,:)-new3_drinking12(i,:)))/(time12_dr(i+1)-time12_dr(i));
    vel_drinking13(i,:)=abs((new3_drinking13(i+1,:)-new3_drinking13(i,:)))/(time13_dr(i+1)-time13_dr(i));
    vel_drinking14(i,:)=abs((new3_drinking14(i+1,:)-new3_drinking14(i,:)))/(time14_dr(i+1)-time14_dr(i));
    vel_drinking15(i,:)=abs((new3_drinking15(i+1,:)-new3_drinking15(i,:)))/(time15_dr(i+1)-time15_dr(i));
    vel_drinking16(i,:)=abs((new3_drinking16(i+1,:)-new3_drinking16(i,:)))/(time16_dr(i+1)-time16_dr(i));
    vel_drinking17(i,:)=abs((new3_drinking17(i+1,:)-new3_drinking17(i,:)))/(time17_dr(i+1)-time17_dr(i));
    vel_drinking18(i,:)=abs((new3_drinking18(i+1,:)-new3_drinking18(i,:)))/(time18_dr(i+1)-time18_dr(i));
    vel_drinking19(i,:)=abs((new3_drinking19(i+1,:)-new3_drinking19(i,:)))/(time19_dr(i+1)-time19_dr(i));
    vel_drinking20(i,:)=abs((new3_drinking20(i+1,:)-new3_drinking20(i,:)))/(time20_dr(i+1)-time20_dr(i));
end
for i=1:minminlength_drinking-2
    acc_drinking1(i,:)=abs((vel_drinking1(i+1,:)-vel_drinking1(i,:)))/(time1_dr(i+1)-time1_dr(i));
    acc_drinking2(i,:)=abs((vel_drinking2(i+1,:)-vel_drinking2(i,:)))/(time2_dr(i+1)-time2_dr(i));
    acc_drinking3(i,:)=abs((vel_drinking3(i+1,:)-vel_drinking3(i,:)))/(time3_dr(i+1)-time3_dr(i));
    acc_drinking4(i,:)=abs((vel_drinking4(i+1,:)-vel_drinking4(i,:)))/(time4_dr(i+1)-time4_dr(i));
    acc_drinking5(i,:)=abs((vel_drinking5(i+1,:)-vel_drinking5(i,:)))/(time5_dr(i+1)-time5_dr(i));
    acc_drinking6(i,:)=abs((vel_drinking6(i+1,:)-vel_drinking6(i,:)))/(time6_dr(i+1)-time6_dr(i));
    acc_drinking7(i,:)=abs((vel_drinking7(i+1,:)-vel_drinking7(i,:)))/(time7_dr(i+1)-time7_dr(i));
    acc_drinking8(i,:)=abs((vel_drinking8(i+1,:)-vel_drinking8(i,:)))/(time8_dr(i+1)-time8_dr(i));
    acc_drinking9(i,:)=abs((vel_drinking9(i+1,:)-vel_drinking9(i,:)))/(time9_dr(i+1)-time9_dr(i));
    acc_drinking10(i,:)=abs((vel_drinking10(i+1,:)-vel_drinking10(i,:)))/(time10_dr(i+1)-time10_dr(i));
    acc_drinking11(i,:)=abs((vel_drinking11(i+1,:)-vel_drinking11(i,:)))/(time11_dr(i+1)-time11_dr(i));
    acc_drinking12(i,:)=abs((vel_drinking12(i+1,:)-vel_drinking12(i,:)))/(time12_dr(i+1)-time12_dr(i));
    acc_drinking13(i,:)=abs((vel_drinking13(i+1,:)-vel_drinking13(i,:)))/(time13_dr(i+1)-time13_dr(i));
    acc_drinking14(i,:)=abs((vel_drinking14(i+1,:)-vel_drinking14(i,:)))/(time14_dr(i+1)-time14_dr(i));
    acc_drinking15(i,:)=abs((vel_drinking15(i+1,:)-vel_drinking15(i,:)))/(time15_dr(i+1)-time15_dr(i));
    acc_drinking16(i,:)=abs((vel_drinking16(i+1,:)-vel_drinking16(i,:)))/(time16_dr(i+1)-time16_dr(i));
    acc_drinking17(i,:)=abs((vel_drinking17(i+1,:)-vel_drinking17(i,:)))/(time17_dr(i+1)-time17_dr(i));
    acc_drinking18(i,:)=abs((vel_drinking18(i+1,:)-vel_drinking18(i,:)))/(time18_dr(i+1)-time18_dr(i));
    acc_drinking19(i,:)=abs((vel_drinking19(i+1,:)-vel_drinking19(i,:)))/(time19_dr(i+1)-time19_dr(i));
    acc_drinking20(i,:)=abs((vel_drinking20(i+1,:)-vel_drinking20(i,:)))/(time20_dr(i+1)-time20_dr(i));
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
%     plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking1(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking2(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking3(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking4(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking5(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking6(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking7(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking8(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking9(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking10(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking11(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking12(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking13(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking14(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking15(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking16(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking17(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking18(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking19(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-1),vel_drinking20(:,i)); hold on
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
%     plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking1(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking2(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking3(:,i)); hold on
%     plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking4(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking5(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking6(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking7(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking8(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking9(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking10(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking11(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking12(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking13(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking14(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking15(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking16(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking17(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking18(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking19(:,i)); hold on
    plot(X_time_drmin(1:length(X_time_drmin(:,1))-2),acc_drinking20(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Acceleration (space/s^2)');
    title(txt);
end

%% 
%RAISING HAND
lengths_rh(1,1)=minlength_raising;lengths_rh(1,2)=minlength2_raising;lengths_rh(1,3)=minlength3_raising;
lengths_rh(1,4)=minlength4_raising;lengths_rh(1,5)=minlength5_raising;lengths_rh(1,6)=minlength6_raising;
minminlength_raising=min(lengths_rh);
for i=1:minminlength_raising-1
    vel_raising1(i,:)=abs((new3_raising1(i+1,:)-new3_raising1(i,:)))/(time1_rh(i+1)-time1_rh(i));
    vel_raising2(i,:)=abs((new3_raising2(i+1,:)-new3_raising2(i,:)))/(time2_rh(i+1)-time2_rh(i));
    vel_raising3(i,:)=abs((new3_raising3(i+1,:)-new3_raising3(i,:)))/(time3_rh(i+1)-time3_rh(i));
    vel_raising4(i,:)=abs((new3_raising4(i+1,:)-new3_raising4(i,:)))/(time4_rh(i+1)-time4_rh(i));
    vel_raising5(i,:)=abs((new3_raising5(i+1,:)-new3_raising5(i,:)))/(time5_rh(i+1)-time5_rh(i));
    vel_raising6(i,:)=abs((new3_raising6(i+1,:)-new3_raising6(i,:)))/(time6_rh(i+1)-time6_rh(i));
    vel_raising7(i,:)=abs((new3_raising7(i+1,:)-new3_raising7(i,:)))/(time7_rh(i+1)-time7_rh(i));
    vel_raising8(i,:)=abs((new3_raising8(i+1,:)-new3_raising8(i,:)))/(time8_rh(i+1)-time8_rh(i));
    vel_raising9(i,:)=abs((new3_raising9(i+1,:)-new3_raising9(i,:)))/(time9_rh(i+1)-time9_rh(i));
    vel_raising10(i,:)=abs((new3_raising10(i+1,:)-new3_raising10(i,:)))/(time10_rh(i+1)-time10_rh(i));
    vel_raising11(i,:)=abs((new3_raising11(i+1,:)-new3_raising11(i,:)))/(time11_rh(i+1)-time11_rh(i));
    vel_raising12(i,:)=abs((new3_raising12(i+1,:)-new3_raising12(i,:)))/(time12_rh(i+1)-time12_rh(i));
    vel_raising13(i,:)=abs((new3_raising13(i+1,:)-new3_raising13(i,:)))/(time13_rh(i+1)-time13_rh(i));
    vel_raising14(i,:)=abs((new3_raising14(i+1,:)-new3_raising14(i,:)))/(time14_rh(i+1)-time14_rh(i));
    vel_raising15(i,:)=abs((new3_raising15(i+1,:)-new3_raising15(i,:)))/(time15_rh(i+1)-time15_rh(i));
    vel_raising16(i,:)=abs((new3_raising16(i+1,:)-new3_raising16(i,:)))/(time16_rh(i+1)-time16_rh(i));
    vel_raising17(i,:)=abs((new3_raising17(i+1,:)-new3_raising17(i,:)))/(time17_rh(i+1)-time17_rh(i));
    vel_raising18(i,:)=abs((new3_raising18(i+1,:)-new3_raising18(i,:)))/(time18_rh(i+1)-time18_rh(i));
    vel_raising19(i,:)=abs((new3_raising19(i+1,:)-new3_raising19(i,:)))/(time19_rh(i+1)-time19_rh(i));
    vel_raising20(i,:)=abs((new3_raising20(i+1,:)-new3_raising20(i,:)))/(time20_rh(i+1)-time20_rh(i));
end
for i=1:minminlength_raising-2
    acc_raising1(i,:)=abs((vel_raising1(i+1,:)-vel_raising1(i,:)))/(time1_rh(i+1)-time1_rh(i));
    acc_raising2(i,:)=abs((vel_raising2(i+1,:)-vel_raising2(i,:)))/(time2_rh(i+1)-time2_rh(i));
    acc_raising3(i,:)=abs((vel_raising3(i+1,:)-vel_raising3(i,:)))/(time3_rh(i+1)-time3_rh(i));
    acc_raising4(i,:)=abs((vel_raising4(i+1,:)-vel_raising4(i,:)))/(time4_rh(i+1)-time4_rh(i));
    acc_raising5(i,:)=abs((vel_raising5(i+1,:)-vel_raising5(i,:)))/(time5_rh(i+1)-time5_rh(i));
    acc_raising6(i,:)=abs((vel_raising6(i+1,:)-vel_raising6(i,:)))/(time6_rh(i+1)-time6_rh(i));
    acc_raising7(i,:)=abs((vel_raising7(i+1,:)-vel_raising7(i,:)))/(time7_rh(i+1)-time7_rh(i));
    acc_raising8(i,:)=abs((vel_raising8(i+1,:)-vel_raising8(i,:)))/(time8_rh(i+1)-time8_rh(i));
    acc_raising9(i,:)=abs((vel_raising9(i+1,:)-vel_raising9(i,:)))/(time9_rh(i+1)-time9_rh(i));
    acc_raising10(i,:)=abs((vel_raising10(i+1,:)-vel_raising10(i,:)))/(time10_rh(i+1)-time10_rh(i));
    acc_raising11(i,:)=abs((vel_raising11(i+1,:)-vel_raising11(i,:)))/(time11_rh(i+1)-time11_rh(i));
    acc_raising12(i,:)=abs((vel_raising12(i+1,:)-vel_raising12(i,:)))/(time12_rh(i+1)-time12_rh(i));
    acc_raising13(i,:)=abs((vel_raising13(i+1,:)-vel_raising13(i,:)))/(time13_rh(i+1)-time13_rh(i));
    acc_raising14(i,:)=abs((vel_raising14(i+1,:)-vel_raising14(i,:)))/(time14_rh(i+1)-time14_rh(i));
    acc_raising15(i,:)=abs((vel_raising15(i+1,:)-vel_raising15(i,:)))/(time15_rh(i+1)-time15_rh(i));
    acc_raising16(i,:)=abs((vel_raising16(i+1,:)-vel_raising16(i,:)))/(time16_rh(i+1)-time16_rh(i));
    acc_raising17(i,:)=abs((vel_raising17(i+1,:)-vel_raising17(i,:)))/(time17_rh(i+1)-time17_rh(i));
    acc_raising18(i,:)=abs((vel_raising18(i+1,:)-vel_raising18(i,:)))/(time18_rh(i+1)-time18_rh(i));
    acc_raising19(i,:)=abs((vel_raising19(i+1,:)-vel_raising19(i,:)))/(time19_rh(i+1)-time19_rh(i));
    acc_raising20(i,:)=abs((vel_raising20(i+1,:)-vel_raising20(i,:)))/(time20_rh(i+1)-time20_rh(i));
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
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising1(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising2(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising3(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising4(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising5(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising6(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising7(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising8(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising9(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising10(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising11(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising12(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising13(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising14(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising15(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising16(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising17(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising18(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising19(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-1),vel_raising20(:,i)); hold on
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
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising1(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising2(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising3(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising4(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising5(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising6(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising7(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising8(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising9(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising10(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising11(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising12(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising13(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising14(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising15(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising16(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising17(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising18(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising19(:,i)); hold on
    plot(X_time_rhmin(1:length(X_time_rhmin(:,1))-2),acc_raising20(:,i)); hold on
    xlabel('Time (sec)');
    ylabel('Acceleration (space/s^2)');
    title(txt);
end

%% TELEPHONE
lengths_tel(1,1)=minlength_tele;lengths_tel(1,2)=minlength2_tele;lengths_tel(1,3)=minlength3_tele;
lengths_tel(1,4)=minlength4_tele;lengths_tel(1,5)=minlength5_tele;lengths_tel(1,6)=minlength6_tele;
minminlength_tele=min(lengths_tel);
for i=1:minminlength_tele-1
    vel_tele1(i,:)=abs((new3_tele1(i+1,:)-new3_tele1(i,:)))/(time1_tel(i+1)-time1_tel(i));
    vel_tele2(i,:)=abs((new3_tele2(i+1,:)-new3_tele2(i,:)))/(time2_tel(i+1)-time2_tel(i));
    vel_tele3(i,:)=abs((new3_tele3(i+1,:)-new3_tele3(i,:)))/(time3_tel(i+1)-time3_tel(i));
    vel_tele4(i,:)=abs((new3_tele4(i+1,:)-new3_tele4(i,:)))/(time4_tel(i+1)-time4_tel(i));
    vel_tele5(i,:)=abs((new3_tele5(i+1,:)-new3_tele5(i,:)))/(time5_tel(i+1)-time5_tel(i));
    vel_tele6(i,:)=abs((new3_tele6(i+1,:)-new3_tele6(i,:)))/(time6_tel(i+1)-time6_tel(i));
    vel_tele7(i,:)=abs((new3_tele7(i+1,:)-new3_tele7(i,:)))/(time7_tel(i+1)-time7_tel(i));
    vel_tele8(i,:)=abs((new3_tele8(i+1,:)-new3_tele8(i,:)))/(time8_tel(i+1)-time8_tel(i));
    vel_tele9(i,:)=abs((new3_tele9(i+1,:)-new3_tele9(i,:)))/(time9_tel(i+1)-time9_tel(i));
    vel_tele10(i,:)=abs((new3_tele10(i+1,:)-new3_tele10(i,:)))/(time10_tel(i+1)-time10_tel(i));
    vel_tele11(i,:)=abs((new3_tele11(i+1,:)-new3_tele11(i,:)))/(time11_tel(i+1)-time11_tel(i));
    vel_tele12(i,:)=abs((new3_tele12(i+1,:)-new3_tele12(i,:)))/(time12_tel(i+1)-time12_tel(i));
    vel_tele13(i,:)=abs((new3_tele13(i+1,:)-new3_tele13(i,:)))/(time13_tel(i+1)-time13_tel(i));
    vel_tele14(i,:)=abs((new3_tele14(i+1,:)-new3_tele14(i,:)))/(time14_tel(i+1)-time14_tel(i));
    vel_tele15(i,:)=abs((new3_tele15(i+1,:)-new3_tele15(i,:)))/(time15_tel(i+1)-time15_tel(i));
    vel_tele16(i,:)=abs((new3_tele16(i+1,:)-new3_tele16(i,:)))/(time16_tel(i+1)-time16_tel(i));
    vel_tele17(i,:)=abs((new3_tele17(i+1,:)-new3_tele17(i,:)))/(time17_tel(i+1)-time17_tel(i));
    vel_tele18(i,:)=abs((new3_tele18(i+1,:)-new3_tele18(i,:)))/(time18_tel(i+1)-time18_tel(i));
    vel_tele19(i,:)=abs((new3_tele19(i+1,:)-new3_tele19(i,:)))/(time19_tel(i+1)-time19_tel(i));
    vel_tele20(i,:)=abs((new3_tele20(i+1,:)-new3_tele20(i,:)))/(time20_tel(i+1)-time20_tel(i));
end
for i=1:minminlength_tele-2
    acc_tele1(i,:)=abs((vel_tele1(i+1,:)-vel_tele1(i,:)))/(time1_tel(i+1)-time1_tel(i));
    acc_tele2(i,:)=abs((vel_tele2(i+1,:)-vel_tele2(i,:)))/(time2_tel(i+1)-time2_tel(i));
    acc_tele3(i,:)=abs((vel_tele3(i+1,:)-vel_tele3(i,:)))/(time3_tel(i+1)-time3_tel(i));
    acc_tele4(i,:)=abs((vel_tele4(i+1,:)-vel_tele4(i,:)))/(time4_tel(i+1)-time4_tel(i));
    acc_tele5(i,:)=abs((vel_tele5(i+1,:)-vel_tele5(i,:)))/(time5_tel(i+1)-time5_tel(i));
    acc_tele6(i,:)=abs((vel_tele6(i+1,:)-vel_tele6(i,:)))/(time6_tel(i+1)-time6_tel(i));
    acc_tele7(i,:)=abs((vel_tele7(i+1,:)-vel_tele7(i,:)))/(time7_tel(i+1)-time7_tel(i));
    acc_tele8(i,:)=abs((vel_tele8(i+1,:)-vel_tele8(i,:)))/(time8_tel(i+1)-time8_tel(i));
    acc_tele9(i,:)=abs((vel_tele9(i+1,:)-vel_tele9(i,:)))/(time9_tel(i+1)-time9_tel(i));
    acc_tele10(i,:)=abs((vel_tele10(i+1,:)-vel_tele10(i,:)))/(time10_tel(i+1)-time10_tel(i));
    acc_tele11(i,:)=abs((vel_tele11(i+1,:)-vel_tele11(i,:)))/(time11_tel(i+1)-time11_tel(i));
    acc_tele12(i,:)=abs((vel_tele12(i+1,:)-vel_tele12(i,:)))/(time12_tel(i+1)-time12_tel(i));
    acc_tele13(i,:)=abs((vel_tele13(i+1,:)-vel_tele13(i,:)))/(time13_tel(i+1)-time13_tel(i));
    acc_tele14(i,:)=abs((vel_tele14(i+1,:)-vel_tele14(i,:)))/(time14_tel(i+1)-time14_tel(i));
    acc_tele15(i,:)=abs((vel_tele15(i+1,:)-vel_tele15(i,:)))/(time15_tel(i+1)-time15_tel(i));
    acc_tele16(i,:)=abs((vel_tele16(i+1,:)-vel_tele16(i,:)))/(time16_tel(i+1)-time16_tel(i));
    acc_tele17(i,:)=abs((vel_tele17(i+1,:)-vel_tele17(i,:)))/(time17_tel(i+1)-time17_tel(i));
    acc_tele18(i,:)=abs((vel_tele18(i+1,:)-vel_tele18(i,:)))/(time18_tel(i+1)-time18_tel(i));
    acc_tele19(i,:)=abs((vel_tele19(i+1,:)-vel_tele19(i,:)))/(time19_tel(i+1)-time19_tel(i));
    acc_tele20(i,:)=abs((vel_tele20(i+1,:)-vel_tele20(i,:)))/(time20_tel(i+1)-time20_tel(i));
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
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele1(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele2(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele3(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele4(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele5(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele6(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele7(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele8(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele9(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele10(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele11(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele12(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele13(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele14(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele15(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele16(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele17(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele18(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele19(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-1),vel_tele20(:,i)); hold on
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
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele1(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele2(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele3(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele4(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele5(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele6(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele7(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele8(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele9(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele10(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele11(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele12(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele13(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele14(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele15(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele16(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele17(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele18(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele19(:,i)); hold on
    plot(X_time_telmin(1:length(X_time_telmin(:,1))-2),acc_tele20(:,i)); hold on
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
scatter3(vel_drinking11(:,1),vel_drinking11(:,2),vel_drinking11(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(vel_drinking12(:,1),vel_drinking12(:,2),vel_drinking12(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking13(:,1),vel_drinking13(:,2),vel_drinking13(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking14(:,1),vel_drinking14(:,2),vel_drinking14(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking15(:,1),vel_drinking15(:,2),vel_drinking15(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking16(:,1),vel_drinking16(:,2),vel_drinking16(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking17(:,1),vel_drinking17(:,2),vel_drinking17(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking18(:,1),vel_drinking18(:,2),vel_drinking18(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking19(:,1),vel_drinking18(:,2),vel_drinking19(:,3),2,'r','MarkerFaceColor','r'); hold on
scatter3(vel_drinking20(:,1),vel_drinking20(:,2),vel_drinking20(:,3),2,'r','MarkerFaceColor','r'); hold on

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
scatter3(vel_raising11(:,1),vel_raising11(:,2),vel_raising11(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising12(:,1),vel_raising12(:,2),vel_raising12(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising13(:,1),vel_raising13(:,2),vel_raising13(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising14(:,1),vel_raising14(:,2),vel_raising14(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising15(:,1),vel_raising15(:,2),vel_raising15(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising16(:,1),vel_raising16(:,2),vel_raising16(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising17(:,1),vel_raising17(:,2),vel_raising17(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising18(:,1),vel_raising18(:,2),vel_raising18(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising19(:,1),vel_raising18(:,2),vel_raising19(:,3),2,'b','MarkerFaceColor','b'); hold on
scatter3(vel_raising20(:,1),vel_raising20(:,2),vel_raising20(:,3),2,'b','MarkerFaceColor','b'); hold on

scatter3(vel_tele1(:,1),vel_tele1(:,2),vel_tele1(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele2(:,1),vel_tele2(:,2),vel_tele2(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele3(:,1),vel_tele3(:,2),vel_tele3(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele4(:,1),vel_tele4(:,2),vel_tele4(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele5(:,1),vel_tele5(:,2),vel_tele5(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele6(:,1),vel_tele6(:,2),vel_tele6(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele7(:,1),vel_tele7(:,2),vel_tele7(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele8(:,1),vel_tele8(:,2),vel_tele8(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele9(:,1),vel_tele9(:,2),vel_tele9(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele10(:,1),vel_tele10(:,2),vel_tele10(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele11(:,1),vel_tele11(:,2),vel_tele1(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele12(:,1),vel_tele12(:,2),vel_tele12(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele13(:,1),vel_tele13(:,2),vel_tele13(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele14(:,1),vel_tele14(:,2),vel_tele14(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele15(:,1),vel_tele15(:,2),vel_tele15(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele16(:,1),vel_tele16(:,2),vel_tele16(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele17(:,1),vel_tele17(:,2),vel_tele17(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele18(:,1),vel_tele18(:,2),vel_tele18(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele19(:,1),vel_tele19(:,2),vel_tele19(:,3),2,'k','MarkerFaceColor','k'); hold on
scatter3(vel_tele20(:,1),vel_tele20(:,2),vel_tele20(:,3),2,'k','MarkerFaceColor','k'); hold on
newplotVRROOMman(trunkCenter,raising20);
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
scatter3(acc_drinking9(:,1),acc_drinking9(:,2),acc_drinking9(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking10(:,1),acc_drinking10(:,2),acc_drinking10(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking11(:,1),acc_drinking11(:,2),acc_drinking11(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking12(:,1),acc_drinking12(:,2),acc_drinking12(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking13(:,1),acc_drinking13(:,2),acc_drinking13(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking14(:,1),acc_drinking14(:,2),acc_drinking14(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking15(:,1),acc_drinking15(:,2),acc_drinking15(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking16(:,1),acc_drinking16(:,2),acc_drinking16(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking17(:,1),acc_drinking17(:,2),acc_drinking17(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking18(:,1),acc_drinking18(:,2),acc_drinking18(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking19(:,1),acc_drinking19(:,2),acc_drinking19(:,3),0.5,'r','MarkerFaceColor','g'); hold on
scatter3(acc_drinking20(:,1),acc_drinking20(:,2),acc_drinking20(:,3),0.5,'r','MarkerFaceColor','g'); hold on

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
scatter3(acc_raising11(:,1),acc_raising11(:,2),acc_raising11(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising12(:,1),acc_raising12(:,2),acc_raising12(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising13(:,1),acc_raising13(:,2),acc_raising13(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising14(:,1),acc_raising14(:,2),acc_raising14(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising15(:,1),acc_raising15(:,2),acc_raising15(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising16(:,1),acc_raising16(:,2),acc_raising16(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising17(:,1),acc_raising17(:,2),acc_raising17(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising18(:,1),acc_raising18(:,2),acc_raising18(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising19(:,1),acc_raising19(:,2),acc_raising19(:,3),0.5,'b','MarkerFaceColor','g'); hold on
scatter3(acc_raising20(:,1),acc_raising20(:,2),acc_raising20(:,3),0.5,'b','MarkerFaceColor','g'); hold on

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
scatter3(acc_tele11(:,1),acc_tele11(:,2),acc_tele11(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele12(:,1),acc_tele12(:,2),acc_tele12(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele13(:,1),acc_tele13(:,2),acc_tele13(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele14(:,1),acc_tele14(:,2),acc_tele14(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele15(:,1),acc_tele15(:,2),acc_tele15(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele16(:,1),acc_tele16(:,2),acc_tele16(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele17(:,1),acc_tele17(:,2),acc_tele17(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele18(:,1),acc_tele18(:,2),acc_tele18(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele19(:,1),acc_tele19(:,2),acc_tele19(:,3),0.5,'k','MarkerFaceColor','g'); hold on
scatter3(acc_tele20(:,1),acc_tele20(:,2),acc_tele20(:,3),0.5,'k','MarkerFaceColor','g'); hold on
newplotVRROOMman(trunkCenter,raising20);
hold on
title('Acceleration DRINKING vs RAISING HAND vs TELEPHONE');
text(0,15,1,'Drinking task','Color','b')
text(0,15,2.5,'Raising hand','Color','r')
text(0,15,4,'Telephone','Color','k')
view([85 100 30])



