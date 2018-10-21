% Load my data - SVM sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch1_features.mat');
X_2_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch1_features.mat');
X_3_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch1_features.mat');
X_4_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch1_features.mat');
X_5_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch1_features.mat');
X_6_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch1_features.mat');
X_7_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch1_features.mat');
X_8_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch1_features.mat');
X_9_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch1_features.mat');
X_10_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch1_features.mat');

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

X_1_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch2_features.mat');
X_2_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch2_features.mat');
X_3_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch2_features.mat');
X_4_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch2_features.mat');
X_5_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch2_features.mat');
X_6_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch2_features.mat');
X_7_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch2_features.mat');
X_8_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch2_features.mat');
X_9_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch2_features.mat');
X_10_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch2_features.mat');

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

X_1_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch3_features.mat');
X_2_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch3_features.mat');
X_3_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch3_features.mat');
X_4_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch3_features.mat');
X_5_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch3_features.mat');
X_6_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch3_features.mat');
X_7_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch3_features.mat');
X_8_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch3_features.mat');
X_9_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch3_features.mat');
X_10_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch3_features.mat');

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

X_1_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch4_features.mat');
X_2_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch4_features.mat');
X_3_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch4_features.mat');
X_4_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch4_features.mat');
X_5_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch4_features.mat');
X_6_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch4_features.mat');
X_7_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch4_features.mat');
X_8_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch4_features.mat');
X_9_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch4_features.mat');
X_10_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch4_features.mat');

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

X_1_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch5_features.mat');
X_2_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch5_features.mat');
X_3_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch5_features.mat');
X_4_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch5_features.mat');
X_5_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch5_features.mat');
X_6_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch5_features.mat');
X_7_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch5_features.mat');
X_8_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch5_features.mat');
X_9_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch5_features.mat');
X_10_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch5_features.mat');

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
X_1_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_2_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_3_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_4_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_5_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_6_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_7_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_8_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_9_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_10_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');

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

X_1_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_2_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_3_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_4_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_5_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_6_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_7_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_8_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_9_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_10_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');

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

X_1_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_2_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_3_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_4_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_5_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_6_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_7_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_8_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_9_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_10_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');

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

X_1_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_2_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_3_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_4_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_5_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_6_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_7_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_8_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_9_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_10_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');

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

X_1_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_10_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');

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

num_it = 50;
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

partition_mat_old = {};
partition_mat_new = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    partition_mat_old{i} = cvpartition(grp_ch1_old,'holdout',56);
    partition_mat_new{i} = cvpartition(grp_ch1_new,'holdout',56);
end

t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it
    
    holdoutCVP_ch1_old = partition_mat_old{i};

    obs_train_ch1_old = obs_ch1_old(holdoutCVP_ch1_old.training,:);
    grp_train_ch1_old  = grp_ch1_old(holdoutCVP_ch1_old.training);
    obs_test_ch1_old  = obs_ch1_old(holdoutCVP_ch1_old.test,:); 
    grp_test_ch1_old  = grp_ch1_old(holdoutCVP_ch1_old.test,:);

    holdoutCVP_ch1_new = partition_mat_new{i};
    
    obs_train_ch1_new = obs_ch1_new(holdoutCVP_ch1_new.training,:);
    grp_train_ch1_new = grp_ch1_new(holdoutCVP_ch1_new.training);
    obs_test_ch1_new = obs_ch1_new(holdoutCVP_ch1_new.test,:); 
    grp_test_ch1_new = grp_ch1_new(holdoutCVP_ch1_new.test,:);
        
    obs_train = [obs_train_ch1_old ; obs_train_ch1_new];
    grp_train = [grp_train_ch1_old ; grp_train_ch1_new];
    obs_test = [obs_test_ch1_old ; obs_test_ch1_new];
    grp_test = [grp_test_ch1_old ; grp_test_ch1_new];
    
    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

