clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch5_features.mat');

X_1 = X_1.feature_matrix_ch5;
X_2 = X_2.feature_matrix_ch5;
X_3 = X_3.feature_matrix_ch5;
X_4 = X_4.feature_matrix_ch5;
X_5 = X_5.feature_matrix_ch5;
X_6 = X_6.feature_matrix_ch5;
X_7 = X_7.feature_matrix_ch5;
X_8 = X_8.feature_matrix_ch5;
X_9 = X_9.feature_matrix_ch5;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:)];

X = standardise(X);
X = normalise(X);

num_samp = 5;

X_train = [X(1:size(X_1,1)-num_samp,:);
    X(size(X_1,1)+1:size(X_1,1)+size(X_2,1)-num_samp,:);
    X(size(X_1,1)+size(X_2,1)+1:size(X_1,1)+size(X_2,1)+size(X_3,1)-num_samp,:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)-num_samp,:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)-num_samp,:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)-num_samp,:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1)-num_samp,:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1)+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1)+size(X_8,1)-num_samp,:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1)+size(X_8,1)+1:end-num_samp,:)];

X_test = [X(size(X_1,1)-num_samp+1:size(X_1,1),:);
    X(size(X_1,1)+size(X_2,1)-num_samp+1:size(X_1,1)+size(X_2,1),:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)-num_samp+1:size(X_1,1)+size(X_2,1)+size(X_3,1),:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)-num_samp+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1),:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)-num_samp+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1),:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)-num_samp+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1),:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1)-num_samp+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1),:);
    X(size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1)+size(X_8,1)-num_samp+1:size(X_1,1)+size(X_2,1)+size(X_3,1)+size(X_4,1)+size(X_5,1)+size(X_6,1)+size(X_7,1)+size(X_8,1),:);
    X(end-num_samp+1:end,:)];

t_1 = zeros(size(X_1,1)-num_samp,1);
t_1(:,:) = 1;
t_2 = zeros(size(X_2,1)-num_samp,1);
t_2(:,:) = 2;
t_3 = zeros(size(X_3,1)-num_samp,1);
t_3(:,:) = 3;
t_4 = zeros(size(X_4,1)-num_samp,1);
t_4(:,:) = 4;
t_5 = zeros(size(X_5,1)-num_samp,1);
t_5(:,:) = 5;
t_6 = zeros(size(X_6,1)-num_samp,1);
t_6(:,:) = 6;
t_7 = zeros(size(X_7,1)-num_samp,1);
t_7(:,:) = 7;
t_8 = zeros(size(X_8,1)-num_samp,1);
t_8(:,:) = 8;
t_9 = zeros(size(X_9,1)-num_samp,1);
t_9(:,:) = 9;

t_train = [t_1;t_2;t_3;t_4;t_5;t_6;t_7;t_8;t_9];

y_1 = zeros(num_samp,1);
y_1(:,:) = 1;
y_2 = zeros(num_samp,1);
y_2(:,:) = 2;
y_3 = zeros(num_samp,1);
y_3(:,:) = 3;
y_4 = zeros(num_samp,1);
y_4(:,:) = 4;
y_5 = zeros(num_samp,1);
y_5(:,:) = 5;
y_6 = zeros(num_samp,1);
y_6(:,:) = 6;
y_7 = zeros(num_samp,1);
y_7(:,:) = 7;
y_8 = zeros(num_samp,1);
y_8(:,:) = 8;
y_9 = zeros(num_samp,1);
y_9(:,:) = 9;

t_test = [y_1;y_2;y_3;y_4;y_5;y_6;y_7;y_8;y_9];

md1 = fitcknn(X_train,t_train,'NumNeighbors',5);
[label,score,cost] = predict(md1,X_test);

accuracy = (sum((t_test-label) == 0)/length(t_test))*100
