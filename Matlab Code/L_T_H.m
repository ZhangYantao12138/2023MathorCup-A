T_all = 0.34:0.01:0.99;     %30   
H_all = 0.003:0.001:0.088;  %86
%绘制在不同通过率和坏账率下的最终收入网格图
L_all = csvread('D:/matlab11/untitled/question2_2/FFF_R_Matrix.csv',1,1);
[xi,yi]=meshgrid(0.34:0.01:0.99,0.003:0.001:0.088);
h=mesh(xi,yi,L_all);
hold on
xlabel('通过率 T'),ylabel('坏账率 H'),zlabel('L'),
