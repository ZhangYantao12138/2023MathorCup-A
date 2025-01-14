
%导入每个阈值t，h
data=csvread('../data_100.csv',1,0);
data_t=zeros(10,100);
data_h=zeros(10,100);
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

%迭代250次
%导入每次迭代的三张卡片对应的阈值x，y，z
x=zeros(1,250);
y=zeros(1,250);
z=zeros(1,250);
data=csvread('../question2_1/b250.csv',1,1);
for i=1:250
    for j=1:10
        if data(i,j)==1
            x(i)=j;
        end
    end
    for k=11:20
        if data(i,k)==1
            y(i)=k-10;
        end
    end
    for l=21:30
        if data(i,l)==1
            z(i)=l-20;
        end
    end
end

%每次迭代对应的总T,H
T=zeros(1,250);
H=zeros(1,250);
W=zeros(1,250);
for i=1:250
    T(i)=data_t(x(i),1)*data_t(y(i),2)*data_t(z(i),3);
    H(i)=(1/3)*(data_h(x(i),1)+data_h(y(i),2)+data_h(z(i),3));
    W(i)=10^6*(0.08*T(i)*(1-H(i))-T(i)*H(i));
end

location=zeros(250,1);
for i=1:250
    location(i,1)=i;
    location(i,2)=W(i);
end
plot(location(:,1),location(:,2),'go')
xlabel('迭代次数'),ylabel('最终收入')
hold on

%迭代500次
x=zeros(1,500);
y=zeros(1,500);
z=zeros(1,500);
data=csvread('../question2_1/b500.csv',1,1);
for i=1:500
    for j=1:10
        if data(i,j)==1
            x(i)=j;
        end
    end
    for k=11:20
        if data(i,k)==1
            y(i)=k-10;
        end
    end
    for l=21:30
        if data(i,l)==1
            z(i)=l-20;
        end
    end
end

%每次迭代对应的总T,H
T=zeros(1,500);
H=zeros(1,500);
W=zeros(1,500);
for i=1:500
    T(i)=data_t(x(i),1)*data_t(y(i),2)*data_t(z(i),3);
    H(i)=(1/3)*(data_h(x(i),1)+data_h(y(i),2)+data_h(z(i),3));
    W(i)=10^6*(0.08*T(i)*(1-H(i))-T(i)*H(i));
end

location=zeros(500,1);
for i=1:500
    location(i,1)=i;
    location(i,2)=W(i);
end
plot(location(:,1),location(:,2),'ro')
hold on

%1500(第一次)
x=zeros(1,1500);
y=zeros(1,1500);
z=zeros(1,1500);
data=csvread('../question2_1/b1500.csv',0,1);

for i=1:1500
    for j=1:10
        if data(i,j)==1
            x(i)=j;
        end
    end
    for k=11:20
        if data(i,k)==1
            y(i)=k-10;
        end
    end
    for l=21:30
        if data(i,l)==1
            z(i)=l-20;
        end
    end
end


%每次迭代对应的总T,H
T=zeros(1,1500);
H=zeros(1,1500);
W=zeros(1,1500);
for i=1:1500
    T(i)=data_t(x(i),1)*data_t(y(i),2)*data_t(z(i),3);
    H(i)=(1/3)*(data_h(x(i),1)+data_h(y(i),2)+data_h(z(i),3));
    W(i)=10^6*(0.08*T(i)*(1-H(i))-T(i)*H(i));
end

location=zeros(1500,1);
for i=1:1500
    location(i,1)=i;
    location(i,2)=W(i);
end
plot(location(:,1),location(:,2),'c-')
hold on

%1500(第二次)
x=zeros(1,1500);
y=zeros(1,1500);
z=zeros(1,1500);
data=csvread('../question2_1/b1500_2.csv',0,1);

for i=1:1500
    for j=1:10
        if data(i,j)==1
            x(i)=j;
        end
    end
    for k=11:20
        if data(i,k)==1
            y(i)=k-10;
        end
    end
    for l=21:30
        if data(i,l)==1
            z(i)=l-20;
        end
    end
end


%每次迭代对应的总T,H
T=zeros(1,1500);
H=zeros(1,1500);
W=zeros(1,1500);
for i=1:1500
    T(i)=data_t(x(i),1)*data_t(y(i),2)*data_t(z(i),3);
    H(i)=(1/3)*(data_h(x(i),1)+data_h(y(i),2)+data_h(z(i),3));
    W(i)=10^6*(0.08*T(i)*(1-H(i))-T(i)*H(i));
end

location=zeros(1500,1);
for i=1:1500
    location(i,1)=i;
    location(i,2)=W(i);
end
plot(location(:,1),location(:,2),'mo')
hold on

%2000
x=zeros(1,2000);
y=zeros(1,2000);
z=zeros(1,2000);
data=csvread('../question2_1/b2000.csv',0,1);

for i=1:2000
    for j=1:10
        if data(i,j)==1
            x(i)=j;
        end
    end
    for k=11:20
        if data(i,k)==1
            y(i)=k-10;
        end
    end
    for l=21:30
        if data(i,l)==1
            z(i)=l-20;
        end
    end
end


%每次迭代对应的总T,H
T=zeros(1,2000);
H=zeros(1,2000);
W=zeros(1,2000);
for i=1:2000
    T(i)=data_t(x(i),1)*data_t(y(i),2)*data_t(z(i),3);
    H(i)=(1/3)*(data_h(x(i),1)+data_h(y(i),2)+data_h(z(i),3));
    W(i)=10^6*(0.08*T(i)*(1-H(i))-T(i)*H(i));
end

location=zeros(2000,1);
for i=1:2000
    location(i,1)=i;
    location(i,2)=W(i);
end
plot(location(:,1),location(:,2),'bo')

yline(27914.8,'--r',LineWidth=2)
hold on
leg=legend("迭代250次",'迭代500次','迭代1500次(1)','迭代1500(2)','迭代2000次');
leg.FontSize=8;







