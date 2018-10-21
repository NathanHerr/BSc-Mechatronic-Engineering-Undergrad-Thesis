%% Load my data - CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_1_CC = X_1_CC_temp.feature_matrix_ch1;
X_1_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch2;
X_1_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch3;
X_1_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch4;
X_1_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch5;

X_2_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_2_CC = X_2_CC_temp.feature_matrix_ch1;
X_2_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch2;
X_2_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch3;
X_2_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch4;
X_2_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch5;

X_3_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_3_CC = X_3_CC_temp.feature_matrix_ch1;
X_3_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch2;
X_3_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch3;
X_3_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch4;
X_3_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch5;

X_4_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_4_CC = X_4_CC_temp.feature_matrix_ch1;
X_4_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch2;
X_4_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch3;
X_4_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch4;
X_4_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch5;

X_5_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_5_CC = X_5_CC_temp.feature_matrix_ch1;
X_5_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch2;
X_5_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch3;
X_5_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch4;
X_5_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch5;

X_6_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_6_CC = X_6_CC_temp.feature_matrix_ch1;
X_6_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch2;
X_6_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch3;
X_6_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch4;
X_6_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch5;

X_7_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_7_CC = X_7_CC_temp.feature_matrix_ch1;
X_7_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch2;
X_7_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch3;
X_7_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch4;
X_7_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch5;

X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_8_CC = X_8_CC_temp.feature_matrix_ch1;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch2;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch3;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch4;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch5;

X_9_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch1_features.mat');
X_9_CC = X_9_CC_temp.feature_matrix_ch1;
X_9_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch2_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch2;
X_9_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch3_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch3;
X_9_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch4_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch4;
X_9_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch5_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch5;

X_10_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch1_features.mat');
X_10_CC = X_10_CC_temp.feature_matrix_ch1;
X_10_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch2_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch2;
X_10_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch3_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch3;
X_10_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch4_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch4;
X_10_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch5_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch5;

X_CC = [X_1_CC(:,:);X_2_CC(:,:);X_3_CC(:,:);X_4_CC(:,:);X_5_CC(:,:);X_6_CC(:,:);X_7_CC(:,:);X_8_CC(:,:);X_9_CC(:,:);X_10_CC(:,:)];

X_CC = (X_CC - mean(X_CC)) ./ std(X_CC);

X_index_CC(1) = 1;
X_ind_CC = [];
X_ind_CC(:,1) = X_CC(:,1);

