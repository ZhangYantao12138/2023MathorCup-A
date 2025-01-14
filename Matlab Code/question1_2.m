%导入每个阈值t，h
data=csvread('../data_100.csv',1,0);
data_t=zeros(10,100);
data_h=zeros(10,100);
Z=zeros(10,100);
L=0.08;
j=1;
k=1;
for i=1:200
    if rem(i,2)==1
        data_t(:,j)=data(:,i);
        j=j+1;
    else
        data_h(:,k)=data(:,i);
        k=k+1;
    end
end
%计算三张卡片不同阈值下组合的最终收入
for i=1:10
    for j=1:100
        H=10^6*data_t(i,j)*data_h(i,j);
        T=10^6*L*data_t(i,j)*(1-data_h(i,j));
        Z(i,j)=T-H;
    end
end
%绘制每个不同阈值下不同卡片的最终收入
figure
x=1:100;
plot(x,Z(1,:),'Color','k','linewidth',1);
xlabel('信用评分卡'),ylabel('最终收入')
hold on
plot(x,Z(2,:),':');

hold on
plot(x,Z(3,:),':');

hold on
plot(x,Z(4,:),':');

hold on
plot(x,Z(5,:),':');

hold on

plot(x,Z(6,:),'Color','b','linewidth',1);

hold on

plot(x,Z(7,:),':',"Color",'g');

hold on

plot(x,Z(8,:),':');

hold on

plot(x,Z(9,:),':');

hold on
plot(x,Z(10,:),'Color','r','linewidth',1);

hold on
yline(max(max(Z)),'--r',LineWidth=2);

hold on
legend('阈值1','阈值2','阈值3','阈值4','阈值5','阈值6','阈值7','阈值8','阈值9','阈值10')
