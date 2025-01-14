% 导入每个阈值t，h
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

% 导入字典
d1=[[0,0],[1,4]];
d2=[[0,1],[2,4]];
d3=[[1,1],[2,8]];
d4=[[1,2],[3,8]];
d5=[[1,3],[4,8]];
d6=[[1,5],[6,8]];
d7=[[1,6],[7,8]];
d8=[[1,7],[8,8]];
d9=[[2,0],[1,17]];
d10=[[3,4],[5,33]];
d11=[[3,5],[6,33]];
d12=[[3,8],[9,33]];
d13=[[4,0],[1,49]];
d14=[[4,1],[2,49]];
d15=[[4,2],[3,49]];
d16=[[5,0],[1,54]];
d17=[[6,4],[5,59]];
d18=[[6,6],[7,59]];
d19=[[6,8],[9,59]];
d20=[[7,9],[10,63]];
d21=[[8,2],[3,83]];



%迭代500次
% 导入矩阵 
data2=csvread('../question3/a500.csv',0,0);
k=1;
for i=1:433
    for j=1:90
        if data2(i,j)==1
            a=rem(j,10)-1;
            if rem(j,10)==0
                a=9;
                j=j-1;
            end
            b=floor(j/10);
            c(k,1)=b;
            c(k,2)=a;
            k=k+1;
        end
    end
end
% size(c)      1299*2
% c(1299,:)     [4 2]
for i=1:1299
    if c(i,:)==d1(1:2)
        ka(i,:)=d1(3:4);
    end
    if c(i,:)==d2(1:2)
        ka(i,:)=d2(3:4);
    end
    if c(i,:)==d3(1:2)
        ka(i,:)=d3(3:4);
    end
    if c(i,:)==d4(1:2)
        ka(i,:)=d4(3:4);
    end
    if c(i,:)==d5(1:2)
        ka(i,:)=d5(3:4);
    end
    if c(i,:)==d6(1:2)
        ka(i,:)=d6(3:4);
    end
    if c(i,:)==d7(1:2)
        ka(i,:)=d7(3:4);
    end
    if c(i,:)==d8(1:2)
        ka(i,:)=d8(3:4);
    end
    if c(i,:)==d9(1:2)
        ka(i,:)=d9(3:4);
    end
    if c(i,:)==d10(1:2)
        ka(i,:)=d10(3:4);
    end
    if c(i,:)==d11(1:2)
        ka(i,:)=d11(3:4);
    end
    if c(i,:)==d12(1:2)
        ka(i,:)=d12(3:4);
    end
    if c(i,:)==d13(1:2)
        ka(i,:)=d13(3:4);
    end
    if c(i,:)==d14(1:2)
        ka(i,:)=d14(3:4);
    end
    if c(i,:)==d15(1:2)
        ka(i,:)=d15(3:4);
    end
    if c(i,:)==d16(1:2)
        ka(i,:)=d16(3:4);
    end
    if c(i,:)==d17(1:2)
        ka(i,:)=d17(3:4);
    end
    if c(i,:)==d18(1:2)
        ka(i,:)=d18(3:4);
    end
    if c(i,:)==d19(1:2)
        ka(i,:)=d19(3:4);
    end
    if c(i,:)==d20(1:2)
        ka(i,:)=d20(3:4);
    end
    if c(i,:)==d21(1:2)
        ka(i,:)=d21(3:4);
    end
end

k=1
for i=1:433
    ka1(i,:)=ka(k,:)
    k=k+1;
    ka2(i,:)=ka(k,:)
    k=k+1;
    ka3(i,:)=ka(k,:)
    k=k+1;
end


for i=1:433
    t1(i)=t(ka1(i,1),ka1(i,2));
    h1(i)=h(ka1(i,1),ka1(i,2));
    t2(i)=t(ka2(i,1),ka2(i,2));
    h2(i)=h(ka2(i,1),ka2(i,2));
    t3(i)=t(ka3(i,1),ka3(i,2));
    h3(i)=h(ka3(i,1),ka3(i,2));
    T(i)=t1(i)*t2(i)*t3(i);
    H(i)=(h1(i)+h2(i)+h3(i))/3;
    Z(i)=10^6*(0.08*T(i).*(1-H(i))-H(i).*T(i));
