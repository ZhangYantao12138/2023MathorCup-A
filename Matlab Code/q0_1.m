%导入每个阈值t，h
data=csvread('../data_100.csv',1,0);
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

a=zeros(250,4);
o=1;
p=1;
for i=1:100
    for j=1:10
        a(o,p)=data_t(j,i);
        a(o,p+1)=data_h(j,i);
        o=o+1;
        if o>250
            o=1;
            p=p+1;
        end
    end
end

%绘制t，h相关性热力图
R=corrcoef(a);
heatmap(R)
colormap(flipud(hot))
grid off
ax = gca;
ax.XDisplayLabels = nan(size(ax.XDisplayData));
ax.YDisplayLabels = nan(size(ax.YDisplayData));
xlabel('t'),ylabel('h')
title('t,h相关性热力图')