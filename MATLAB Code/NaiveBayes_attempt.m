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

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:); X_10(:,:)];

% X = standardise(X);
X = (X - mean(X)) ./ std(X);

% [X_ind_1 , X_index_1] = findInd(X_1);
% [X_ind_2 , X_index_2] = findInd(X_2);
% [X_ind_3 , X_index_3] = findInd(X_3);
% [X_ind_4 , X_index_4] = findInd(X_4);
% [X_ind_5 , X_index_5] = findInd(X_5);
% [X_ind_6 , X_index_6] = findInd(X_6);
% [X_ind_7 , X_index_7] = findInd(X_7);
% [X_ind_8 , X_index_8] = findInd(X_8);
% [X_ind_9 , X_index_9] = findInd(X_9);
% [X_ind_10 , X_index_10] = findInd(X_10);
[X_ind X_index] = findInd(X);

% X_1_test = X_1(:,X_index_7);
% X_2_test = X_2(:,X_index_7);
% X_3_test = X_3(:,X_index_7);
% X_4_test = X_4(:,X_index_7);
% X_5_test = X_5(:,X_index_7);
% X_6_test = X_6(:,X_index_7);
% X_7_test = X_7(:,X_index_7);
% X_8_test = X_8(:,X_index_7);
% X_9_test = X_9(:,X_index_7);
% X_10_test = X_10(:,X_index_7);


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

num_it = 50;
NB_acc_mat = zeros(num_it,1);
NB_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);
    
    % checker = grp_train(tenfoldCVP.training(2)); %12

    % classifier

%     classf = @(xtrain,ytrain,xtest,ytest) ...
%                  sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);
             
%     classf = @(xtrain,ytrain,xtest,ytest) ...
%                  sum((ytest-predict(fitcecoc(xtrain,ytrain),xtest)) ~= 0);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcnb(xtrain,ytrain),xtest)) ~= 0);

    % classf = @(xtrain,ytrain,xtest,ytest) ...
    %              sum((ytest-classify(xtest,xtrain,ytrain,'quadratic'))~=0);

    % classf = @(xtrain,ytrain,xtest,ytest) ...
    %              sum(~strcmp(ytest,classify(xtest,xtrain,ytrain,'quadratic')));

    % Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcnb(obs_train(:,features_selected),grp_train);
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    NB_acc_mat(i) = accuracy;
    NB_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(NB_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = NB_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\NB_tests\channel_sep_fixed\sorted_acc_mat_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\NB_tests\channel_sep_fixed\sorted_fet_mat_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\NB_tests\channel_sep_fixed\elapsed_time_ch5'), 'elapsed_time');

