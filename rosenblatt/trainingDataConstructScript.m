clc 
clear all
close all

%% ����
numOfTrainData = 1000;
gradient = -2;
intercept = 10;
xMin = -0;
xMax = 10;
yMin = -0;
yMax = 10;

%% ����ѵ������
lable = ones(numOfTrainData,1);
randXForTrain = unifrnd(xMin,xMax,numOfTrainData,1);
randYForTrain = unifrnd(yMin,yMax,numOfTrainData,1);
isPositive = randYForTrain - gradient*randXForTrain - intercept;
lable(isPositive < 0) = -1;


% ��������
trainPData = [randXForTrain(isPositive < 0),randYForTrain(isPositive < 0)];
% ��������
trainNData = [randXForTrain(isPositive > 0),randYForTrain(isPositive > 0)];
% ѵ������
trainData = [randXForTrain,randYForTrain,lable];

%% ��ʾѵ������
figure
hold on
grid on
scatter(randXForTrain(isPositive < 0),randYForTrain(isPositive < 0))
scatter(randXForTrain(isPositive > 0),randYForTrain(isPositive > 0))
hold off

%% ��������
save trainingData.mat trainPData trainNData trainData;