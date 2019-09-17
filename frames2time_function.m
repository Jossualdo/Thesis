%frames to time
function [time1, time2, time3, time4, time5, time6, time7, time8, time9, time10, min_time, X_time]=frames2time_function(act1, act2, act3, act4, act5, act6, act7, act8, act9, act10)
frames(:,1)=act1(:,1);
total_sec1=(table2array(frames(end,1))-table2array(frames(1,1)))/1000;
for i=1:length(table2array(act1(:,1)))
    time1(i,1)=(table2array(frames(i,1))-table2array(frames(1,1)))/1000;
end
frames2(:,1)=act2(:,1);
total_sec2=(table2array(frames2(end,1))-table2array(frames2(1,1)))/1000;
for i=1:length(table2array(act2(:,1)))
    time2(i,1)=(table2array(frames2(i,1))-table2array(frames2(1,1)))/1000;
end
frames3(:,1)=act3(:,1);
total_sec3=(table2array(frames3(end,1))-table2array(frames3(1,1)))/1000;
for i=1:length(table2array(act3(:,1)))
    time3(i,1)=(table2array(frames3(i,1))-table2array(frames3(1,1)))/1000;
end
frames4(:,1)=act4(:,1);
total_sec4=(table2array(frames4(end,1))-table2array(frames4(1,1)))/1000;
for i=1:length(table2array(act4(:,1)))
    time4(i,1)=(table2array(frames4(i,1))-table2array(frames4(1,1)))/1000;
end
frames5(:,1)=act5(:,1);
total_sec5=(table2array(frames5(end,1))-table2array(frames5(1,1)))/1000;
for i=1:length(table2array(act5(:,1)))
    time5(i,1)=(table2array(frames5(i,1))-table2array(frames5(1,1)))/1000;
end
frames6(:,1)=act6(:,1);
total_sec6=(table2array(frames6(end,1))-table2array(frames6(1,1)))/1000;
for i=1:length(table2array(act6(:,1)))
    time6(i,1)=(table2array(frames6(i,1))-table2array(frames6(1,1)))/1000;
end
frames7(:,1)=act7(:,1);
total_sec7=(table2array(frames7(end,1))-table2array(frames7(1,1)))/1000;
for i=1:length(table2array(act7(:,1)))
    time7(i,1)=(table2array(frames7(i,1))-table2array(frames7(1,1)))/1000;
end
frames8(:,1)=act8(:,1);
total_sec8=(table2array(frames8(end,1))-table2array(frames8(1,1)))/1000;
for i=1:length(table2array(act8(:,1)))
    time8(i,1)=(table2array(frames8(i,1))-table2array(frames8(1,1)))/1000;
end
frames9(:,1)=act9(:,1);
total_sec4=(table2array(frames9(end,1))-table2array(frames9(1,1)))/1000;
for i=1:length(table2array(act9(:,1)))
    time9(i,1)=(table2array(frames9(i,1))-table2array(frames9(1,1)))/1000;
end
frames10(:,1)=act10(:,1);
total_sec10=(table2array(frames10(end,1))-table2array(frames10(1,1)))/1000;
for i=1:length(table2array(act10(:,1)))
    time10(i,1)=(table2array(frames10(i,1))-table2array(frames10(1,1)))/1000;
end
lengths_time(1,1)=length(time1(:,1));
lengths_time(1,2)=length(time2(:,1));
lengths_time(1,3)=length(time3(:,1));
lengths_time(1,4)=length(time4(:,1));
lengths_time(1,5)=length(time5(:,1));
lengths_time(1,6)=length(time6(:,1));
lengths_time(1,7)=length(time7(:,1));
lengths_time(1,8)=length(time8(:,1));
lengths_time(1,9)=length(time9(:,1));
lengths_time(1,10)=length(time10(:,1));
min_time=min(lengths_time);
if(length(time1(:,1))==min_time)
    X_time=time1;
end
if(length(time2(:,1))==min_time)
    X_time=time2;
end
if(length(time3(:,1))==min_time)
    X_time=time3;
end
if(length(time4(:,1))==min_time)
    X_time=time4;
end
if(length(time5(:,1))==min_time)
    X_time=time5;
end
if(length(time6(:,1))==min_time)
    X_time=time6;
end
if(length(time7(:,1))==min_time)
    X_time=time7;
end
if(length(time8(:,1))==min_time)
    X_time=time8;
end
if(length(time9(:,1))==min_time)
    X_time=time9;
end
if(length(time10(:,1))==min_time)
    X_time=time10;
end
