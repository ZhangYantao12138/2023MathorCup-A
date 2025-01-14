x=zeros(1,2000);
q=1;
data1=csvread('../question1/a2000.csv',1,1);
for i=1:2000
    for j=1:1000
        if data1(i,j)==1
            x(q)=j;
            q=q+1;
        end
    end
end
%每次迭代对应的阈值和评分卡
yu=zeros(1,2000);
ka=zeros(1,2000);
for i=1:2000
    if rem(x(i),10)==0
        yu(i)=10;
        ka(i)=floor(x(i)/10);
    else
        yu(i)=rem(x(i),10);
        ka(i)=floor(x(i)/10)+1;
    end
end

%导入每张卡每个阈值对应的t，h
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

%迭代2000次
%每次迭代对应的t，h，z*
H=zeros(1,2000);
T=zeros(1,2000);
Z=zeros(1,2000);
for i=1:2000
    H(i)=data_h(yu(i),ka(i));   %2000次迭代结果对应的坏账率
    T(i)=data_t(yu(i),ka(i));    %2000次迭代结果对应的通过率
    Z(i)=10^6*(0.08*T(i).*(1-H(i))-H(i).*T(i));
end
location=zeros(2000,2);
for i=1:2000
    location(i,1)=i;
    location(i,2)=Z(i);
end
plot(location(:,1),location(:,2),'bo')
xlabel('迭代次数'),ylabel('最终收入')
hold on

%迭代1000次
x2=zeros(1,1000);
q2=1;
data2=csvread('../question1/a1000.csv',1,1);
for i=1:1000
    for j=1:1000
        if data2(i,j)==1
            x2(q2)=j;
            q2=q2+1;
        end
    end
end
yu=zeros(1,1000);
ka=zeros(1,1000);
for i=1:1000
    if rem(x2(i),10)==0
        yu(i)=10;
        ka(i)=floor(x2(i)/10);
    else
        yu(i)=rem(x2(i),10);
        ka(i)=floor(x2(i)/10)+1;
    end
end

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

H=zeros(1,1000);
T=zeros(1,1000);
Z=zeros(1,1000);
for i=1:1000
    H(i)=data_h(yu(i),ka(i));
    T(i)=data_t(yu(i),ka(i));
    Z(i)=10^6*(0.08*T(i).*(1-H(i))-H(i).*T(i));
end
location=zeros(1000,2);
for i=1:1000
    location(i,1)=i;
    location(i,2)=Z(i);
end
plot(location(:,1),location(:,2),'ko')
hold on

%迭代500次
x3=zeros(1,500);
q3=1;
data3=csvread('../question1/a500.csv',1,1);
for i=1:500
    for j=1:1000
        if data3(i,j)==1
            x3(i)=j;
            q3=q3+1;
        end
    end
end
yu=zeros(1,500);
ka=zeros(1,500);
for i=1:500
    if rem(x3(i),10)==0
        yu(i)=10;
        ka(i)=floor(x3(i)/10);
    else
        yu(i)=rem(x3(i),10);
        ka(i)=floor(x3(i)/10)+1;
    end
end

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

H=zeros(1,500);
T=zeros(1,500);
Z=zeros(1,500);
for i=1:500
    H(i)=data_h(yu(i),ka(i));
    T(i)=data_t(yu(i),ka(i));
    Z(i)=10^6*(0.08*T(i).*(1-H(i))-H(i).*T(i));
end
location=zeros(500,2);
for i=1:500
    location(i,1)=i;
    location(i,2)=Z(i);
end
plot(location(:,1),location(:,2),'ro')

yline(61172,'--r',LineWidth=2)

hold on
legend('迭代2000次','迭代1000次','迭代500次')

