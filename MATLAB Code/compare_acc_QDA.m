%% Load my data

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

QDA_CC = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_comb_fixed\QDA_acc.mat');
QDA_CC = QDA_CC.QDA_acc;
QDA_CC_fet = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_comb_fixed\QDA_fet.mat');
QDA_CC_fet = QDA_CC_fet.QDA_fet;

QDA_S_ch1 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_acc_ch1.mat');
QDA_S_ch1 = QDA_S_ch1.QDA_acc;
QDA_fet_ch1 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_fet_ch1.mat');
QDA_fet_ch1 = QDA_fet_ch1.QDA_fet;

QDA_S_ch2 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_acc_ch2.mat');
QDA_S_ch2 = QDA_S_ch2.QDA_acc;
QDA_fet_ch2 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_fet_ch2.mat');
QDA_fet_ch2 = QDA_fet_ch2.QDA_fet;

QDA_S_ch3 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_acc_ch3.mat');
QDA_S_ch3 = QDA_S_ch3.QDA_acc;
QDA_fet_ch3 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_fet_ch3.mat');
QDA_fet_ch3 = QDA_fet_ch3.QDA_fet;

QDA_S_ch4 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_acc_ch4.mat');
QDA_S_ch4 = QDA_S_ch4.QDA_acc;
QDA_fet_ch4 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_fet_ch4.mat');
QDA_fet_ch4 = QDA_fet_ch4.QDA_fet;

QDA_S_ch5 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_acc_ch5.mat');
QDA_S_ch5 = QDA_S_ch5.QDA_acc;
QDA_fet_ch5 = load('C:\Users\Nathan\Desktop\Thesis\MY data\QDA_tests\channel_sep_fixed\QDA_fet_ch5.mat');
QDA_fet_ch5 = QDA_fet_ch5.QDA_fet;

QDA_CC_fet = str2num(QDA_CC_fet);

QDA_fet_ch1 = str2num(QDA_fet_ch1);
QDA_fet_ch2 = str2num(QDA_fet_ch2);
QDA_fet_ch3 = str2num(QDA_fet_ch3);
QDA_fet_ch4 = str2num(QDA_fet_ch4);
QDA_fet_ch5 = str2num(QDA_fet_ch5);

%
rng(8000,'twister');

holdoutCVP_CC = cvpartition(grp_CC,'holdout',56);

obs_train_CC = obs_CC(holdoutCVP_CC.training,:);
grp_train_CC = grp_CC(holdoutCVP_CC.training);
obs_test_CC = obs_CC(holdoutCVP_CC.test,:); 
grp_test_CC = grp_CC(holdoutCVP_CC.test,:);

holdoutCVP_ch1 = cvpartition(grp_ch1,'holdout',56);

obs_train_ch1 = obs_ch1(holdoutCVP_ch1.training,:);
grp_train_ch1 = grp_ch1(holdoutCVP_ch1.training);
obs_test_ch1 = obs_ch1(holdoutCVP_ch1.test,:); 
grp_test_ch1 = grp_ch1(holdoutCVP_ch1.test,:);

holdoutCVP_ch2 = cvpartition(grp_ch2,'holdout',56);

obs_train_ch2 = obs_ch2(holdoutCVP_ch2.training,:);
grp_train_ch2 = grp_ch2(holdoutCVP_ch2.training);
obs_test_ch2 = obs_ch2(holdoutCVP_ch2.test,:); 
grp_test_ch2 = grp_ch2(holdoutCVP_ch2.test,:);

holdoutCVP_ch3 = cvpartition(grp_ch3,'holdout',56);

obs_train_ch3 = obs_ch3(holdoutCVP_ch3.training,:);
grp_train_ch3 = grp_ch3(holdoutCVP_ch3.training);
obs_test_ch3 = obs_ch3(holdoutCVP_ch3.test,:); 
grp_test_ch3 = grp_ch3(holdoutCVP_ch3.test,:);

holdoutCVP_ch4 = cvpartition(grp_ch4,'holdout',56);

obs_train_ch4 = obs_ch4(holdoutCVP_ch4.training,:);
grp_train_ch4 = grp_ch4(holdoutCVP_ch4.training);
obs_test_ch4 = obs_ch4(holdoutCVP_ch4.test,:); 
grp_test_ch4 = grp_ch4(holdoutCVP_ch4.test,:);

holdoutCVP_ch5 = cvpartition(grp_ch5,'holdout',56);

