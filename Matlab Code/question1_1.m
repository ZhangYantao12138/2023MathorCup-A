x=1:100;
y=1:10;
%导入每个阈值t，h
data=csvread('../data_100.csv',1,0);
t=zeros(10,100);
h=zeros(10,100);
j=1;
k=1;
for i=1:200
    if rem(i,2)==1
        t(:,j)=data(:,i);
        j=j+1;
    else
        h(:,k)=data(:,i);
        k=k+1;
    end
end
%绘制热力图
z=10^6*(0.08*t.*(1-h)-h.*t);
h=heatmap(x,y,z);
colormap(flipud (hot))
xlabel('x(卡片)'),ylabel('y(阈值)'),title('评分卡对应每一阈值的最终收入')
