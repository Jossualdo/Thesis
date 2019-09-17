%Scatterplot histogram drinking
figure,
scatter3(new3_drinking1(:,1),new3_drinking1(:,2),new3_drinking1(:,3),5,'b'); hold on
scatter3(new3_drinking2(:,1),new3_drinking2(:,2),new3_drinking2(:,3),5,'b'); hold on
scatter3(new3_drinking3(:,1),new3_drinking3(:,2),new3_drinking3(:,3),5,'b'); hold on
scatter3(new3_drinking4(:,1),new3_drinking4(:,2),new3_drinking4(:,3),5,'b'); hold on
scatter3(new3_drinking5(:,1),new3_drinking5(:,2),new3_drinking5(:,3),5,'b'); hold on
scatter3(new3_drinking6(:,1),new3_drinking6(:,2),new3_drinking6(:,3),5,'b'); hold on
scatter3(new3_drinking7(:,1),new3_drinking7(:,2),new3_drinking7(:,3),5,'b'); hold on
scatter3(new3_drinking8(:,1),new3_drinking8(:,2),new3_drinking8(:,3),5,'b'); hold on
scatter3(new3_drinking9(:,1),new3_drinking9(:,2),new3_drinking9(:,3),5,'b'); hold on
scatter3(new3_drinking10(:,1),new3_drinking10(:,2),new3_drinking10(:,3),5,'b'); hold on
scatter3(new3_dr_shoulder(100,1),new3_dr_shoulder(100,2),new3_dr_shoulder(100,3),70,'MarkerEdgeColor','k','MarkerFaceColor','g'); hold on
scatter3(new3_dr_hip(50,1),new3_dr_hip(50,2),new3_dr_hip(50,3),100,'MarkerEdgeColor','k','MarkerFaceColor','y'); hold on
plotVRROOMman(trunkCenter,mirrorCenter,mirrorPitch)
hold off
xlabel('Left/Right');
ylabel('Backward/Forward');
zlabel('Down/Up');
title('3D plot Right Wrist Location - DRINKING');
text(0,0.5,0.1,'Drinking task','Color','b')
text(0.102,0.06737,0.7588,'Shoulder','Color','g')
text(0.01143,0.1127,0.2297,'Hip','Color','y')
view([85 100 30])


%Histogram in 2D drinking
x=vertcat(new3_drinking1(:,1),new3_drinking2(:,1),new3_drinking3(:,1),new3_drinking4(:,1),new3_drinking5(:,1),new3_drinking6(:,1),new3_drinking7(:,1),new3_drinking8(:,1),new3_drinking9(:,1),new3_drinking10(:,1));
y=vertcat(new3_drinking1(:,2),new3_drinking2(:,2),new3_drinking3(:,2),new3_drinking4(:,2),new3_drinking5(:,2),new3_drinking6(:,2),new3_drinking7(:,2),new3_drinking8(:,2),new3_drinking9(:,2),new3_drinking10(:,2));
z=vertcat(new3_drinking1(:,3),new3_drinking2(:,3),new3_drinking3(:,3),new3_drinking4(:,3),new3_drinking5(:,3),new3_drinking6(:,3),new3_drinking7(:,3),new3_drinking8(:,3),new3_drinking9(:,3),new3_drinking10(:,3));
xedges=(-0.16:0.02:0.48);
yedges=(-0.2:0.02:0.48);
     [tab,I,J]=hist3d(x,y,z,xedges,yedges);
     C=tab;C(C==0)=NaN; %colormap
figure,
     surface(xedges,yedges,tab,C)
view([10 40 30])

%% K means

drinking_kmeans=vertcat(new3_drinking1,new3_drinking2,new3_drinking3,new3_drinking4,new3_drinking5,new3_drinking6,new3_drinking7,new3_drinking8,new3_drinking9,new3_drinking10);

X_tasks=drinking_kmeans(:,1);
Y_tasks=drinking_kmeans(:,2);
Z_tasks=drinking_kmeans(:,3);
XYZ_tasks=horzcat(X_tasks,Y_tasks,Z_tasks);
K = 2;
L=50;cont=0;silh=zeros(1,L);Gs=zeros(length(drinking_kmeans(:,1)),1);C1s=zeros(K,1);C2s=zeros(K,1);C3s=zeros(K,1);
for i=1:L
clear C; clear G; clear clr;
% if(cont<L+1)
[G,C] = kmeans(XYZ_tasks, K, 'distance','sqEuclidean', 'start','sample');
s6 = silhouette(XYZ_tasks,G);
silh(1,i)=mean(s6);
Gs(:,i)=G; C1s(:,i)=C(:,1);C2s(:,i)=C(:,2);C3s(:,i)=C(:,3);
% cont=cont+1;
% end
end
Gb=zeros(length(drinking_kmeans(:,1)),1);C1sb=zeros(K,1);C2sb=zeros(K,1);C3sb=zeros(K,1);Cb=zeros(K,3);
maxsilh=max(silh);position=find(silh==maxsilh);Gb=Gs(:,position(1));C1sb=C1s(:,position(1));C2sb=C2s(:,position(1));C3sb=C3s(:,position(1));Cb=horzcat(C1sb,C2sb,C3sb);
%# show points and clusters (color-coded)
clr = lines(K);
figure, hold on
scatter3(XYZ_tasks(:,1), XYZ_tasks(:,2), XYZ_tasks(:,3), 36, clr(Gb,:), 'Marker','.')
scatter3(Cb(:,1), Cb(:,2), Cb(:,3), 100, clr, 'Marker','o', 'LineWidth',3)
hold off
view(3), axis vis3d, box on, rotate3d on
xlabel('x'), ylabel('y'), zlabel('z')
title('K-means clustering');
view([85 100 30])
text=['Silhouette value = ',num2str(maxsilh)];
fprintf(text)
% text(-0.2,0.4,0.5,'Cluster 2','Color','b');
% text(0.4,-0.2,1.4,'Cluster 1','Color',[ 0.9100 0.4100 0.1700]);




