%% Load my data

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
X_10 = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch5_features.mat');

X_1 = X_1.feature_matrix_ch5;
X_2 = X_2.feature_matrix_ch5;
X_3 = X_3.feature_matrix_ch5;
X_4 = X_4.feature_matrix_ch5;
X_5 = X_5.feature_matrix_ch5;
X_6 = X_6.feature_matrix_ch5;
X_7 = X_7.feature_matrix_ch5;
X_8 = X_8.feature_matrix_ch5;
X_9 = X_9.feature_matrix_ch5;
X_10 = X_10.feature_matrix_ch5;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

X = (X - mean(X)) ./ std(X);

X_index(1) = 1;
X_ind = [];
X_ind(:,1) = X(:,1);

for i = 2:size(X,2)    
    temp_mat = [X_ind X(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind = temp_mat;
        X_index(:,size(temp_mat,2)) = i;
    end    
end

class_length = [23 23 27 23 21 22 17 17 19 20];

t = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t(1:class_length(i)) = i;
    else
         t(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp = (t);
obs = (X_ind);

% 

num_it = 50;
KNN_acc_mat = zeros(num_it,1);
KNN_fet_mat = {};

tic;

for i = 1:num_it
    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:); 
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcknn(obs_train(:,features_selected),grp_train,'NumNeighbors',5);
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    KNN_acc_mat(i) = accuracy;
    KNN_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(KNN_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = KNN_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\sorted_acc_mat_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\sorted_fet_mat_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\elapsed_time_ch5'), 'elapsed_time');
