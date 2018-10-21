%% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_1 = X_1_temp.feature_matrix_ch1;
X_1_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch2;
X_1_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch3;
X_1_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch4;
X_1_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch5;

X_2_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_2 = X_2_temp.feature_matrix_ch1;
X_2_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch2;
X_2_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch3;
X_2_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch4;
X_2_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch5;

X_3_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_3 = X_3_temp.feature_matrix_ch1;
X_3_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch2;
X_3_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch3;
X_3_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch4;
X_3_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch5;

X_4_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_4 = X_4_temp.feature_matrix_ch1;
X_4_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch2;
X_4_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch3;
X_4_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch4;
X_4_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch5;

X_5_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_5 = X_5_temp.feature_matrix_ch1;
X_5_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch2;
X_5_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch3;
X_5_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch4;
X_5_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch5;

X_6_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_6 = X_6_temp.feature_matrix_ch1;
X_6_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch2;
X_6_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch3;
X_6_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch4;
X_6_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch5;

X_7_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_7 = X_7_temp.feature_matrix_ch1;
X_7_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch2;
X_7_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch3;
X_7_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch4;
X_7_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch5;

X_8_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_8 = X_8_temp.feature_matrix_ch1;
X_8_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch2;
X_8_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch3;
X_8_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch4;
X_8_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch5;

X_9_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch1_features.mat');
X_9 = X_9_temp.feature_matrix_ch1;
X_9_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch2_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch2;
X_9_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch3_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch3;
X_9_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch4_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch4;
X_9_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch5_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch5;

X_10_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch1_features.mat');
X_10 = X_10_temp.feature_matrix_ch1;
X_10_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch2_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch2;
X_10_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch3_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch3;
X_10_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch4_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch4;
X_10_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch5_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch5;

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

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\NB_tests\channel_comb_fixed\sorted_acc_mat_NB_CC'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\NB_tests\channel_comb_fixed\sorted_fet_mat_NB_CC'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\NB_tests\channel_comb_fixed\elapsed_time_NB_CC'), 'elapsed_time');
