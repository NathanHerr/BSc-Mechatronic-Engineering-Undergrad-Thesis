%% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

% channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch1_features.mat');
X_1_CC_new = X_1_CC_new_temp.feature_matrix_ch1;
X_1_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch2_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch2;
X_1_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch3_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch3;
X_1_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch4_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch4;
X_1_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch5_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch5;

X_2_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch1_features.mat');
X_2_CC_new = X_2_CC_new_temp.feature_matrix_ch1;
X_2_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch2_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch2;
X_2_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch3_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch3;
X_2_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch4_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch4;
X_2_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch5_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch5;

X_3_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch1_features.mat');
X_3_CC_new = X_3_CC_new_temp.feature_matrix_ch1;
X_3_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch2_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch2;
X_3_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch3_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch3;
X_3_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch4_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch4;
X_3_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch5_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch5;

X_4_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch1_features.mat');
X_4_CC_new = X_4_CC_new_temp.feature_matrix_ch1;
X_4_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch2_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch2;
X_4_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch3_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch3;
X_4_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch4_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch4;
X_4_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch5_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch5;

X_5_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch1_features.mat');
X_5_CC_new = X_5_CC_new_temp.feature_matrix_ch1;
X_5_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch2_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch2;
X_5_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch3_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch3;
X_5_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch4_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch4;
X_5_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch5_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch5;

X_6_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch1_features.mat');
X_6_CC_new = X_6_CC_new_temp.feature_matrix_ch1;
X_6_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch2_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch2;
X_6_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch3_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch3;
X_6_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch4_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch4;
X_6_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch5_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch5;

X_7_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch1_features.mat');
X_7_CC_new = X_7_CC_new_temp.feature_matrix_ch1;
X_7_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch2_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch2;
X_7_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch3_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch3;
X_7_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch4_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch4;
X_7_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch5_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch5;

X_8_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch1_features.mat');
X_8_CC_new = X_8_CC_new_temp.feature_matrix_ch1;
X_8_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch2_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch2;
X_8_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch3_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch3;
X_8_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch4_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch4;
X_8_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch5_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch5;

X_9_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch1_features.mat');
X_9_CC_new = X_9_CC_new_temp.feature_matrix_ch1;
X_9_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch2_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch2;
X_9_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch3_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch3;
X_9_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch4_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch4;
X_9_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch5_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch5;

X_10_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch1_features.mat');
X_10_CC_new = X_10_CC_new_temp.feature_matrix_ch1;
X_10_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch2_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch2;
X_10_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch3_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch3;
X_10_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch4_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch4;
X_10_CC_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch5_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch5;

X_CC_new = [X_1_CC_new(:,:); X_2_CC_new(:,:); X_3_CC_new(:,:); X_4_CC_new(:,:); X_5_CC_new(:,:); X_6_CC_new(:,:); X_7_CC_new(:,:); X_8_CC_new(:,:); X_9_CC_new(:,:); X_10_CC_new(:,:)];

X_CC_new = (X_CC_new - mean(X_CC_new)) ./ std(X_CC_new);

X_index_CC_new(1) = 1;
X_ind_CC_new = [];
X_ind_CC_new(:,1) = X_CC_new(:,1);