end


Z(433)


location=zeros(433,2);
for i=1:433
    location(i,1)=i;
    location(i,2)=Z(i);
end
plot(location(:,1),location(:,2), 'ro')

xlabel('迭代次数'),ylabel('最终收入')
hold on

%迭代1000次
% 导入矩阵 
data2=csvread('../question3/a1000.csv',0,0);
k=1;
for i=1:867
    for j=1:90
        if data2(i,j)==1
            a=rem(j,10)-1;
            if rem(j,10)==0
                a=9;
                j=j-1;
            end
            b=floor(j/10);
            c(k,1)=b;
            c(k,2)=a;
            k=k+1;
        end
    end
end


for i=1:2601
    if c(i,:)==d1(1:2)
        ka(i,:)=d1(3:4);
    end
    if c(i,:)==d2(1:2)
        ka(i,:)=d2(3:4);
    end
    if c(i,:)==d3(1:2)
        ka(i,:)=d3(3:4);
    end
    if c(i,:)==d4(1:2)
        ka(i,:)=d4(3:4);
    end
    if c(i,:)==d5(1:2)
        ka(i,:)=d5(3:4);
    end
    if c(i,:)==d6(1:2)
        ka(i,:)=d6(3:4);
    end
    if c(i,:)==d7(1:2)
        ka(i,:)=d7(3:4);
    end
    if c(i,:)==d8(1:2)
        ka(i,:)=d8(3:4);
    end
    if c(i,:)==d9(1:2)
        ka(i,:)=d9(3:4);
    end
    if c(i,:)==d10(1:2)
        ka(i,:)=d10(3:4);
    end
    if c(i,:)==d11(1:2)
        ka(i,:)=d11(3:4);
    end
    if c(i,:)==d12(1:2)
        ka(i,:)=d12(3:4);
    end
    if c(i,:)==d13(1:2)
        ka(i,:)=d13(3:4);
    end
    if c(i,:)==d14(1:2)
        ka(i,:)=d14(3:4);
    end
    if c(i,:)==d15(1:2)
        ka(i,:)=d15(3:4);
    end
    if c(i,:)==d16(1:2)
        ka(i,:)=d16(3:4);
    end
    if c(i,:)==d17(1:2)
        ka(i,:)=d17(3:4);
    end
    if c(i,:)==d18(1:2)
        ka(i,:)=d18(3:4);
    end
    if c(i,:)==d19(1:2)
        ka(i,:)=d19(3:4);
    end
    if c(i,:)==d20(1:2)
        ka(i,:)=d20(3:4);
    end
    if c(i,:)==d21(1:2)
        ka(i,:)=d21(3:4);
    end
end

k=1
for i=1:867
    ka1(i,:)=ka(k,:)
    k=k+1;
    ka2(i,:)=ka(k,:)
    k=k+1;
    ka3(i,:)=ka(k,:)
    k=k+1;
end


for i=1:867
    t1(i)=t(ka1(i,1),ka1(i,2));
    h1(i)=h(ka1(i,1),ka1(i,2));
    t2(i)=t(ka2(i,1),ka2(i,2));
    h2(i)=h(ka2(i,1),ka2(i,2));
    t3(i)=t(ka3(i,1),ka3(i,2));
    h3(i)=h(ka3(i,1),ka3(i,2));
    T(i)=t1(i)*t2(i)*t3(i);
    H(i)=(h1(i)+h2(i)+h3(i))/3;
    Z(i)=10^6*(0.08*T(i).*(1-H(i))-H(i).*T(i));
end



location=zeros(867,2);
for i=1:867
    location(i,1)=i;
    location(i,2)=Z(i);
end
plot(location(:,1),location(:,2), 'ko')

yline(43881,'--r',LineWidth=2)

hold on
legend('迭代500次','迭代1000次')


       