for i = 2:size(X_CC,2)    
    temp_mat = [X_ind_CC X_CC(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_CC = temp_mat;
        X_index_CC(:,size(temp_mat,2)) = i;
    end    
end

class_length= [size(X_1_CC,1) size(X_2_CC,1) size(X_3_CC,1) size(X_4_CC,1) size(X_5_CC,1) size(X_6_CC,1) size(X_7_CC,1) size(X_8_CC,1) size(X_9_CC,1) size(X_10_CC,1)];

t_CC = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t_CC(1:class_length(i)) = i;
    else
         t_CC(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp_CC = (t_CC);
obs_CC = (X_ind_CC);

KNN_CC_fet = [1 4 8 14]; %5 8 14
KNN_CC_fet_fs = [5 8 14]; %5 8 14

rng(8000,'twister');

holdoutCVP_CC = cvpartition(grp_CC,'holdout',56);

obs_train_CC = obs_CC(holdoutCVP_CC.training,:);
grp_train_CC = grp_CC(holdoutCVP_CC.training);
obs_test_CC = obs_CC(holdoutCVP_CC.test,:); 
grp_test_CC = grp_CC(holdoutCVP_CC.test,:);

% x1range = 1:.1:60;
% x2range = 1:.1:60;
% x3range = 1:.1:60;
% [xx1, xx2, xx3] = meshgrid(x1range,x2range,x3range);
% XGrid = [xx1(:) xx2(:) xx3(:)];

i = 5;

md1_CC = fitcknn(obs_train_CC(:,KNN_CC_fet),grp_train_CC,'NumNeighbors',i);
[label_cf,score,cost] = predict(md1_CC,obs_test_CC(:,KNN_CC_fet));

md1_CC_fs = fitcknn(obs_train_CC(:,KNN_CC_fet_fs),grp_train_CC,'NumNeighbors',5);
[label_fs,NegLoss, PBScore] = predict(md1_CC_fs,obs_test_CC(:,KNN_CC_fet_fs));

% colors = [0, 0.4470, 0.7410;0.8500, 0.3250, 0.0980;0.9290, 0.6940, 0.1250;0.4940, 0.1840, 0.556;0.4660, 0.6740, 0.1880;0.3010, 0.7450, 0.9330;0.6350, 0.0780, 0.1840;0.75, 0, 0.75;0.75, 0.75, 0;0.25, 0.25, 0.25;0, 0.5, 0];

% for j = 1:10
%     ind = j == label_fs;
%     plot3(x1range(ind), x2range(ind), x3range(ind),'color',colors(j,:));
% end

accuracy_CC = (sum((grp_test_CC-label_cf) == 0)/length(grp_test_CC))*100;
accuracy_CC_fs = (sum((grp_test_CC-label_fs) == 0)/length(grp_test_CC))*100;

xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\KNN_label_CC_cf.xlsx'), label_cf)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\KNN_label_CC_fs.xlsx'), label_fs)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\actual_label.xlsx'), grp_test_CC)


% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_CC_cf', 'accuracy_CC');
    
%% Load my data - sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_2_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_3_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_4_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_5_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_6_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_7_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_8_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_9_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch1_features.mat');
X_10_ch1 = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch1_features.mat');

X_1_ch1 = X_1_ch1.feature_matrix_ch1;
X_2_ch1 = X_2_ch1.feature_matrix_ch1;
X_3_ch1 = X_3_ch1.feature_matrix_ch1;
X_4_ch1 = X_4_ch1.feature_matrix_ch1;
X_5_ch1 = X_5_ch1.feature_matrix_ch1;
X_6_ch1 = X_6_ch1.feature_matrix_ch1;
X_7_ch1 = X_7_ch1.feature_matrix_ch1;
X_8_ch1 = X_8_ch1.feature_matrix_ch1;
X_9_ch1 = X_9_ch1.feature_matrix_ch1;
X_10_ch1 = X_10_ch1.feature_matrix_ch1;

X_ch1 = [X_1_ch1(:,:);X_2_ch1(:,:);X_3_ch1(:,:);X_4_ch1(:,:);X_5_ch1(:,:);X_6_ch1(:,:);X_7_ch1(:,:);X_8_ch1(:,:);X_9_ch1(:,:);X_10_ch1(:,:)];

X_ch1 = (X_ch1 - mean(X_ch1)) ./ std(X_ch1);

X_index_ch1(1) = 1;
X_ind_ch1 = [];
X_ind_ch1(:,1) = X_ch1(:,1);

for i = 2:size(X_ch1,2)    
    temp_mat = [X_ind_ch1 X_ch1(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch1 = temp_mat;
        X_index_ch1(:,size(temp_mat,2)) = i;
    end    
end

class_length= [size(X_1_ch1,1) size(X_2_ch1,1) size(X_3_ch1,1) size(X_4_ch1,1) size(X_5_ch1,1) size(X_6_ch1,1) size(X_7_ch1,1) size(X_8_ch1,1) size(X_9_ch1,1) size(X_10_ch1,1)];

t_ch1 = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t_ch1(1:class_length(i)) = i;
    else
         t_ch1(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp_ch1 = (t_ch1);
obs_ch1 = (X_ind_ch1);

X_1_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_2_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_3_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_4_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_5_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_6_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_7_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_8_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_9_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch2_features.mat');
X_10_ch2 = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch2_features.mat');

X_1_ch2 = X_1_ch2.feature_matrix_ch2;
X_2_ch2 = X_2_ch2.feature_matrix_ch2;
X_3_ch2 = X_3_ch2.feature_matrix_ch2;
X_4_ch2 = X_4_ch2.feature_matrix_ch2;
X_5_ch2 = X_5_ch2.feature_matrix_ch2;
X_6_ch2 = X_6_ch2.feature_matrix_ch2;
X_7_ch2 = X_7_ch2.feature_matrix_ch2;
X_8_ch2 = X_8_ch2.feature_matrix_ch2;
X_9_ch2 = X_9_ch2.feature_matrix_ch2;
X_10_ch2 = X_10_ch2.feature_matrix_ch2;

X_ch2 = [X_1_ch2(:,:);X_2_ch2(:,:);X_3_ch2(:,:);X_4_ch2(:,:);X_5_ch2(:,:);X_6_ch2(:,:);X_7_ch2(:,:);X_8_ch2(:,:);X_9_ch2(:,:);X_10_ch2(:,:)];

X_ch2 = (X_ch2 - mean(X_ch2)) ./ std(X_ch2);

X_index_ch2(1) = 1;
X_ind_ch2 = [];
X_ind_ch2(:,1) = X_ch2(:,1);

for i = 2:size(X_ch2,2)    
    temp_mat = [X_ind_ch2 X_ch2(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch2 = temp_mat;
        X_index_ch2(:,size(temp_mat,2)) = i;
    end    
end

class_length= [size(X_1_ch2,1) size(X_2_ch2,1) size(X_3_ch2,1) size(X_4_ch2,1) size(X_5_ch2,1) size(X_6_ch2,1) size(X_7_ch2,1) size(X_8_ch2,1) size(X_9_ch2,1) size(X_10_ch2,1)];

t_ch2 = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t_ch2(1:class_length(i)) = i;
    else
         t_ch2(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp_ch2 = (t_ch2);
obs_ch2 = (X_ind_ch2);

X_1_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_2_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_3_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_4_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_5_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_6_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_7_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_8_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_9_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch3_features.mat');
X_10_ch3 = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch3_features.mat');

X_1_ch3 = X_1_ch3.feature_matrix_ch3;
X_2_ch3 = X_2_ch3.feature_matrix_ch3;
X_3_ch3 = X_3_ch3.feature_matrix_ch3;
X_4_ch3 = X_4_ch3.feature_matrix_ch3;
X_5_ch3 = X_5_ch3.feature_matrix_ch3;
X_6_ch3 = X_6_ch3.feature_matrix_ch3;
X_7_ch3 = X_7_ch3.feature_matrix_ch3;
X_8_ch3 = X_8_ch3.feature_matrix_ch3;
X_9_ch3 = X_9_ch3.feature_matrix_ch3;
X_10_ch3 = X_10_ch3.feature_matrix_ch3;

X_ch3 = [X_1_ch3(:,:);X_2_ch3(:,:);X_3_ch3(:,:);X_4_ch3(:,:);X_5_ch3(:,:);X_6_ch3(:,:);X_7_ch3(:,:);X_8_ch3(:,:);X_9_ch3(:,:);X_10_ch3(:,:)];

X_ch3 = (X_ch3 - mean(X_ch3)) ./ std(X_ch3);

X_index_ch3(1) = 1;
X_ind_ch3 = [];
X_ind_ch3(:,1) = X_ch3(:,1);

for i = 2:size(X_ch3,2)    
    temp_mat = [X_ind_ch3 X_ch3(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch3 = temp_mat;
        X_index_ch3(:,size(temp_mat,2)) = i;
    end    
end

class_length= [size(X_1_ch3,1) size(X_2_ch3,1) size(X_3_ch3,1) size(X_4_ch3,1) size(X_5_ch3,1) size(X_6_ch3,1) size(X_7_ch3,1) size(X_8_ch3,1) size(X_9_ch3,1) size(X_10_ch3,1)];

t_ch3 = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t_ch3(1:class_length(i)) = i;
    else
         t_ch3(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp_ch3 = (t_ch3);
obs_ch3 = (X_ind_ch3);

X_1_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_2_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_3_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_4_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_5_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_6_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_7_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_8_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_9_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch4_features.mat');
X_10_ch4 = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch4_features.mat');

X_1_ch4 = X_1_ch4.feature_matrix_ch4;
X_2_ch4 = X_2_ch4.feature_matrix_ch4;
X_3_ch4 = X_3_ch4.feature_matrix_ch4;
X_4_ch4 = X_4_ch4.feature_matrix_ch4;
X_5_ch4 = X_5_ch4.feature_matrix_ch4;
X_6_ch4 = X_6_ch4.feature_matrix_ch4;
X_7_ch4 = X_7_ch4.feature_matrix_ch4;
X_8_ch4 = X_8_ch4.feature_matrix_ch4;
X_9_ch4 = X_9_ch4.feature_matrix_ch4;
X_10_ch4 = X_10_ch4.feature_matrix_ch4;

X_ch4 = [X_1_ch4(:,:);X_2_ch4(:,:);X_3_ch4(:,:);X_4_ch4(:,:);X_5_ch4(:,:);X_6_ch4(:,:);X_7_ch4(:,:);X_8_ch4(:,:);X_9_ch4(:,:);X_10_ch4(:,:)];

X_ch4 = (X_ch4 - mean(X_ch4)) ./ std(X_ch4);

X_index_ch4(1) = 1;
X_ind_ch4 = [];
X_ind_ch4(:,1) = X_ch4(:,1);

for i = 2:size(X_ch4,2)    
    temp_mat = [X_ind_ch4 X_ch4(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch4 = temp_mat;
        X_index_ch4(:,size(temp_mat,2)) = i;
    end    
end

class_length= [size(X_1_ch4,1) size(X_2_ch4,1) size(X_3_ch4,1) size(X_4_ch4,1) size(X_5_ch4,1) size(X_6_ch4,1) size(X_7_ch4,1) size(X_8_ch4,1) size(X_9_ch4,1) size(X_10_ch4,1)];

t_ch4 = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t_ch4(1:class_length(i)) = i;
    else
         t_ch4(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp_ch4 = (t_ch4);
obs_ch4 = (X_ind_ch4);

X_1_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch5_features.mat');
X_10_ch5 = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch5_features.mat');

X_1_ch5 = X_1_ch5.feature_matrix_ch5;
X_2_ch5 = X_2_ch5.feature_matrix_ch5;
X_3_ch5 = X_3_ch5.feature_matrix_ch5;
X_4_ch5 = X_4_ch5.feature_matrix_ch5;
X_5_ch5 = X_5_ch5.feature_matrix_ch5;
X_6_ch5 = X_6_ch5.feature_matrix_ch5;
X_7_ch5 = X_7_ch5.feature_matrix_ch5;
X_8_ch5 = X_8_ch5.feature_matrix_ch5;
X_9_ch5 = X_9_ch5.feature_matrix_ch5;
X_10_ch5 = X_10_ch5.feature_matrix_ch5;

X_ch5 = [X_1_ch5(:,:);X_2_ch5(:,:);X_3_ch5(:,:);X_4_ch5(:,:);X_5_ch5(:,:);X_6_ch5(:,:);X_7_ch5(:,:);X_8_ch5(:,:);X_9_ch5(:,:);X_10_ch5(:,:)];

X_ch5 = (X_ch5 - mean(X_ch5)) ./ std(X_ch5);

X_index_ch5(1) = 1;
X_ind_ch5 = [];
X_ind_ch5(:,1) = X_ch5(:,1);

for i = 2:size(X_ch5,2)    
    temp_mat = [X_ind_ch5 X_ch5(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch5 = temp_mat;
        X_index_ch5(:,size(temp_mat,2)) = i;
    end    
end

class_length= [size(X_1_ch5,1) size(X_2_ch5,1) size(X_3_ch5,1) size(X_4_ch5,1) size(X_5_ch5,1) size(X_6_ch5,1) size(X_7_ch5,1) size(X_8_ch5,1) size(X_9_ch5,1) size(X_10_ch5,1)];

t_ch5 = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t_ch5(1:class_length(i)) = i;
    else
         t_ch5(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp_ch5 = (t_ch5);
obs_ch5 = (X_ind_ch5);

%

KNN_fet_ch1 = [8 12 15 16];
KNN_fet_ch2 = [4 12 15 17];
KNN_fet_ch3 = [1 4 8 18];
KNN_fet_ch4 = [4 8 15 19];
KNN_fet_ch5 = [4 8 10];

KNN_fet_ch1_fs = [9 15 17 24];
KNN_fet_ch2_fs = [4 10 12 13 15 16];
KNN_fet_ch3_fs = [1 8 13 14 18];
KNN_fet_ch4_fs = [8 14 15];
KNN_fet_ch5_fs = [8 10 20 27];

%
rng(8000,'twister');

holdoutCVP_ch1 = cvpartition(grp_ch1,'holdout',56);

obs_train_ch1 = obs_ch1(holdoutCVP_ch1.training,:);
grp_train_ch1 = grp_ch1(holdoutCVP_ch1.training);
obs_test_ch1 = obs_ch1(holdoutCVP_ch1.test,:); 
grp_test_ch1 = grp_ch1(holdoutCVP_ch1.test,:);

holdoutCVP_ch2 = cvpartition(grp_ch2,'holdout',56);

obs_train_ch2 = obs_ch2(holdoutCVP_ch1.training,:);
grp_train_ch2 = grp_ch2(holdoutCVP_ch1.training);
obs_test_ch2 = obs_ch2(holdoutCVP_ch1.test,:); 
grp_test_ch2 = grp_ch2(holdoutCVP_ch1.test,:);

holdoutCVP_ch3 = cvpartition(grp_ch3,'holdout',56);

obs_train_ch3 = obs_ch3(holdoutCVP_ch1.training,:);
grp_train_ch3 = grp_ch3(holdoutCVP_ch1.training);
obs_test_ch3 = obs_ch3(holdoutCVP_ch1.test,:); 
grp_test_ch3 = grp_ch3(holdoutCVP_ch1.test,:);

holdoutCVP_ch4 = cvpartition(grp_ch4,'holdout',56);

obs_train_ch4 = obs_ch4(holdoutCVP_ch1.training,:);
grp_train_ch4 = grp_ch4(holdoutCVP_ch1.training);
obs_test_ch4 = obs_ch4(holdoutCVP_ch1.test,:); 
grp_test_ch4 = grp_ch4(holdoutCVP_ch1.test,:);

holdoutCVP_ch5 = cvpartition(grp_ch5,'holdout',56);

obs_train_ch5 = obs_ch5(holdoutCVP_ch1.training,:);
grp_train_ch5 = grp_ch5(holdoutCVP_ch1.training);
obs_test_ch5 = obs_ch5(holdoutCVP_ch1.test,:); 
grp_test_ch5 = grp_ch5(holdoutCVP_ch1.test,:);

classf = @(xtrain,ytrain,xtest,ytest) ...
         sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

k = 5;

md1_CH1 = fitcknn(obs_train_ch1(:,KNN_fet_ch1),grp_train_ch1,'NumNeighbors',k);
[label_ch1,score,cost] = predict(md1_CH1,obs_test_ch1(:,KNN_fet_ch1));
accuracy_ch1 = (sum((grp_test_ch1-label_ch1) == 0)/length(grp_test_ch1))*100;
  
md1_CH2 = fitcknn(obs_train_ch2(:,KNN_fet_ch2),grp_train_ch2,'NumNeighbors',k);
[label_ch2,score,cost] = predict(md1_CH2,obs_test_ch2(:,KNN_fet_ch2));
accuracy_ch2 = (sum((grp_test_ch2-label_ch2) == 0)/length(grp_test_ch2))*100;
  
md1_CH3 = fitcknn(obs_train_ch3(:,KNN_fet_ch3),grp_train_ch3,'NumNeighbors',k);
[label_ch3,score,cost] = predict(md1_CH3,obs_test_ch3(:,KNN_fet_ch3));
accuracy_ch3 = (sum((grp_test_ch3-label_ch3) == 0)/length(grp_test_ch3))*100;
  
md1_CH4 = fitcknn(obs_train_ch4(:,KNN_fet_ch4),grp_train_ch4,'NumNeighbors',k);
[label_ch4,score,cost] = predict(md1_CH4,obs_test_ch4(:,KNN_fet_ch4));
accuracy_ch4 = (sum((grp_test_ch4-label_ch4) == 0)/length(grp_test_ch4))*100;

    
md1_CH5 = fitcknn(obs_train_ch5(:,KNN_fet_ch5),grp_train_ch5,'NumNeighbors',k);
[label_ch5,score,cost] = predict(md1_CH5,obs_test_ch5(:,KNN_fet_ch5));
accuracy_ch5 = (sum((grp_test_ch5-label_ch5) == 0)/length(grp_test_ch5))*100;

    
label_sep_prev = [label_ch1 label_ch2 label_ch3 label_ch4 label_ch5];
label_sep = zeros(length(label_ch1),1);

for i = 1:length(label_ch1)
    tracker = 0;
    for j = 1:10
        if (sum(label_sep_prev(i,:)==j) > tracker)
            label_sep(i) = j;
            tracker = sum(label_sep_prev(i,:)==j);
        end
    end    
end

accuracy_sep = (sum((grp_test_ch1-label_sep) == 0)/length(grp_test_ch1))*100;

k = 5;

md1_CH1_fs = fitcknn(obs_train_ch1(:,KNN_fet_ch1_fs),grp_train_ch1,'NumNeighbors',k);
[label_ch1_fs,score,cost] = predict(md1_CH1_fs,obs_test_ch1(:,KNN_fet_ch1_fs));
accuracy_ch1_fs = (sum((grp_test_ch1-label_ch1_fs) == 0)/length(grp_test_ch1))*100;

md1_CH2_fs = fitcknn(obs_train_ch2(:,KNN_fet_ch2_fs),grp_train_ch2,'NumNeighbors',k);
[label_ch2_fs,score,cost] = predict(md1_CH2_fs,obs_test_ch2(:,KNN_fet_ch2_fs));
accuracy_ch2_fs = (sum((grp_test_ch2-label_ch2_fs) == 0)/length(grp_test_ch2))*100;

md1_CH3_fs = fitcknn(obs_train_ch3(:,KNN_fet_ch3_fs),grp_train_ch3,'NumNeighbors',k);
[label_ch3_fs,score,cost] = predict(md1_CH3_fs,obs_test_ch3(:,KNN_fet_ch3_fs));
accuracy_ch3_fs = (sum((grp_test_ch3-label_ch3_fs) == 0)/length(grp_test_ch3))*100;
 
md1_CH4_fs = fitcknn(obs_train_ch4(:,KNN_fet_ch4_fs),grp_train_ch4,'NumNeighbors',k);
[label_ch4_fs,score,cost] = predict(md1_CH4_fs,obs_test_ch4(:,KNN_fet_ch4_fs));
accuracy_ch4_fs = (sum((grp_test_ch4-label_ch4_fs) == 0)/length(grp_test_ch4))*100;

md1_CH5_fs = fitcknn(obs_train_ch5(:,KNN_fet_ch5_fs),grp_train_ch5,'NumNeighbors',k);
[label_ch5_fs,score,cost] = predict(md1_CH5_fs,obs_test_ch5(:,KNN_fet_ch5_fs));
accuracy_ch5_fs = (sum((grp_test_ch5-label_ch5_fs) == 0)/length(grp_test_ch5))*100;

    
label_sep_prev_fs = [label_ch1_fs label_ch2_fs label_ch3_fs label_ch4_fs label_ch5_fs];
label_sep_fs = zeros(length(label_ch1),1);

for i = 1:length(label_ch1)
    tracker = 0;
    for j = 1:10
        if (sum(label_sep_prev_fs(i,:)==j) > tracker)
            label_sep_fs(i) = j;
            tracker = sum(label_sep_prev_fs(i,:)==j);
        end
    end    
end

accuracy_sep_fs = (sum((grp_test_ch1-label_sep_fs) == 0)/length(grp_test_ch1))*100;

xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\KNN_label_sep_cf.xlsx'), label_sep)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\KNN_label_sep_fs.xlsx'), label_sep_fs)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\actual_label_sep.xlsx'), grp_test_ch1)


% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_ch1_cf', 'accuracy_ch1');
% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_ch2_cf', 'accuracy_ch2');
% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_ch3_cf', 'accuracy_ch3');
% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_ch4_cf', 'accuracy_ch4');
% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_ch5_cf', 'accuracy_ch5');
% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_sep_cf', 'accuracy_sep');
% save('C:\Users\Nathan\Desktop\Thesis\My data\KNN_tests\compare features\acc_sep_fs', 'accuracy_sep_fs');

    