clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'3.0 flex 5','3.0 flex 4,5'};
v_length = [23 23];
v_length_added = [21 43 66 89 116 139 156 172 192];
num_test_samples = 3;
v_length_train = v_length-num_test_samples;

X = [];
X_train = [];
X_test = [];
t = [];
t_train = [];
t_test = [];

for D = 1:length(dirs)
    temp_X = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch5_features.mat'));
    temp_X = temp_X.feature_matrix_ch5;
    temp_col = zeros(size(temp_X,1),1);
    for i  = 1:size(temp_X,1)
        temp_col(i) = D;
    end
    X(30*(D-1)+1:30*(D-1)+size(temp_X,1),:) = [temp_X temp_col];
end

X_noZ = X(any(X,2),:);

norm_X = [standardise(X_noZ(:,1:34)) X_noZ(:,35)];
norm_X = [normalise(norm_X(:,1:34)) norm_X(:,35)];

for i = 1:length(dirs)
    X_train(30*(i-1)+1:30*(i-1)+v_length_train(i),:) = X(30*(i-1)+1:30*(i-1)+v_length_train(i),:);
end

X_train = X_train(any(X_train,2),:);
norm_X_train = [normalise(X_train(:,1:34)) X_train(:,35)];

for i = 1:length(dirs)
    X_test(30*(i-1)+1+v_length_train(i):30*(i-1)+v_length(i),:) = X(30*(i-1)+1+v_length_train(i):30*(i-1)+v_length(i),:);
end

X_test = X_test(any(X_test,2),:);
norm_X_test = [normc(X_test(:,1:34)) X_test(:,35)];

train_classes = norm_X_train(:,35);
test_classes = norm_X_test(:,35);

X_train = norm_X_train;
X_test = norm_X_test;
t_train = train_classes;
t_test = test_classes;

md1 = fitcknn(X_train(:,[1 2]),t_train,'NumNeighbors',5);

[label,score,cost] = predict(md1,X_test(:,[1 2]));

accuracy = (sum((t_test-label) == 0)/length(t_test))*100