obs_train_ch5 = obs_ch5(holdoutCVP_ch5.training,:);
grp_train_ch5 = grp_ch5(holdoutCVP_ch5.training);
obs_test_ch5 = obs_ch5(holdoutCVP_ch5.test,:); 
grp_test_ch5 = grp_ch5(holdoutCVP_ch5.test,:);

tenfoldCVP = cvpartition(grp_train_CC,'kfold',10);

% classifier algorithm

classf = @(xtrain,ytrain,xtest,ytest) ...
         sum((ytest-predict(fitcQDA(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

% features = 1:size(X_ind,2);
% fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
% 
% features_selected = features(fsLocal);

    md1_CC = fitcdiscr(obs_train_CC(:,QDA_CC_fet),grp_train_CC,'DiscrimType','pseudoQuadratic');
    [label,NegLoss, PBScore] = predict(md1_CC,obs_test_CC(:,QDA_CC_fet));

    accuracy_CC = (sum((grp_test_CC-label) == 0)/length(grp_test_CC))*100;


    md1_CH1 = fitcdiscr(obs_train_ch1(:,QDA_fet_ch1),grp_train_ch1,'DiscrimType','pseudoQuadratic');
    [label_ch1,NegLoss, PBScore] = predict(md1_CH1,obs_test_ch1(:,QDA_fet_ch1));
    accuracy_ch1 = (sum((grp_test_ch1-label_ch1) == 0)/length(grp_test_ch1))*100;

    md1_CH2 = fitcdiscr(obs_train_ch2(:,QDA_fet_ch2),grp_train_ch2,'DiscrimType','pseudoQuadratic');
    [label_ch2,NegLoss, PBScore] = predict(md1_CH2,obs_test_ch2(:,QDA_fet_ch2));
    accuracy_ch2 = (sum((grp_test_ch2-label_ch2) == 0)/length(grp_test_ch2))*100;

    md1_CH3 = fitcdiscr(obs_train_ch3(:,QDA_fet_ch3),grp_train_ch3,'DiscrimType','pseudoQuadratic');
    [label_ch3,NegLoss, PBScore] = predict(md1_CH3,obs_test_ch3(:,QDA_fet_ch3));
    accuracy_ch3 = (sum((grp_test_ch3-label_ch3) == 0)/length(grp_test_ch3))*100;

    md1_CH4 = fitcdiscr(obs_train_ch4(:,QDA_fet_ch4),grp_train_ch4,'DiscrimType','pseudoQuadratic');
    [label_ch4,NegLoss, PBScore] = predict(md1_CH4,obs_test_ch4(:,QDA_fet_ch4));
    accuracy_ch4 = (sum((grp_test_ch4-label_ch4) == 0)/length(grp_test_ch4))*100;

    md1_CH5 = fitcdiscr(obs_train_ch5(:,QDA_fet_ch5),grp_train_ch5,'DiscrimType','pseudoQuadratic');
    [label_ch5,NegLoss, PBScore] = predict(md1_CH5,obs_test_ch5(:,QDA_fet_ch5));
    accuracy_ch5 = (sum((grp_test_ch5-label_ch5) == 0)/length(grp_test_ch5))*100;

    label_sep_prev = [label_ch1 label_ch2 label_ch3 label_ch4 label_ch5];
    label_sep = zeros(length(label),1);

    for i = 1:length(label)
        tracker = 0;
        for j = 1:10
            if (sum(label_sep_prev(i,:)==j) > tracker)
                label_sep(i) = j;
                tracker = sum(label_sep_prev(i,:)==j);
            end
        end    
    end

    accuracy_sep = (sum((grp_test_CC-label_sep) == 0)/length(grp_test_CC))*100;
    
save('C:\Users\Nathan\Desktop\Thesis\My data\QDA_tests\compare features\acc_CC_fs', 'accuracy_CC');
save('C:\Users\Nathan\Desktop\Thesis\My data\QDA_tests\compare features\acc_ch1_fs', 'accuracy_ch1');
save('C:\Users\Nathan\Desktop\Thesis\My data\QDA_tests\compare features\acc_ch2_fs', 'accuracy_ch2');
save('C:\Users\Nathan\Desktop\Thesis\My data\QDA_tests\compare features\acc_ch3_fs', 'accuracy_ch3');
save('C:\Users\Nathan\Desktop\Thesis\My data\QDA_tests\compare features\acc_ch4_fs', 'accuracy_ch4');
save('C:\Users\Nathan\Desktop\Thesis\My data\QDA_tests\compare features\acc_ch5_fs', 'accuracy_ch5');
save('C:\Users\Nathan\Desktop\Thesis\My data\QDA_tests\compare features\acc_sep_fs', 'accuracy_sep');