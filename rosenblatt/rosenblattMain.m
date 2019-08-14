clc
clear all
close all

% 导入训练数据
load trainingData.mat;

% 设置变量
syms x y;
weight = zeros(1,2);
intercept = 0;
k = 0;
yita = 0.1;
R2 = max(trainData(:,1).^2 + trainData(:,2).^2);

figure
hold on
h = fimplicit(@(x,y) weight(1)*x + weight(2)*y + intercept,[0,10]);
for iloop1 = 1:1000
    if(trainData(iloop1,3)*(weight*trainData(iloop1,1:2)' + intercept) <= 0)
        weight = weight + yita*trainData(iloop1,3)*trainData(iloop1,1:2);
        intercept = intercept + yita*trainData(iloop1,3)*R2;
    end
    if (trainData(iloop1,3) == 1)
        scatter(trainData(iloop1,1),trainData(iloop1,2),'r');
    elseif (trainData(iloop1,3) == -1)
        scatter(trainData(iloop1,1),trainData(iloop1,2),'b');
    end
    delete(h);
    h = fimplicit(@(x,y) weight(1)*x + weight(2)*y + intercept,[0,10]);
    pause(0.01);
end
hold off