for i = 2:size(X_CC_new,2)    
    temp_mat = [X_ind_CC_new X_CC_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_CC_new = temp_mat;
        X_index_CC_new(:,size(temp_mat,2)) = i;
    end    
end

class_length_new = [size(X_1_CC_new,1) size(X_2_CC_new,1) size(X_3_CC_new,1) size(X_4_CC_new,1) size(X_5_CC_new,1) size(X_6_CC_new,1) size(X_7_CC_new,1) size(X_8_CC_new,1) size(X_9_CC_new,1) size(X_10_CC_new,1)];

t_CC_new = zeros(sum(class_length_new),1);

for i = 1:length(class_length_new)
    if i == 1
         t_CC_new(1:class_length_new(i)) = i;
    else
         t_CC_new(sum(class_length_new(1:i-1))+1:sum(class_length_new(1:i))) = i;
    end 
end

grp_CC_new = (t_CC_new);
obs_CC_new = (X_ind_CC_new);

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
X_8_CC_new = X_8_CC_temp.feature_matrix_ch1;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_temp.feature_matrix_ch2;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_temp.feature_matrix_ch3;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_temp.feature_matrix_ch4;
X_8_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_temp.feature_matrix_ch5;

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

X_CC_old = [X_1_CC(:,:);X_2_CC(:,:);X_3_CC(:,:);X_4_CC(:,:);X_5_CC(:,:);X_6_CC(:,:);X_7_CC(:,:);X_8_CC_new(:,:);X_9_CC(:,:);X_10_CC(:,:)];

X_CC_old = (X_CC_old - mean(X_CC_old)) ./ std(X_CC_old);

X_index_CC_old(1) = 1;
X_ind_CC_old = [];
X_ind_CC_old(:,1) = X_CC_old(:,1);

for i = 2:size(X_CC_old,2)    
    temp_mat = [X_ind_CC_old X_CC_old(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_CC_old = temp_mat;
        X_index_CC_old(:,size(temp_mat,2)) = i;
    end    
end

class_length_old = [23 23 27 23 21 22 17 17 19 20];

t_CC_old = zeros(sum(class_length_old),1);

for i = 1:length(class_length_old)
    if i == 1
         t_CC_old(1:class_length_old(i)) = i;
    else
         t_CC_old(sum(class_length_old(1:i-1))+1:sum(class_length_old(1:i))) = i;
    end 
end

grp_CC_old = (t_CC_old);
obs_CC_old = (X_ind_CC_old);

LDA_CC = load('C:\Users\Nathan\Desktop\Thesis\MY data\LDA_tests\channel_comb_fixed\LDA_acc.mat');
LDA_CC = LDA_CC.LDA_acc;
LDA_CC_fet = load('C:\Users\Nathan\Desktop\Thesis\MY data\LDA_tests\channel_comb_fixed\LDA_fet.mat');
LDA_CC_fet = LDA_CC_fet.LDA_fet;

LDA_CC_fet = str2num(LDA_CC_fet);

rng(8000,'twister');

holdoutCVP_CC_old = cvpartition(grp_CC_old,'holdout',56);
holdoutCVP_CC_new = cvpartition(grp_CC_new,'holdout',56);

obs_train_old = obs_CC_old(holdoutCVP_CC_old.training,:);
grp_train_old = grp_CC_old(holdoutCVP_CC_old.training,:);
obs_test_old = obs_CC_old(holdoutCVP_CC_old.test,:);
grp_test_old = grp_CC_old(holdoutCVP_CC_old.test,:);

obs_train_new = obs_CC_new(holdoutCVP_CC_new.training,:);
grp_train_new = grp_CC_new(holdoutCVP_CC_new.training,:);
obs_test_new = obs_CC_new(holdoutCVP_CC_new.test,:);
grp_test_new = grp_CC_new(holdoutCVP_CC_new.test,:);

obs_train = [obs_CC_old(holdoutCVP_CC_old.training,:) ; obs_CC_new(holdoutCVP_CC_new.training,:)];
grp_train = [grp_CC_old(holdoutCVP_CC_old.training) ; grp_CC_new(holdoutCVP_CC_new.training)];
obs_test = [obs_CC_old(holdoutCVP_CC_old.test,:) ; obs_CC_new(holdoutCVP_CC_new.test,:)]; 
grp_test = [grp_CC_old(holdoutCVP_CC_old.test,:) ; grp_CC_new(holdoutCVP_CC_new.test,:)];

md1_CC = fitcdiscr(obs_train(:,LDA_CC_fet),grp_train,'DiscrimType','linear');
[label,NegLoss, PBScore] = predict(md1_CC,obs_test(:,LDA_CC_fet));

accuracy_CC = (sum((grp_test-label) == 0)/length(grp_test))*100;

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\LDA tests\test with both\accuracy_CC'), 'accuracy_CC');