% Featsel

    features = 1:size(obs_ch1_new,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

% Sort Data and Find max accuracy and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_acc_mat_ch1'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_fet_mat_ch1'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_elapsed_time_ch1'), 'elapsed_time');

SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    
    holdoutCVP_ch2_old = partition_mat_old{i};

    obs_train_ch2_old = obs_ch2_old(holdoutCVP_ch2_old.training,:);
    grp_train_ch2_old  = grp_ch2_old(holdoutCVP_ch2_old.training);
    obs_test_ch2_old  = obs_ch2_old(holdoutCVP_ch2_old.test,:); 
    grp_test_ch2_old  = grp_ch2_old(holdoutCVP_ch2_old.test,:);

    holdoutCVP_ch2_new = partition_mat_new{i};
    
    obs_train_ch2_new = obs_ch2_new(holdoutCVP_ch2_new.training,:);
    grp_train_ch2_new = grp_ch2_new(holdoutCVP_ch2_new.training);
    obs_test_ch2_new = obs_ch2_new(holdoutCVP_ch2_new.test,:); 
    grp_test_ch2_new = grp_ch2_new(holdoutCVP_ch2_new.test,:);
        
    obs_train = [obs_train_ch2_old ; obs_train_ch2_new];
    grp_train = [grp_train_ch2_old ; grp_train_ch2_new];
    obs_test = [obs_test_ch2_old ; obs_test_ch2_new];
    grp_test = [grp_test_ch2_old ; grp_test_ch2_new];
    
    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

% Featsel

    features = 1:size(obs_ch2_new,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

% Sort Data and Find max accuracy and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_acc_mat_ch2'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_fet_mat_ch2'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_elapsed_time_ch2'), 'elapsed_time');

SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    
    holdoutCVP_ch3_old = partition_mat_old{i};

    obs_train_ch3_old = obs_ch3_old(holdoutCVP_ch3_old.training,:);
    grp_train_ch3_old  = grp_ch3_old(holdoutCVP_ch3_old.training);
    obs_test_ch3_old  = obs_ch3_old(holdoutCVP_ch3_old.test,:); 
    grp_test_ch3_old  = grp_ch3_old(holdoutCVP_ch3_old.test,:);

    holdoutCVP_ch3_new = partition_mat_new{i};
    
    obs_train_ch3_new = obs_ch3_new(holdoutCVP_ch3_new.training,:);
    grp_train_ch3_new = grp_ch3_new(holdoutCVP_ch3_new.training);
    obs_test_ch3_new = obs_ch3_new(holdoutCVP_ch3_new.test,:); 
    grp_test_ch3_new = grp_ch3_new(holdoutCVP_ch3_new.test,:);
        
    obs_train = [obs_train_ch3_old ; obs_train_ch3_new];
    grp_train = [grp_train_ch3_old ; grp_train_ch3_new];
    obs_test = [obs_test_ch3_old ; obs_test_ch3_new];
    grp_test = [grp_test_ch3_old ; grp_test_ch3_new];
    
    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

% Featsel

    features = 1:size(obs_ch3_new,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

% Sort Data and Find max accuracy and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_acc_mat_ch3'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_fet_mat_ch3'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_elapsed_time_ch3'), 'elapsed_time');

SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    
    holdoutCVP_ch4_old = partition_mat_old{i};

    obs_train_ch4_old = obs_ch4_old(holdoutCVP_ch4_old.training,:);
    grp_train_ch4_old  = grp_ch4_old(holdoutCVP_ch4_old.training);
    obs_test_ch4_old  = obs_ch4_old(holdoutCVP_ch4_old.test,:); 
    grp_test_ch4_old  = grp_ch4_old(holdoutCVP_ch4_old.test,:);

    holdoutCVP_ch4_new = partition_mat_new{i};
    
    obs_train_ch4_new = obs_ch4_new(holdoutCVP_ch4_new.training,:);
    grp_train_ch4_new = grp_ch4_new(holdoutCVP_ch4_new.training);
    obs_test_ch4_new = obs_ch4_new(holdoutCVP_ch4_new.test,:); 
    grp_test_ch4_new = grp_ch4_new(holdoutCVP_ch4_new.test,:);
        
    obs_train = [obs_train_ch4_old ; obs_train_ch4_new];
    grp_train = [grp_train_ch4_old ; grp_train_ch4_new];
    obs_test = [obs_test_ch4_old ; obs_test_ch4_new];
    grp_test = [grp_test_ch4_old ; grp_test_ch4_new];
    
    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

% Featsel

    features = 1:size(obs_ch4_new,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

% Sort Data and Find max accuracy and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_acc_mat_ch4'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_fet_mat_ch4'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_elapsed_time_ch4'), 'elapsed_time');

SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    
    holdoutCVP_ch5_old = partition_mat_old{i};

    obs_train_ch5_old = obs_ch5_old(holdoutCVP_ch5_old.training,:);
    grp_train_ch5_old  = grp_ch5_old(holdoutCVP_ch5_old.training);
    obs_test_ch5_old  = obs_ch5_old(holdoutCVP_ch5_old.test,:); 
    grp_test_ch5_old  = grp_ch5_old(holdoutCVP_ch5_old.test,:);

    holdoutCVP_ch5_new = partition_mat_new{i};
    
    obs_train_ch5_new = obs_ch5_new(holdoutCVP_ch5_new.training,:);
    grp_train_ch5_new = grp_ch5_new(holdoutCVP_ch5_new.training);
    obs_test_ch5_new = obs_ch5_new(holdoutCVP_ch5_new.test,:); 
    grp_test_ch5_new = grp_ch5_new(holdoutCVP_ch5_new.test,:);
        
    obs_train = [obs_train_ch5_old ; obs_train_ch5_new];
    grp_train = [grp_train_ch5_old ; grp_train_ch5_new];
    obs_test = [obs_test_ch5_old ; obs_test_ch5_new];
    grp_test = [grp_test_ch5_old ; grp_test_ch5_new];
    
    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

% Featsel

    features = 1:size(obs_ch5_new,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

% Sort Data and Find max accuracy and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_acc_mat_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_fet_mat_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep many\changed_elapsed_time_ch5'), 'elapsed_time');

% Load my data - SVM CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

% channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch1_features.mat');
X_1_CC_new = X_1_CC_new_temp.feature_matrix_ch1;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch2_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch2;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch3_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch3;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch4_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch4;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\ch5_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch5;

X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch1_features.mat');
X_2_CC_new = X_2_CC_new_temp.feature_matrix_ch1;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch2_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch2;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch3_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch3;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch4_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch4;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\ch5_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch5;

X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch1_features.mat');
X_3_CC_new = X_3_CC_new_temp.feature_matrix_ch1;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch2_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch2;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch3_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch3;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch4_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch4;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\ch5_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch5;

X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch1_features.mat');
X_4_CC_new = X_4_CC_new_temp.feature_matrix_ch1;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch2_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch2;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch3_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch3;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch4_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch4;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\ch5_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch5;

X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch1_features.mat');
X_5_CC_new = X_5_CC_new_temp.feature_matrix_ch1;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch2_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch2;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch3_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch3;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch4_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch4;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\ch5_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch5;

X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch1_features.mat');
X_6_CC_new = X_6_CC_new_temp.feature_matrix_ch1;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch2_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch2;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch3_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch3;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch4_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch4;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\ch5_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch5;

X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch1_features.mat');
X_7_CC_new = X_7_CC_new_temp.feature_matrix_ch1;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch2_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch2;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch3_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch3;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch4_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch4;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\ch5_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch5;

X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch1_features.mat');
X_8_CC_new = X_8_CC_new_temp.feature_matrix_ch1;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch2_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch2;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch3_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch3;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch4_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch4;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\ch5_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch5;

X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch1_features.mat');
X_9_CC_new = X_9_CC_new_temp.feature_matrix_ch1;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch2_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch2;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch3_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch3;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch4_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch4;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\ch5_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch5;

X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch1_features.mat');
X_10_CC_new = X_10_CC_new_temp.feature_matrix_ch1;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch2_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch2;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch3_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch3;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch4_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch4;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\ch5_features.mat');
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

X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_1_CC = X_1_CC_temp.feature_matrix_ch1;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch2;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch3;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch4;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch5;

X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_2_CC = X_2_CC_temp.feature_matrix_ch1;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch2;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch3;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch4;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch5;

X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_3_CC = X_3_CC_temp.feature_matrix_ch1;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch2;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch3;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch4;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch5;

X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_4_CC = X_4_CC_temp.feature_matrix_ch1;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch2;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch3;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch4;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch5;

X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_5_CC = X_5_CC_temp.feature_matrix_ch1;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch2;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch3;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch4;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch5;

X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_6_CC = X_6_CC_temp.feature_matrix_ch1;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch2;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch3;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch4;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch5;

X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_7_CC = X_7_CC_temp.feature_matrix_ch1;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch2;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch3;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch4;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch5;

X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_8_CC = X_8_CC_temp.feature_matrix_ch1;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch2;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch3;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch4;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch5;

X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_9_CC = X_9_CC_temp.feature_matrix_ch1;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch2;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch3;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch4;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch5;

X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');
X_10_CC = X_10_CC_temp.feature_matrix_ch1;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch2;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch3;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch4;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');
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

num_it = 50;
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

 t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it
        
    holdoutCVP_CC_old = cvpartition(grp_CC_old,'holdout',56);
    holdoutCVP_CC_new = cvpartition(grp_CC_new,'holdout',56);

    obs_train = [obs_CC_old(holdoutCVP_CC_old.training,:) ; obs_CC_new(holdoutCVP_CC_new.training,:)];
    grp_train = [grp_CC_old(holdoutCVP_CC_old.training,:) ; grp_CC_new(holdoutCVP_CC_new.training,:)];
    obs_test = [obs_CC_old(holdoutCVP_CC_old.test,:) ; obs_CC_new(holdoutCVP_CC_new.test,:)]; 
    grp_test = [grp_CC_old(holdoutCVP_CC_old.test,:) ; grp_CC_new(holdoutCVP_CC_new.test,:)];
    
    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

% Featsel

    features = 1:size(obs_CC_new,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed CC many\changed_acc_mat_CC'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed CC many\changed_fet_mat_CC'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed CC many\changed_elapsed_time'), 'elapsed_time');
