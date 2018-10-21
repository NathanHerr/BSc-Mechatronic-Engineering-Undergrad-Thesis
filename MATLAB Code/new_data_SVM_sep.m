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
SVM_S_ch1 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_acc_ch1.mat');
SVM_S_ch1 = SVM_S_ch1.SVM_acc;
SVM_fet_ch1 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_fet_ch1.mat');
SVM_fet_ch1 = SVM_fet_ch1.SVM_fet;

SVM_S_ch2 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_acc_ch2.mat');
SVM_S_ch2 = SVM_S_ch2.SVM_acc;
SVM_fet_ch2 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_fet_ch2.mat');
SVM_fet_ch2 = SVM_fet_ch2.SVM_fet;

SVM_S_ch3 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_acc_ch3.mat');
SVM_S_ch3 = SVM_S_ch3.SVM_acc;
SVM_fet_ch3 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_fet_ch3.mat');
SVM_fet_ch3 = SVM_fet_ch3.SVM_fet;

SVM_S_ch4 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_acc_ch4.mat');
SVM_S_ch4 = SVM_S_ch4.SVM_acc;
SVM_fet_ch4 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_fet_ch4.mat');
SVM_fet_ch4 = SVM_fet_ch4.SVM_fet;

SVM_S_ch5 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_acc_ch5.mat');
SVM_S_ch5 = SVM_S_ch5.SVM_acc;
SVM_fet_ch5 = load('C:\Users\Nathan\Desktop\Thesis\MY data\SVM_tests\channel_sep_fixed\SVM_fet_ch5.mat');
SVM_fet_ch5 = SVM_fet_ch5.SVM_fet;

SVM_fet_ch1 = str2num(SVM_fet_ch1);
SVM_fet_ch2 = str2num(SVM_fet_ch2);
SVM_fet_ch3 = str2num(SVM_fet_ch3);
SVM_fet_ch4 = str2num(SVM_fet_ch4);
SVM_fet_ch5 = str2num(SVM_fet_ch5);

rng(8000,'twister');

holdoutCVP_ch1_old = cvpartition(grp_ch1_old,'holdout',56);

obs_train_ch1_old = obs_ch1_old(holdoutCVP_ch1_old.training,:);
grp_train_ch1_old  = grp_ch1_old(holdoutCVP_ch1_old.training);
obs_test_ch1_old  = obs_ch1_old(holdoutCVP_ch1_old.test,:); 
grp_test_ch1_old  = grp_ch1_old(holdoutCVP_ch1_old.test,:);

holdoutCVP_ch1_new = cvpartition(grp_ch1_new,'holdout',56);

obs_train_ch1_new = obs_ch1_new(holdoutCVP_ch1_new.training,:);
grp_train_ch1_new = grp_ch1_new(holdoutCVP_ch1_new.training);
obs_test_ch1_new = obs_ch1_new(holdoutCVP_ch1_new.test,:); 
grp_test_ch1_new = grp_ch1_new(holdoutCVP_ch1_new.test,:);

holdoutCVP_ch2_old = cvpartition(grp_ch2_old,'holdout',56);

obs_train_ch2_old = obs_ch2_old(holdoutCVP_ch2_old.training,:);
grp_train_ch2_old = grp_ch2_old(holdoutCVP_ch2_old.training);
obs_test_ch2_old = obs_ch2_old(holdoutCVP_ch2_old.test,:); 
grp_test_ch2_old = grp_ch2_old(holdoutCVP_ch2_old.test,:);

holdoutCVP_ch2_new = cvpartition(grp_ch2_new,'holdout',56);

obs_train_ch2_new = obs_ch2_new(holdoutCVP_ch2_new.training,:);
grp_train_ch2_new = grp_ch2_new(holdoutCVP_ch2_new.training);
obs_test_ch2_new = obs_ch2_new(holdoutCVP_ch2_new.test,:); 
grp_test_ch2_new = grp_ch2_new(holdoutCVP_ch2_new.test,:);

holdoutCVP_ch3_old = cvpartition(grp_ch3_old,'holdout',56);

obs_train_ch3_old = obs_ch3_old(holdoutCVP_ch3_old.training,:);
grp_train_ch3_old = grp_ch3_old(holdoutCVP_ch3_old.training);
obs_test_ch3_old = obs_ch3_old(holdoutCVP_ch3_old.test,:); 
grp_test_ch3_old = grp_ch3_old(holdoutCVP_ch3_old.test,:);

holdoutCVP_ch3_new = cvpartition(grp_ch3_new,'holdout',56);

obs_train_ch3_new = obs_ch3_new(holdoutCVP_ch3_new.training,:);
grp_train_ch3_new = grp_ch3_new(holdoutCVP_ch3_new.training);
obs_test_ch3_new = obs_ch3_new(holdoutCVP_ch3_new.test,:); 
grp_test_ch3_new = grp_ch3_new(holdoutCVP_ch3_new.test,:);

holdoutCVP_ch4_old = cvpartition(grp_ch4_old,'holdout',56);

obs_train_ch4_old = obs_ch4_old(holdoutCVP_ch4_old.training,:);
grp_train_ch4_old = grp_ch4_old(holdoutCVP_ch4_old.training);
obs_test_ch4_old = obs_ch4_old(holdoutCVP_ch4_old.test,:); 
grp_test_ch4_old = grp_ch4_old(holdoutCVP_ch4_old.test,:);

