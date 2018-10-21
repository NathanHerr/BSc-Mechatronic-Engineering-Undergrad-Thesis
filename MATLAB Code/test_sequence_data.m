clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_seq_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC = X_seq_CC_temp.feature_matrix_ch1;
X_seq_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch2;
X_seq_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch3;
X_seq_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch4;
X_seq_CC_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch5;

X_seq_CC = (X_seq_CC - mean(X_seq_CC)) ./ std(X_seq_CC);

X_indeX_seq_CC(1) = 1;
X_ind_seq = [];
X_ind_seq(:,1) = X_seq_CC(:,1);

for i = 2:size(X_seq_CC,2)    
    temp_mat = [X_ind_seq X_seq_CC(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_seq = temp_mat;
        X_indeX_seq_CC(:,size(temp_mat,2)) = i;
    end    
end

%%

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;

X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;

X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;

X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;

X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;

X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;

X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;

X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;

X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;

X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;

X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];

X_seq_new = (X_seq_new - mean(X_seq_new)) ./ std(X_seq_new);

X_seq_new = [X_seq_new(:,1:14), X_seq_new(:,16:end)];

X_index_seq_new(1) = 1;
X_ind_seq_new = [];
X_ind_seq_new(:,1) = X_seq_new(:,1);

for i = 2:size(X_seq_new,2)    
    temp_mat = [X_ind_seq_new X_seq_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_seq_new = temp_mat;
        X_index_seq_new(:,size(temp_mat,2)) = i;
    end    
end

%%
clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
X_2_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
X_3_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
X_4_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
X_5_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
X_6_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
X_7_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
X_8_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
X_9_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
X_10_ch1_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');

X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;

X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];

X_ch1_seq_new = (X_ch1_seq_new - mean(X_ch1_seq_new)) ./ std(X_ch1_seq_new);

X_index_ch1_seq_new(1) = 1;
X_ind_ch1_seq_new = [];
X_ind_ch1_seq_new(:,1) = X_ch1_seq_new(:,1);

for i = 2:size(X_ch1_seq_new,2)    
    temp_mat = [X_ind_ch1_seq_new X_ch1_seq_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch1_seq_new = temp_mat;
        X_index_ch1_seq_new(:,size(temp_mat,2)) = i;
    end    
end

obs_ch1_seq_new = (X_ind_ch1_seq_new);

X_1_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
X_2_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
X_3_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
X_4_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
X_5_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
X_6_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
X_7_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
X_8_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
X_9_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
X_10_ch2_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');

X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;

X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];

X_ch2_seq_new = (X_ch2_seq_new - mean(X_ch2_seq_new)) ./ std(X_ch2_seq_new);

X_index_ch2_seq_new(1) = 1;
X_ind_ch2_seq_new = [];
X_ind_ch2_seq_new(:,1) = X_ch2_seq_new(:,1);

for i = 2:size(X_ch2_seq_new,2)    
    temp_mat = [X_ind_ch2_seq_new X_ch2_seq_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch2_seq_new = temp_mat;
        X_index_ch2_seq_new(:,size(temp_mat,2)) = i;
    end    
end

obs_ch2_seq_new = (X_ind_ch2_seq_new);

X_1_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
X_2_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
X_3_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
X_4_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
X_5_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
X_6_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
X_7_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
X_8_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
X_9_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
X_10_ch3_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');

X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;

X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];

X_ch3_seq_new = (X_ch3_seq_new - mean(X_ch3_seq_new)) ./ std(X_ch3_seq_new);

X_index_ch3_seq_new(1) = 1;
X_ind_ch3_seq_new = [];
X_ind_ch3_seq_new(:,1) = X_ch3_seq_new(:,1);

for i = 2:size(X_ch3_seq_new,2)    
    temp_mat = [X_ind_ch3_seq_new X_ch3_seq_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch3_seq_new = temp_mat;
        X_index_ch3_seq_new(:,size(temp_mat,2)) = i;
    end    
end

obs_ch3_seq_new = (X_ind_ch3_seq_new);

X_1_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
X_2_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
X_3_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
X_4_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
X_5_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
X_6_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
X_7_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
X_8_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
X_9_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
X_10_ch4_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');

X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;

X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];

X_ch4_seq_new = (X_ch4_seq_new - mean(X_ch4_seq_new)) ./ std(X_ch4_seq_new);

X_index_ch4_seq_new(1) = 1;
X_ind_ch4_seq_new = [];
X_ind_ch4_seq_new(:,1) = X_ch4_seq_new(:,1);

for i = 2:size(X_ch4_seq_new,2)    
    temp_mat = [X_ind_ch4_seq_new X_ch4_seq_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch4_seq_new = temp_mat;
        X_index_ch4_seq_new(:,size(temp_mat,2)) = i;
    end    
end

obs_ch4_seq_new = (X_ind_ch4_seq_new);

X_1_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
X_2_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
X_3_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
X_4_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
X_5_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
X_6_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
X_7_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
X_8_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
X_9_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
X_10_ch5_seq_new = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');

X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;

X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];

X_ch5_seq_new = (X_ch5_seq_new - mean(X_ch5_seq_new)) ./ std(X_ch5_seq_new);

X_index_ch5_seq_new(1) = 1;
X_ind_ch5_seq_new = [];
X_ind_ch5_seq_new(:,1) = X_ch5_seq_new(:,1);

for i = 2:size(X_ch5_seq_new,2)    
    temp_mat = [X_ind_ch5_seq_new X_ch5_seq_new(:,i)];
    temp_rank = rank(temp_mat);
    
    if temp_rank == size(temp_mat,2)
        X_ind_ch5_seq_new = temp_mat;
        X_index_ch5_seq_new(:,size(temp_mat,2)) = i;
    end    
end

obs_ch5_seq_new = (X_ind_ch5_seq_new);

%%

X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
X_1_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;

X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
X_2_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;

X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
X_3_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;

X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
X_4_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;

X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
X_5_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;

X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
X_6_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;

X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
X_7_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;

X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
X_8_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;

X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
X_9_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;

X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch1_features.mat');
X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch2_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch3_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch4_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
X_10_seq_new_temp = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\ch5_features.mat');
X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;

