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

X_CC_old = [X_1_CC(:,:);X_2_CC(:,:);X_3_CC(:,:);X_4_CC(:,:);X_5_CC(:,:);X_6_CC(:,:);X_7_CC(:,:);X_8_CC(:,:);X_9_CC(:,:);X_10_CC(:,:)];

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

KNN_CC_fet = [7 8 13 14]; %7 8 13 16
KNN_CC_fet_fs = [7 8 13 16]; %7 8 13 16

rng(8000,'twister');

% holdoutCVP_CC_old = cvpartition(grp_CC_old,'holdout',56);
holdoutCVP_CC_new = cvpartition(grp_CC_new,'holdout',56);

% obs_train_old = obs_CC_old(holdoutCVP_CC_old.training,:);
% grp_train_old = grp_CC_old(holdoutCVP_CC_old.training,:);
% obs_test_old = obs_CC_old(holdoutCVP_CC_old.test,:);
% grp_test_old = grp_CC_old(holdoutCVP_CC_old.test,:);

obs_train_new = obs_CC_new(holdoutCVP_CC_new.training,:);
grp_train_new = grp_CC_new(holdoutCVP_CC_new.training,:);
obs_test_new = obs_CC_new(holdoutCVP_CC_new.test,:);
grp_test_new = grp_CC_new(holdoutCVP_CC_new.test,:);

% obs_train = [obs_CC_old(holdoutCVP_CC_old.training,:) ; obs_CC_new(holdoutCVP_CC_new.training,:)];
% grp_train = [grp_CC_old(holdoutCVP_CC_old.training) ; grp_CC_new(holdoutCVP_CC_new.training)];
% obs_test = [obs_CC_old(holdoutCVP_CC_old.test,:) ; obs_CC_new(holdoutCVP_CC_new.test,:)]; 
% grp_test = [grp_CC_old(holdoutCVP_CC_old.test,:) ; grp_CC_new(holdoutCVP_CC_new.test,:)];

md1_CC = fitcknn(obs_train_new(:,KNN_CC_fet),grp_train_new,'NumNeighbors',5);
[label,NegLoss, PBScore] = predict(md1_CC,obs_test_new(:,KNN_CC_fet));

md1_CC_fs = fitcknn(obs_train_new(:,KNN_CC_fet_fs),grp_train_new,'NumNeighbors',5);
[label_fs,NegLoss, PBScore] = predict(md1_CC_fs,obs_test_new(:,KNN_CC_fet_fs));


accuracy_CC = (sum((grp_test_new-label) == 0)/length(grp_test_new))*100;
accuracy_CC_fs = (sum((grp_test_new-label_fs) == 0)/length(grp_test_new))*100;


xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\KNN_label_CC_cf.xlsx'), label)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\KNN_label_CC_fs.xlsx'), label_fs)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\actual_label.xlsx'), grp_test_new)


% save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_CC_cf'), 'accuracy_CC');

%% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch1_features.mat');
X_2_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch1_features.mat');
X_3_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch1_features.mat');
X_4_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch1_features.mat');
X_5_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch1_features.mat');
X_6_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch1_features.mat');
X_7_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch1_features.mat');
X_8_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch1_features.mat');
X_9_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch1_features.mat');
X_10_ch1_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch1_features.mat');

X_1_ch1_new = X_1_ch1_new.feature_matrix_ch1;
X_2_ch1_new = X_2_ch1_new.feature_matrix_ch1;
X_3_ch1_new = X_3_ch1_new.feature_matrix_ch1;
X_4_ch1_new = X_4_ch1_new.feature_matrix_ch1;
X_5_ch1_new = X_5_ch1_new.feature_matrix_ch1;
X_6_ch1_new = X_6_ch1_new.feature_matrix_ch1;
X_7_ch1_new = X_7_ch1_new.feature_matrix_ch1;
X_8_ch1_new = X_8_ch1_new.feature_matrix_ch1;
X_9_ch1_new = X_9_ch1_new.feature_matrix_ch1;
X_10_ch1_new = X_10_ch1_new.feature_matrix_ch1;

X_ch1_new = [X_1_ch1_new(:,:);X_2_ch1_new(:,:);X_3_ch1_new(:,:);X_4_ch1_new(:,:);X_5_ch1_new(:,:);X_6_ch1_new(:,:);X_7_ch1_new(:,:);X_8_ch1_new(:,:);X_9_ch1_new(:,:);X_10_ch1_new(:,:)];

X_ch1_new = (X_ch1_new - mean(X_ch1_new)) ./ std(X_ch1_new);

X_index_ch1_new(1) = 1;
X_ind_ch1_new = [];
X_ind_ch1_new(:,1) = X_ch1_new(:,1);