holdoutCVP_ch4_new = cvpartition(grp_ch4_new,'holdout',56);

obs_train_ch4_new = obs_ch4_new(holdoutCVP_ch4_new.training,:);
grp_train_ch4_new = grp_ch4_new(holdoutCVP_ch4_new.training);
obs_test_ch4_new = obs_ch4_new(holdoutCVP_ch4_new.test,:); 
grp_test_ch4_new = grp_ch4_new(holdoutCVP_ch4_new.test,:);

holdoutCVP_ch5_old = cvpartition(grp_ch5_old,'holdout',56);

obs_train_ch5_old = obs_ch5_old(holdoutCVP_ch5_old.training,:);
grp_train_ch5_old = grp_ch5_old(holdoutCVP_ch5_old.training);
obs_test_ch5_old = obs_ch5_old(holdoutCVP_ch5_old.test,:); 
grp_test_ch5_old = grp_ch5_old(holdoutCVP_ch5_old.test,:);

holdoutCVP_ch5_new = cvpartition(grp_ch5_new,'holdout',56);

obs_train_ch5_new = obs_ch5_new(holdoutCVP_ch5_new.training,:);
grp_train_ch5_new = grp_ch5_new(holdoutCVP_ch5_new.training);
obs_test_ch5_new = obs_ch5_new(holdoutCVP_ch5_new.test,:); 
grp_test_ch5_new = grp_ch5_new(holdoutCVP_ch5_new.test,:);

obs_train_ch1 = [obs_train_ch1_old ; obs_train_ch1_new];
grp_train_ch1 = [grp_train_ch1_old ; grp_train_ch1_new];
obs_test_ch1= [obs_test_ch1_old ; obs_test_ch1_new];
grp_test_ch1 = [grp_test_ch1_old ; grp_test_ch1_new];

obs_train_ch2 = [obs_train_ch2_old ; obs_train_ch2_new];
grp_train_ch2 = [grp_train_ch2_old ; grp_train_ch2_new];
obs_test_ch2 = [obs_test_ch2_old ; obs_test_ch2_new];
grp_test_ch2 = [grp_test_ch2_old ; grp_test_ch2_new];

obs_train_ch3 = [obs_train_ch3_old ; obs_train_ch3_new];
grp_train_ch3 = [grp_train_ch3_old ; grp_train_ch3_new];
obs_test_ch3 = [obs_test_ch3_old ; obs_test_ch3_new];
grp_test_ch3 = [grp_test_ch3_old ; grp_test_ch3_new];

obs_train_ch4 = [obs_train_ch4_old ; obs_train_ch4_new];
grp_train_ch4 = [grp_train_ch4_old ; grp_train_ch4_new];
obs_test_ch4 = [obs_test_ch4_old ; obs_test_ch4_new];
grp_test_ch4 = [grp_test_ch4_old ; grp_test_ch4_new];

obs_train_ch5 = [obs_train_ch5_old ; obs_train_ch5_new];
grp_train_ch5 = [grp_train_ch5_old ; grp_train_ch5_new];
obs_test_ch5 = [obs_test_ch5_old ; obs_test_ch5_new];
grp_test_ch5 = [grp_test_ch5_old ; grp_test_ch5_new];

md1_CH1 = fitcecoc(obs_train_ch1(:,SVM_fet_ch1),grp_train_ch1);
[label_ch1,NegLoss, PBScore] = predict(md1_CH1,obs_test_ch1(:,SVM_fet_ch1));
accuracy_ch1 = (sum((grp_test_ch1-label_ch1) == 0)/length(grp_test_ch1))*100;

md1_CH2 = fitcecoc(obs_train_ch2(:,SVM_fet_ch2),grp_train_ch2);
[label_ch2,NegLoss, PBScore] = predict(md1_CH2,obs_test_ch2(:,SVM_fet_ch2));
accuracy_ch2 = (sum((grp_test_ch2-label_ch2) == 0)/length(grp_test_ch2))*100;

md1_CH3 = fitcecoc(obs_train_ch3(:,SVM_fet_ch3),grp_train_ch3);
[label_ch3,NegLoss, PBScore] = predict(md1_CH3,obs_test_ch3(:,SVM_fet_ch3));
accuracy_ch3 = (sum((grp_test_ch3-label_ch3) == 0)/length(grp_test_ch3))*100;

md1_CH4 = fitcecoc(obs_train_ch4(:,SVM_fet_ch4),grp_train_ch4);
[label_ch4,NegLoss, PBScore] = predict(md1_CH4,obs_test_ch4(:,SVM_fet_ch4));
accuracy_ch4 = (sum((grp_test_ch4-label_ch4) == 0)/length(grp_test_ch4))*100;

md1_CH5 = fitcecoc(obs_train_ch5(:,SVM_fet_ch5),grp_train_ch5);
[label_ch5,NegLoss, PBScore] = predict(md1_CH5,obs_test_ch5(:,SVM_fet_ch5));
accuracy_ch5 = (sum((grp_test_ch5-label_ch5) == 0)/length(grp_test_ch5))*100;

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

accuracy_sep = (sum((grp_test_ch1-label_sep) == 0)/length(grp_test_ch1))*100;

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\SVM tests\test with both\accuracy_sep'), 'accuracy_sep');
