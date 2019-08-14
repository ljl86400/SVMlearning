clc 
clear all
close all

%% 设置
numOfTrainData = 1000;
gradient = -2;
intercept = 10;
xMin = -0;
xMax = 10;
yMin = -0;
yMax = 10;

%% 构造训练数据
lable = ones(numOfTrainData,1);
randXForTrain = unifrnd(xMin,xMax,numOfTrainData,1);
randYForTrain = unifrnd(yMin,yMax,numOfTrainData,1);
isPositive = randYForTrain - gradient*randXForTrain - intercept;
lable(isPositive < 0) = -1;


% 正类数据
trainPData = [randXForTrain(isPositive < 0),randYForTrain(isPositive < 0)];
% 负类数据
trainNData = [randXForTrain(isPositive > 0),randYForTrain(isPositive > 0)];
% 训练数据
trainData = [randXForTrain,randYForTrain,lable];

%% 显示训练数据
figure
hold on
grid on
scatter(randXForTrain(isPositive < 0),randYForTrain(isPositive < 0))
scatter(randXForTrain(isPositive > 0),randYForTrain(isPositive > 0))
hold off

%% 保存数据
save trainingData.mat trainPData trainNData trainData;