for i = 2:size(X_ch1_new,2)    
    temp_mat = [X_ind_ch1_new X_ch1_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch1_new = temp_mat;
        X_index_ch1_new(:,size(temp_mat,2)) = i;
    end    
end

class_length_new = [size(X_1_ch1_new,1) size(X_2_ch1_new,1) size(X_3_ch1_new,1) size(X_4_ch1_new,1) size(X_5_ch1_new,1) size(X_6_ch1_new,1) size(X_7_ch1_new,1) size(X_8_ch1_new,1) size(X_9_ch1_new,1) size(X_10_ch1_new,1)];

t_ch1_new = zeros(sum(class_length_new),1);

for i = 1:length(class_length_new)
    if i == 1
         t_ch1_new(1:class_length_new(i)) = i;
    else
         t_ch1_new(sum(class_length_new(1:i-1))+1:sum(class_length_new(1:i))) = i;
    end 
end

grp_ch1_new = (t_ch1_new);
obs_ch1_new = (X_ind_ch1_new);

X_1_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch2_features.mat');
X_2_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch2_features.mat');
X_3_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch2_features.mat');
X_4_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch2_features.mat');
X_5_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch2_features.mat');
X_6_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch2_features.mat');
X_7_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch2_features.mat');
X_8_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch2_features.mat');
X_9_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch2_features.mat');
X_10_ch2_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch2_features.mat');

X_1_ch2_new = X_1_ch2_new.feature_matrix_ch2;
X_2_ch2_new = X_2_ch2_new.feature_matrix_ch2;
X_3_ch2_new = X_3_ch2_new.feature_matrix_ch2;
X_4_ch2_new = X_4_ch2_new.feature_matrix_ch2;
X_5_ch2_new = X_5_ch2_new.feature_matrix_ch2;
X_6_ch2_new = X_6_ch2_new.feature_matrix_ch2;
X_7_ch2_new = X_7_ch2_new.feature_matrix_ch2;
X_8_ch2_new = X_8_ch2_new.feature_matrix_ch2;
X_9_ch2_new = X_9_ch2_new.feature_matrix_ch2;
X_10_ch2_new = X_10_ch2_new.feature_matrix_ch2;

X_ch2_new = [X_1_ch2_new(:,:);X_2_ch2_new(:,:);X_3_ch2_new(:,:);X_4_ch2_new(:,:);X_5_ch2_new(:,:);X_6_ch2_new(:,:);X_7_ch2_new(:,:);X_8_ch2_new(:,:);X_9_ch2_new(:,:);X_10_ch2_new(:,:)];

X_ch2_new = (X_ch2_new - mean(X_ch2_new)) ./ std(X_ch2_new);

X_index_ch2_new(1) = 1;
X_ind_ch2_new = [];
X_ind_ch2_new(:,1) = X_ch2_new(:,1);

for i = 2:size(X_ch2_new,2)    
    temp_mat = [X_ind_ch2_new X_ch2_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch2_new = temp_mat;
        X_index_ch2_new(:,size(temp_mat,2)) = i;
    end    
end

class_length_new = [size(X_1_ch2_new,1) size(X_2_ch2_new,1) size(X_3_ch2_new,1) size(X_4_ch2_new,1) size(X_5_ch2_new,1) size(X_6_ch2_new,1) size(X_7_ch2_new,1) size(X_8_ch2_new,1) size(X_9_ch2_new,1) size(X_10_ch2_new,1)];

t_ch2_new = zeros(sum(class_length_new),1);

for i = 1:length(class_length_new)
    if i == 1
         t_ch2_new(1:class_length_new(i)) = i;
    else
         t_ch2_new(sum(class_length_new(1:i-1))+1:sum(class_length_new(1:i))) = i;
    end 
end

grp_ch2_new = (t_ch2_new);
obs_ch2_new = (X_ind_ch2_new);

X_1_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch3_features.mat');
X_2_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch3_features.mat');
X_3_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch3_features.mat');
X_4_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch3_features.mat');
X_5_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch3_features.mat');
X_6_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch3_features.mat');
X_7_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch3_features.mat');
X_8_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch3_features.mat');
X_9_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch3_features.mat');
X_10_ch3_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch3_features.mat');

X_1_ch3_new = X_1_ch3_new.feature_matrix_ch3;
X_2_ch3_new = X_2_ch3_new.feature_matrix_ch3;
X_3_ch3_new = X_3_ch3_new.feature_matrix_ch3;
X_4_ch3_new = X_4_ch3_new.feature_matrix_ch3;
X_5_ch3_new = X_5_ch3_new.feature_matrix_ch3;
X_6_ch3_new = X_6_ch3_new.feature_matrix_ch3;
X_7_ch3_new = X_7_ch3_new.feature_matrix_ch3;
X_8_ch3_new = X_8_ch3_new.feature_matrix_ch3;
X_9_ch3_new = X_9_ch3_new.feature_matrix_ch3;
X_10_ch3_new = X_10_ch3_new.feature_matrix_ch3;

X_ch3_new = [X_1_ch3_new(:,:);X_2_ch3_new(:,:);X_3_ch3_new(:,:);X_4_ch3_new(:,:);X_5_ch3_new(:,:);X_6_ch3_new(:,:);X_7_ch3_new(:,:);X_8_ch3_new(:,:);X_9_ch3_new(:,:);X_10_ch3_new(:,:)];

X_ch3_new = (X_ch3_new - mean(X_ch3_new)) ./ std(X_ch3_new);

X_index_ch3_new(1) = 1;
X_ind_ch3_new = [];
X_ind_ch3_new(:,1) = X_ch3_new(:,1);

for i = 2:size(X_ch3_new,2)    
    temp_mat = [X_ind_ch3_new X_ch3_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch3_new = temp_mat;
        X_index_ch3_new(:,size(temp_mat,2)) = i;
    end    
end

class_length_new = [size(X_1_ch3_new,1) size(X_2_ch3_new,1) size(X_3_ch3_new,1) size(X_4_ch3_new,1) size(X_5_ch3_new,1) size(X_6_ch3_new,1) size(X_7_ch3_new,1) size(X_8_ch3_new,1) size(X_9_ch3_new,1) size(X_10_ch3_new,1)];

t_ch3_new = zeros(sum(class_length_new),1);

for i = 1:length(class_length_new)
    if i == 1
         t_ch3_new(1:class_length_new(i)) = i;
    else
         t_ch3_new(sum(class_length_new(1:i-1))+1:sum(class_length_new(1:i))) = i;
    end 
end

grp_ch3_new = (t_ch3_new);
obs_ch3_new = (X_ind_ch3_new);

X_1_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch4_features.mat');
X_2_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch4_features.mat');
X_3_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch4_features.mat');
X_4_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch4_features.mat');
X_5_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch4_features.mat');
X_6_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch4_features.mat');
X_7_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch4_features.mat');
X_8_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch4_features.mat');
X_9_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch4_features.mat');
X_10_ch4_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch4_features.mat');

X_1_ch4_new = X_1_ch4_new.feature_matrix_ch4;
X_2_ch4_new = X_2_ch4_new.feature_matrix_ch4;
X_3_ch4_new = X_3_ch4_new.feature_matrix_ch4;
X_4_ch4_new = X_4_ch4_new.feature_matrix_ch4;
X_5_ch4_new = X_5_ch4_new.feature_matrix_ch4;
X_6_ch4_new = X_6_ch4_new.feature_matrix_ch4;
X_7_ch4_new = X_7_ch4_new.feature_matrix_ch4;
X_8_ch4_new = X_8_ch4_new.feature_matrix_ch4;
X_9_ch4_new = X_9_ch4_new.feature_matrix_ch4;
X_10_ch4_new = X_10_ch4_new.feature_matrix_ch4;

X_ch4_new = [X_1_ch4_new(:,:);X_2_ch4_new(:,:);X_3_ch4_new(:,:);X_4_ch4_new(:,:);X_5_ch4_new(:,:);X_6_ch4_new(:,:);X_7_ch4_new(:,:);X_8_ch4_new(:,:);X_9_ch4_new(:,:);X_10_ch4_new(:,:)];

X_ch4_new = (X_ch4_new - mean(X_ch4_new)) ./ std(X_ch4_new);

X_index_ch4_new(1) = 1;
X_ind_ch4_new = [];
X_ind_ch4_new(:,1) = X_ch4_new(:,1);

for i = 2:size(X_ch4_new,2)    
    temp_mat = [X_ind_ch4_new X_ch4_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch4_new = temp_mat;
        X_index_ch4_new(:,size(temp_mat,2)) = i;
    end    
end

class_length_new = [size(X_1_ch4_new,1) size(X_2_ch4_new,1) size(X_3_ch4_new,1) size(X_4_ch4_new,1) size(X_5_ch4_new,1) size(X_6_ch4_new,1) size(X_7_ch4_new,1) size(X_8_ch4_new,1) size(X_9_ch4_new,1) size(X_10_ch4_new,1)];

t_ch4_new = zeros(sum(class_length_new),1);

for i = 1:length(class_length_new)
    if i == 1
         t_ch4_new(1:class_length_new(i)) = i;
    else
         t_ch4_new(sum(class_length_new(1:i-1))+1:sum(class_length_new(1:i))) = i;
    end 
end

grp_ch4_new = (t_ch4_new);
obs_ch4_new = (X_ind_ch4_new);

X_1_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch5_features.mat');
X_2_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch5_features.mat');
X_3_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch5_features.mat');
X_4_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch5_features.mat');
X_5_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch5_features.mat');
X_6_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch5_features.mat');
X_7_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch5_features.mat');
X_8_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch5_features.mat');
X_9_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch5_features.mat');
X_10_ch5_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch5_features.mat');

X_1_ch5_new = X_1_ch5_new.feature_matrix_ch5;
X_2_ch5_new = X_2_ch5_new.feature_matrix_ch5;
X_3_ch5_new = X_3_ch5_new.feature_matrix_ch5;
X_4_ch5_new = X_4_ch5_new.feature_matrix_ch5;
X_5_ch5_new = X_5_ch5_new.feature_matrix_ch5;
X_6_ch5_new = X_6_ch5_new.feature_matrix_ch5;
X_7_ch5_new = X_7_ch5_new.feature_matrix_ch5;
X_8_ch5_new = X_8_ch5_new.feature_matrix_ch5;
X_9_ch5_new = X_9_ch5_new.feature_matrix_ch5;
X_10_ch5_new = X_10_ch5_new.feature_matrix_ch5;

X_ch5_new = [X_1_ch5_new(:,:);X_2_ch5_new(:,:);X_3_ch5_new(:,:);X_4_ch5_new(:,:);X_5_ch5_new(:,:);X_6_ch5_new(:,:);X_7_ch5_new(:,:);X_8_ch5_new(:,:);X_9_ch5_new(:,:);X_10_ch5_new(:,:)];

X_ch5_new = (X_ch5_new - mean(X_ch5_new)) ./ std(X_ch5_new);

X_index_ch5_new(1) = 1;
X_ind_ch5_new = [];
X_ind_ch5_new(:,1) = X_ch5_new(:,1);

for i = 2:size(X_ch5_new,2)    
    temp_mat = [X_ind_ch5_new X_ch5_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch5_new = temp_mat;
        X_index_ch5_new(:,size(temp_mat,2)) = i;
    end    
end

class_length_new = [size(X_1_ch5_new,1) size(X_2_ch5_new,1) size(X_3_ch5_new,1) size(X_4_ch5_new,1) size(X_5_ch5_new,1) size(X_6_ch5_new,1) size(X_7_ch5_new,1) size(X_8_ch5_new,1) size(X_9_ch5_new,1) size(X_10_ch5_new,1)];

t_ch5_new = zeros(sum(class_length_new),1);

for i = 1:length(class_length_new)
    if i == 1
         t_ch5_new(1:class_length_new(i)) = i;
    else
         t_ch5_new(sum(class_length_new(1:i-1))+1:sum(class_length_new(1:i))) = i;
    end 
end

grp_ch5_new = (t_ch5_new);
obs_ch5_new = (X_ind_ch5_new);

%
X_1_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_2_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_3_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_4_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_5_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_6_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_7_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_8_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_9_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch1_features.mat');
X_10_ch1_old = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch1_features.mat');

X_1_ch1_old = X_1_ch1_old.feature_matrix_ch1;
X_2_ch1_old = X_2_ch1_old.feature_matrix_ch1;
X_3_ch1_old = X_3_ch1_old.feature_matrix_ch1;
X_4_ch1_old = X_4_ch1_old.feature_matrix_ch1;
X_5_ch1_old = X_5_ch1_old.feature_matrix_ch1;
X_6_ch1_old = X_6_ch1_old.feature_matrix_ch1;
X_7_ch1_old = X_7_ch1_old.feature_matrix_ch1;
X_8_ch1_old = X_8_ch1_old.feature_matrix_ch1;
X_9_ch1_old = X_9_ch1_old.feature_matrix_ch1;
X_10_ch1_old = X_10_ch1_old.feature_matrix_ch1;

X_ch1_old = [X_1_ch1_old(:,:);X_2_ch1_old(:,:);X_3_ch1_old(:,:);X_4_ch1_old(:,:);X_5_ch1_old(:,:);X_6_ch1_old(:,:);X_7_ch1_old(:,:);X_8_ch1_old(:,:);X_9_ch1_old(:,:);X_10_ch1_old(:,:)];

X_ch1_old = (X_ch1_old - mean(X_ch1_old)) ./ std(X_ch1_old);

X_index_ch1_old(1) = 1;
X_ind_ch1_old = [];
X_ind_ch1_old(:,1) = X_ch1_old(:,1);

for i = 2:size(X_ch1_old,2)    
    temp_mat = [X_ind_ch1_old X_ch1_old(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch1_old = temp_mat;
        X_index_ch1_old(:,size(temp_mat,2)) = i;
    end    
end

class_length_old = [23 23 27 23 21 22 17 17 19 20];

t_ch1_old = zeros(sum(class_length_old),1);

for i = 1:length(class_length_old)
    if i == 1
         t_ch1_old(1:class_length_old(i)) = i;
    else
         t_ch1_old(sum(class_length_old(1:i-1))+1:sum(class_length_old(1:i))) = i;
    end 
end

grp_ch1_old = (t_ch1_old);
obs_ch1_old = (X_ind_ch1_old);

X_1_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_2_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_3_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_4_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_5_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_6_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_7_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_8_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_9_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch2_features.mat');
X_10_ch2_old = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch2_features.mat');

X_1_ch2_old = X_1_ch2_old.feature_matrix_ch2;
X_2_ch2_old = X_2_ch2_old.feature_matrix_ch2;
X_3_ch2_old = X_3_ch2_old.feature_matrix_ch2;
X_4_ch2_old = X_4_ch2_old.feature_matrix_ch2;
X_5_ch2_old = X_5_ch2_old.feature_matrix_ch2;
X_6_ch2_old = X_6_ch2_old.feature_matrix_ch2;
X_7_ch2_old = X_7_ch2_old.feature_matrix_ch2;
X_8_ch2_old = X_8_ch2_old.feature_matrix_ch2;
X_9_ch2_old = X_9_ch2_old.feature_matrix_ch2;
X_10_ch2_old = X_10_ch2_old.feature_matrix_ch2;

X_ch2_old = [X_1_ch2_old(:,:);X_2_ch2_old(:,:);X_3_ch2_old(:,:);X_4_ch2_old(:,:);X_5_ch2_old(:,:);X_6_ch2_old(:,:);X_7_ch2_old(:,:);X_8_ch2_old(:,:);X_9_ch2_old(:,:);X_10_ch2_old(:,:)];

X_ch2_old = (X_ch2_old - mean(X_ch2_old)) ./ std(X_ch2_old);

X_index_ch2_old(1) = 1;
X_ind_ch2_old = [];
X_ind_ch2_old(:,1) = X_ch2_old(:,1);

for i = 2:size(X_ch2_old,2)    
    temp_mat = [X_ind_ch2_old X_ch2_old(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch2_old = temp_mat;
        X_index_ch2_old(:,size(temp_mat,2)) = i;
    end    
end

class_length_old = [23 23 27 23 21 22 17 17 19 20];

t_ch2_old = zeros(sum(class_length_old),1);

for i = 1:length(class_length_old)
    if i == 1
         t_ch2_old(1:class_length_old(i)) = i;
    else
         t_ch2_old(sum(class_length_old(1:i-1))+1:sum(class_length_old(1:i))) = i;
    end 
end

grp_ch2_old = (t_ch2_old);
obs_ch2_old = (X_ind_ch2_old);

X_1_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_2_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_3_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_4_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_5_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_6_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_7_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_8_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_9_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch3_features.mat');
X_10_ch3_old = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch3_features.mat');

X_1_ch3_old = X_1_ch3_old.feature_matrix_ch3;
X_2_ch3_old = X_2_ch3_old.feature_matrix_ch3;
X_3_ch3_old = X_3_ch3_old.feature_matrix_ch3;
X_4_ch3_old = X_4_ch3_old.feature_matrix_ch3;
X_5_ch3_old = X_5_ch3_old.feature_matrix_ch3;
X_6_ch3_old = X_6_ch3_old.feature_matrix_ch3;
X_7_ch3_old = X_7_ch3_old.feature_matrix_ch3;
X_8_ch3_old = X_8_ch3_old.feature_matrix_ch3;
X_9_ch3_old = X_9_ch3_old.feature_matrix_ch3;
X_10_ch3_old = X_10_ch3_old.feature_matrix_ch3;

X_ch3_old = [X_1_ch3_old(:,:);X_2_ch3_old(:,:);X_3_ch3_old(:,:);X_4_ch3_old(:,:);X_5_ch3_old(:,:);X_6_ch3_old(:,:);X_7_ch3_old(:,:);X_8_ch3_old(:,:);X_9_ch3_old(:,:);X_10_ch3_old(:,:)];

X_ch3_old = (X_ch3_old - mean(X_ch3_old)) ./ std(X_ch3_old);

X_index_ch3_old(1) = 1;
X_ind_ch3_old = [];
X_ind_ch3_old(:,1) = X_ch3_old(:,1);

for i = 2:size(X_ch3_old,2)    
    temp_mat = [X_ind_ch3_old X_ch3_old(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch3_old = temp_mat;
        X_index_ch3_old(:,size(temp_mat,2)) = i;
    end    
end

class_length_old = [23 23 27 23 21 22 17 17 19 20];

t_ch3_old = zeros(sum(class_length_old),1);

for i = 1:length(class_length_old)
    if i == 1
         t_ch3_old(1:class_length_old(i)) = i;
    else
         t_ch3_old(sum(class_length_old(1:i-1))+1:sum(class_length_old(1:i))) = i;
    end 
end

grp_ch3_old = (t_ch3_old);
obs_ch3_old = (X_ind_ch3_old);

X_1_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_2_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_3_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_4_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_5_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_6_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_7_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_8_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_9_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch4_features.mat');
X_10_ch4_old = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch4_features.mat');

X_1_ch4_old = X_1_ch4_old.feature_matrix_ch4;
X_2_ch4_old = X_2_ch4_old.feature_matrix_ch4;
X_3_ch4_old = X_3_ch4_old.feature_matrix_ch4;
X_4_ch4_old = X_4_ch4_old.feature_matrix_ch4;
X_5_ch4_old = X_5_ch4_old.feature_matrix_ch4;
X_6_ch4_old = X_6_ch4_old.feature_matrix_ch4;
X_7_ch4_old = X_7_ch4_old.feature_matrix_ch4;
X_8_ch4_old = X_8_ch4_old.feature_matrix_ch4;
X_9_ch4_old = X_9_ch4_old.feature_matrix_ch4;
X_10_ch4_old = X_10_ch4_old.feature_matrix_ch4;

X_ch4_old = [X_1_ch4_old(:,:);X_2_ch4_old(:,:);X_3_ch4_old(:,:);X_4_ch4_old(:,:);X_5_ch4_old(:,:);X_6_ch4_old(:,:);X_7_ch4_old(:,:);X_8_ch4_old(:,:);X_9_ch4_old(:,:);X_10_ch4_old(:,:)];

X_ch4_old = (X_ch4_old - mean(X_ch4_old)) ./ std(X_ch4_old);

X_index_ch4_old(1) = 1;
X_ind_ch4_old = [];
X_ind_ch4_old(:,1) = X_ch4_old(:,1);

for i = 2:size(X_ch4_old,2)    
    temp_mat = [X_ind_ch4_old X_ch4_old(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch4_old = temp_mat;
        X_index_ch4_old(:,size(temp_mat,2)) = i;
    end    
end

class_length_old = [23 23 27 23 21 22 17 17 19 20];

t_ch4_old = zeros(sum(class_length_old),1);

for i = 1:length(class_length_old)
    if i == 1
         t_ch4_old(1:class_length_old(i)) = i;
    else
         t_ch4_old(sum(class_length_old(1:i-1))+1:sum(class_length_old(1:i))) = i;
    end 
end

grp_ch4_old = (t_ch4_old);
obs_ch4_old = (X_ind_ch4_old);

X_1_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\flex 1 max\ch5_features.mat');
X_10_ch5_old = load('C:\Users\Nathan\Desktop\Thesis\My data\nothing\ch5_features.mat');

X_1_ch5_old = X_1_ch5_old.feature_matrix_ch5;
X_2_ch5_old = X_2_ch5_old.feature_matrix_ch5;
X_3_ch5_old = X_3_ch5_old.feature_matrix_ch5;
X_4_ch5_old = X_4_ch5_old.feature_matrix_ch5;
X_5_ch5_old = X_5_ch5_old.feature_matrix_ch5;
X_6_ch5_old = X_6_ch5_old.feature_matrix_ch5;
X_7_ch5_old = X_7_ch5_old.feature_matrix_ch5;
X_8_ch5_old = X_8_ch5_old.feature_matrix_ch5;
X_9_ch5_old = X_9_ch5_old.feature_matrix_ch5;
X_10_ch5_old = X_10_ch5_old.feature_matrix_ch5;

X_ch5_old = [X_1_ch5_old(:,:);X_2_ch5_old(:,:);X_3_ch5_old(:,:);X_4_ch5_old(:,:);X_5_ch5_old(:,:);X_6_ch5_old(:,:);X_7_ch5_old(:,:);X_8_ch5_old(:,:);X_9_ch5_old(:,:);X_10_ch5_old(:,:)];

X_ch5_old = (X_ch5_old - mean(X_ch5_old)) ./ std(X_ch5_old);

X_index_ch5_old(1) = 1;
X_ind_ch5_old = [];
X_ind_ch5_old(:,1) = X_ch5_old(:,1);

for i = 2:size(X_ch5_old,2)    
    temp_mat = [X_ind_ch5_old X_ch5_old(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch5_old = temp_mat;
        X_index_ch5_old(:,size(temp_mat,2)) = i;
    end    
end

class_length_old = [23 23 27 23 21 22 17 17 19 20];

t_ch5_old = zeros(sum(class_length_old),1);

for i = 1:length(class_length_old)
    if i == 1
         t_ch5_old(1:class_length_old(i)) = i;
    else
         t_ch5_old(sum(class_length_old(1:i-1))+1:sum(class_length_old(1:i))) = i;
    end 
end

grp_ch5_old = (t_ch5_old);
obs_ch5_old = (X_ind_ch5_old);

%

KNN_fet_ch1_cf = [4 8 15 16];
KNN_fet_ch2_cf = [8 15 26 27];
KNN_fet_ch3_cf = [9 15 16 17];
KNN_fet_ch4_cf = [8 13 14 18];
KNN_fet_ch5_cf = [4 8 18 20 27];

KNN_fet_ch1_fs = [1 3 4 15 16 18];
KNN_fet_ch2_fs = [8 15 16 26];
KNN_fet_ch3_fs = [14 18 24];
KNN_fet_ch4_fs = [3 8 10 12 15];
KNN_fet_ch5_fs = [4 8 18 20 25 27];

rng(8000,'twister');

% holdoutCVP_ch1_old = cvpartition(grp_ch1_old,'holdout',56);
% 
% obs_train_ch1_old = obs_ch1_old(holdoutCVP_ch1_old.training,:);
% grp_train_ch1_old  = grp_ch1_old(holdoutCVP_ch1_old.training);
% obs_test_ch1_old  = obs_ch1_old(holdoutCVP_ch1_old.test,:); 
% grp_test_ch1_old  = grp_ch1_old(holdoutCVP_ch1_old.test,:);

holdoutCVP_ch1_new = cvpartition(grp_ch1_new,'holdout',56);

obs_train_ch1_new = obs_ch1_new(holdoutCVP_ch1_new.training,:);
grp_train_ch1_new = grp_ch1_new(holdoutCVP_ch1_new.training);
obs_test_ch1_new = obs_ch1_new(holdoutCVP_ch1_new.test,:); 
grp_test_ch1_new = grp_ch1_new(holdoutCVP_ch1_new.test,:);

% holdoutCVP_ch2_old = cvpartition(grp_ch2_old,'holdout',56);
% 
% obs_train_ch2_old = obs_ch2_old(holdoutCVP_ch2_old.training,:);
% grp_train_ch2_old = grp_ch2_old(holdoutCVP_ch2_old.training);
% obs_test_ch2_old = obs_ch2_old(holdoutCVP_ch2_old.test,:); 
% grp_test_ch2_old = grp_ch2_old(holdoutCVP_ch2_old.test,:);

holdoutCVP_ch2_new = cvpartition(grp_ch2_new,'holdout',56);

obs_train_ch2_new = obs_ch2_new(holdoutCVP_ch1_new.training,:);
grp_train_ch2_new = grp_ch2_new(holdoutCVP_ch1_new.training);
obs_test_ch2_new = obs_ch2_new(holdoutCVP_ch1_new.test,:); 
grp_test_ch2_new = grp_ch2_new(holdoutCVP_ch1_new.test,:);

% holdoutCVP_ch3_old = cvpartition(grp_ch3_old,'holdout',56);
% 
% obs_train_ch3_old = obs_ch3_old(holdoutCVP_ch3_old.training,:);
% grp_train_ch3_old = grp_ch3_old(holdoutCVP_ch3_old.training);
% obs_test_ch3_old = obs_ch3_old(holdoutCVP_ch3_old.test,:); 
% grp_test_ch3_old = grp_ch3_old(holdoutCVP_ch3_old.test,:);

holdoutCVP_ch3_new = cvpartition(grp_ch3_new,'holdout',56);

obs_train_ch3_new = obs_ch3_new(holdoutCVP_ch1_new.training,:);
grp_train_ch3_new = grp_ch3_new(holdoutCVP_ch1_new.training);
obs_test_ch3_new = obs_ch3_new(holdoutCVP_ch1_new.test,:); 
grp_test_ch3_new = grp_ch3_new(holdoutCVP_ch1_new.test,:);

% holdoutCVP_ch4_old = cvpartition(grp_ch4_old,'holdout',56);
% 
% obs_train_ch4_old = obs_ch4_old(holdoutCVP_ch4_old.training,:);
% grp_train_ch4_old = grp_ch4_old(holdoutCVP_ch4_old.training);
% obs_test_ch4_old = obs_ch4_old(holdoutCVP_ch4_old.test,:); 
% grp_test_ch4_old = grp_ch4_old(holdoutCVP_ch4_old.test,:);

holdoutCVP_ch4_new = cvpartition(grp_ch4_new,'holdout',56);

obs_train_ch4_new = obs_ch4_new(holdoutCVP_ch1_new.training,:);
grp_train_ch4_new = grp_ch4_new(holdoutCVP_ch1_new.training);
obs_test_ch4_new = obs_ch4_new(holdoutCVP_ch1_new.test,:); 
grp_test_ch4_new = grp_ch4_new(holdoutCVP_ch1_new.test,:);

% holdoutCVP_ch5_old = cvpartition(grp_ch5_old,'holdout',56);
% 
% obs_train_ch5_old = obs_ch5_old(holdoutCVP_ch5_old.training,:);
% grp_train_ch5_old = grp_ch5_old(holdoutCVP_ch5_old.training);
% obs_test_ch5_old = obs_ch5_old(holdoutCVP_ch5_old.test,:); 
% grp_test_ch5_old = grp_ch5_old(holdoutCVP_ch5_old.test,:);

holdoutCVP_ch5_new = cvpartition(grp_ch5_new,'holdout',56);

obs_train_ch5_new = obs_ch5_new(holdoutCVP_ch1_new.training,:);
grp_train_ch5_new = grp_ch5_new(holdoutCVP_ch1_new.training);
obs_test_ch5_new = obs_ch5_new(holdoutCVP_ch1_new.test,:); 
grp_test_ch5_new = grp_ch5_new(holdoutCVP_ch1_new.test,:);

% obs_train_ch1 = [obs_train_ch1_old ; obs_train_ch1_new];
% grp_train_ch1 = [grp_train_ch1_old ; grp_train_ch1_new];
% obs_test_ch1= [obs_test_ch1_old ; obs_test_ch1_new];
% grp_test_ch1 = [grp_test_ch1_old ; grp_test_ch1_new];
% 
% obs_train_ch2 = [obs_train_ch2_old ; obs_train_ch2_new];
% grp_train_ch2 = [grp_train_ch2_old ; grp_train_ch2_new];
% obs_test_ch2 = [obs_test_ch2_old ; obs_test_ch2_new];
% grp_test_ch2 = [grp_test_ch2_old ; grp_test_ch2_new];
% 
% obs_train_ch3 = [obs_train_ch3_old ; obs_train_ch3_new];
% grp_train_ch3 = [grp_train_ch3_old ; grp_train_ch3_new];
% obs_test_ch3 = [obs_test_ch3_old ; obs_test_ch3_new];
% grp_test_ch3 = [grp_test_ch3_old ; grp_test_ch3_new];
% 
% obs_train_ch4 = [obs_train_ch4_old ; obs_train_ch4_new];
% grp_train_ch4 = [grp_train_ch4_old ; grp_train_ch4_new];
% obs_test_ch4 = [obs_test_ch4_old ; obs_test_ch4_new];
% grp_test_ch4 = [grp_test_ch4_old ; grp_test_ch4_new];
% 
% obs_train_ch5 = [obs_train_ch5_old ; obs_train_ch5_new];
% grp_train_ch5 = [grp_train_ch5_old ; grp_train_ch5_new];
% obs_test_ch5 = [obs_test_ch5_old ; obs_test_ch5_new];
% grp_test_ch5 = [grp_test_ch5_old ; grp_test_ch5_new];

md1_CH1 = fitcknn(obs_train_ch1_new(:,KNN_fet_ch1_cf),grp_train_ch1_new,'NumNeighbors',5);
[label_ch1,NegLoss, PBScore] = predict(md1_CH1,obs_test_ch1_new(:,KNN_fet_ch1_cf));
accuracy_ch1 = (sum((grp_test_ch1_new-label_ch1) == 0)/length(grp_test_ch1_new))*100;

md1_CH2 = fitcknn(obs_train_ch2_new(:,KNN_fet_ch2_cf),grp_train_ch2_new,'NumNeighbors',5);
[label_ch2,NegLoss, PBScore] = predict(md1_CH2,obs_test_ch2_new(:,KNN_fet_ch2_cf));
accuracy_ch2 = (sum((grp_test_ch2_new-label_ch2) == 0)/length(grp_test_ch2_new))*100;

md1_CH3 = fitcknn(obs_train_ch3_new(:,KNN_fet_ch3_cf),grp_train_ch3_new,'NumNeighbors',5);
[label_ch3,NegLoss, PBScore] = predict(md1_CH3,obs_test_ch3_new(:,KNN_fet_ch3_cf));
accuracy_ch3 = (sum((grp_test_ch3_new-label_ch3) == 0)/length(grp_test_ch3_new))*100;

md1_CH4 = fitcknn(obs_train_ch4_new(:,KNN_fet_ch4_cf),grp_train_ch4_new,'NumNeighbors',5);
[label_ch4,NegLoss, PBScore] = predict(md1_CH4,obs_test_ch4_new(:,KNN_fet_ch4_cf));
accuracy_ch4 = (sum((grp_test_ch4_new-label_ch4) == 0)/length(grp_test_ch4_new))*100;

md1_CH5 = fitcknn(obs_train_ch5_new(:,KNN_fet_ch5_cf),grp_train_ch5_new,'NumNeighbors',5);
[label_ch5,NegLoss, PBScore] = predict(md1_CH5,obs_test_ch5_new(:,KNN_fet_ch5_cf));
accuracy_ch5 = (sum((grp_test_ch5_new-label_ch5) == 0)/length(grp_test_ch5_new))*100;

label_sep_prev = [label_ch1 label_ch2 label_ch3 label_ch4 label_ch5];
label_sep = zeros(size(label_sep_prev,1),1);

for i = 1:size(label_sep_prev,1)
    tracker = 0;
    for j = 1:10
        if (sum(label_sep_prev(i,:)==j) > tracker)
            label_sep(i) = j;
            tracker = sum(label_sep_prev(i,:)==j);
        end
    end    
end

accuracy_sep_cf = (sum((grp_test_ch1_new-label_sep) == 0)/length(grp_test_ch1_new))*100;

md1_CH1_fs = fitcknn(obs_train_ch1_new(:,KNN_fet_ch1_fs),grp_train_ch1_new,'NumNeighbors',5);
[label_ch1_fs,NegLoss, PBScore] = predict(md1_CH1_fs,obs_test_ch1_new(:,KNN_fet_ch1_fs));
accuracy_ch1_fs = (sum((grp_test_ch1_new-label_ch1_fs) == 0)/length(grp_test_ch1_new))*100;

md1_CH2_fs = fitcknn(obs_train_ch2_new(:,KNN_fet_ch2_fs),grp_train_ch2_new,'NumNeighbors',5);
[label_ch2_fs,NegLoss, PBScore] = predict(md1_CH2_fs,obs_test_ch2_new(:,KNN_fet_ch2_fs));
accuracy_ch2_fs = (sum((grp_test_ch2_new-label_ch2_fs) == 0)/length(grp_test_ch2_new))*100;

md1_CH3_fs = fitcknn(obs_train_ch3_new(:,KNN_fet_ch3_fs),grp_train_ch3_new,'NumNeighbors',5);
[label_ch3_fs,NegLoss, PBScore] = predict(md1_CH3_fs,obs_test_ch3_new(:,KNN_fet_ch3_fs));
accuracy_ch3_fs = (sum((grp_test_ch3_new-label_ch3_fs) == 0)/length(grp_test_ch3_new))*100;

md1_CH4_fs = fitcknn(obs_train_ch4_new(:,KNN_fet_ch4_fs),grp_train_ch4_new,'NumNeighbors',5);
[label_ch4_fs,NegLoss, PBScore] = predict(md1_CH4_fs,obs_test_ch4_new(:,KNN_fet_ch4_fs));
accuracy_ch4_fs = (sum((grp_test_ch4_new-label_ch4_fs) == 0)/length(grp_test_ch4_new))*100;

md1_CH5_fs = fitcknn(obs_train_ch5_new(:,KNN_fet_ch5_fs),grp_train_ch5_new,'NumNeighbors',5);
[label_ch5_fs,NegLoss, PBScore] = predict(md1_CH5_fs,obs_test_ch5_new(:,KNN_fet_ch5_fs));
accuracy_ch5_fs = (sum((grp_test_ch5_new-label_ch5_fs) == 0)/length(grp_test_ch5_new))*100;


label_sep_prev_fs = [label_ch1_fs label_ch2_fs label_ch3_fs label_ch4_fs label_ch5_fs];
label_sep_fs = zeros(size(label_sep_prev_fs,1),1);

for i = 1:size(label_sep_prev_fs,1)
    tracker = 0;
    for j = 1:10
        if (sum(label_sep_prev_fs(i,:)==j) > tracker)
            label_sep_fs(i) = j;
            tracker = sum(label_sep_prev_fs(i,:)==j);
        end
    end    
end

accuracy_sep_fs = (sum((grp_test_ch1_new-label_sep_fs) == 0)/length(grp_test_ch1_new))*100;

xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\KNN_label_sep_cf.xlsx'), label_sep)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\KNN_label_sep_fs.xlsx'), label_sep_fs)
xlswrite(('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\actual_label_sep.xlsx'), grp_test_ch1_new)


% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_sep_cf', 'accuracy_sep_cf');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_sep_fs', 'accuracy_sep_fs');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_ch1_cf', 'accuracy_ch1');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_ch2_cf', 'accuracy_ch2');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_ch3_cf', 'accuracy_ch3');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_ch4_cf', 'accuracy_ch4');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\KNN tests\compare features\acc_ch5_cf', 'accuracy_ch5');
