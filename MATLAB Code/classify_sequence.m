%% Load my data - KNN CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

% channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_1_CC_new = X_1_CC_new_temp.feature_matrix_ch1;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch2;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch3;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch4;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch5;

X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_2_CC_new = X_2_CC_new_temp.feature_matrix_ch1;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch2;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch3;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch4;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch5;

X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_3_CC_new = X_3_CC_new_temp.feature_matrix_ch1;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch2;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch3;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch4;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch5;

X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_4_CC_new = X_4_CC_new_temp.feature_matrix_ch1;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch2;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch3;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch4;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch5;

X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_5_CC_new = X_5_CC_new_temp.feature_matrix_ch1;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch2;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch3;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch4;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch5;

X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_6_CC_new = X_6_CC_new_temp.feature_matrix_ch1;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch2;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch3;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch4;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch5;

X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_7_CC_new = X_7_CC_new_temp.feature_matrix_ch1;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch2;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch3;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch4;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch5;

X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_8_CC_new = X_8_CC_new_temp.feature_matrix_ch1;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch2;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch3;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch4;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch5;

X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_9_CC_new = X_9_CC_new_temp.feature_matrix_ch1;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch2;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch3;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch4;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch5;

X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');
X_10_CC_new = X_10_CC_new_temp.feature_matrix_ch1;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch2;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch3;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch4;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch5;

% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC = X_seq_CC_temp.feature_matrix_ch1;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch2;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch3;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch4;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch5;

X_seq_new = X_seq_CC;

X_CC_new = [X_1_CC_new(:,:); X_2_CC_new(:,:); X_3_CC_new(:,:); X_4_CC_new(:,:); X_5_CC_new(:,:); X_6_CC_new(:,:); X_7_CC_new(:,:); X_8_CC_new(:,:); X_9_CC_new(:,:); X_10_CC_new(:,:);X_seq_new];

% X_CC_new = [X_CC_new(:,1:14) X_CC_new(:,16:end)];

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

X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_1_CC = X_1_CC_temp.feature_matrix_ch1;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch2;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch3;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch4;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch5;

X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_2_CC = X_2_CC_temp.feature_matrix_ch1;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch2;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch3;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch4;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch5;

X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_3_CC = X_3_CC_temp.feature_matrix_ch1;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch2;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch3;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch4;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch5;

X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_4_CC = X_4_CC_temp.feature_matrix_ch1;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch2;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch3;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch4;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch5;

X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_5_CC = X_5_CC_temp.feature_matrix_ch1;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch2;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch3;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch4;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch5;

X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_6_CC = X_6_CC_temp.feature_matrix_ch1;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch2;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch3;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch4;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch5;

X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_7_CC = X_7_CC_temp.feature_matrix_ch1;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch2;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch3;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch4;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch5;

X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_8_CC = X_8_CC_temp.feature_matrix_ch1;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch2;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch3;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch4;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch5;

X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_9_CC = X_9_CC_temp.feature_matrix_ch1;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch2;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch3;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch4;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch5;

X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');
X_10_CC = X_10_CC_temp.feature_matrix_ch1;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch2;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch3;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch4;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch5;

X_CC_old = [X_1_CC(:,:);X_2_CC(:,:);X_3_CC(:,:);X_4_CC(:,:);X_5_CC(:,:);X_6_CC(:,:);X_7_CC(:,:);X_8_CC(:,:);X_9_CC(:,:);X_10_CC(:,:)];

% X_CC_old = [X_CC_old(:,1:14) X_CC_old(:,16:end)];

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

class_length_old = [size(X_1_CC,1) size(X_2_CC,1) size(X_3_CC,1) size(X_4_CC,1) size(X_5_CC,1) size(X_6_CC,1) size(X_7_CC,1) size(X_8_CC,1) size(X_9_CC,1) size(X_10_CC,1)];

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

% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];
% 
% X_seq_new = (X_seq_new - mean(X_seq_new)) ./ std(X_seq_new);
% 
% X_seq_new = [X_seq_new(:,1:14), X_seq_new(:,16:end)];
% 
% X_index_seq_new(1) = 1;
% X_ind_seq_new = [];
% X_ind_seq_new(:,1) = X_seq_new(:,1);
% 
% for i = 2:size(X_seq_new,2)    
%     temp_mat = [X_ind_seq_new X_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_seq_new = temp_mat;
%         X_index_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end

% KNN_CC_fet_cf = [4 5 8 13 14];
% KNN_CC_fet_fs = [3 4 5 8 9 13 14 19];

KNN_CC_fet_cf = [4 5 8 13 14];
KNN_CC_fet_fs = [3 4 5 8 9 13 14 19];

rng(8000,'twister');

obs_train = [obs_CC_old ; obs_CC_new(1:end-size(X_seq_new,1),:)];
grp_train = [grp_CC_old ; grp_CC_new];
obs_test = obs_CC_new(end-size(X_seq_new,1)+1:end,:);

md1_CC_cf = fitcknn(obs_train(:,KNN_CC_fet_cf),grp_train,'NumNeighbors',5);
[label_cf,NegLoss, PBScore] = predict(md1_CC_cf,obs_test(:,KNN_CC_fet_cf));

md1_CC_fs = fitcknn(obs_train(:,KNN_CC_fet_fs),grp_train,'NumNeighbors',5);
[label_fs,NegLoss, PBScore] = predict(md1_CC_fs,obs_test(:,KNN_CC_fet_fs));

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_CC_cf'), 'label_cf');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_CC_fs'), 'label_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_CC_cf.xlsx'), label_cf)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_CC_fs.xlsx'), label_fs)


%% Load my data - KNN sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_2_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_3_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_4_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_5_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_6_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_7_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_8_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_9_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_10_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');

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

% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC_ch1 = X_seq_CC_temp.feature_matrix_ch1;

X_ch1_seq_new = X_seq_CC_ch1;

X_ch1_new = [X_1_ch1_new(:,:);X_2_ch1_new(:,:);X_3_ch1_new(:,:);X_4_ch1_new(:,:);X_5_ch1_new(:,:);X_6_ch1_new(:,:);X_7_ch1_new(:,:);X_8_ch1_new(:,:);X_9_ch1_new(:,:);X_10_ch1_new(:,:);X_ch1_seq_new];

% X_ch1_new = [X_ch1_new(:,1:14) X_ch1_new(:,16:end)];

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

X_1_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_2_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_3_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_4_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_5_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_6_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_7_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_8_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_9_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_10_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');

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

% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC_ch2 = X_seq_CC_temp.feature_matrix_ch2;

X_ch2_seq_new = X_seq_CC_ch2;

X_ch2_new = [X_1_ch2_new(:,:);X_2_ch2_new(:,:);X_3_ch2_new(:,:);X_4_ch2_new(:,:);X_5_ch2_new(:,:);X_6_ch2_new(:,:);X_7_ch2_new(:,:);X_8_ch2_new(:,:);X_9_ch2_new(:,:);X_10_ch2_new(:,:);X_ch2_seq_new];

% X_ch2_new = [X_ch2_new(:,1:14) X_ch2_new(:,16:end)];

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

X_1_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_2_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_3_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_4_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_5_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_6_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_7_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_8_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_9_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_10_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');

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

% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC_ch3 = X_seq_CC_temp.feature_matrix_ch3;

X_ch3_seq_new = X_seq_CC_ch3;

X_ch3_new = [X_1_ch3_new(:,:);X_2_ch3_new(:,:);X_3_ch3_new(:,:);X_4_ch3_new(:,:);X_5_ch3_new(:,:);X_6_ch3_new(:,:);X_7_ch3_new(:,:);X_8_ch3_new(:,:);X_9_ch3_new(:,:);X_10_ch3_new(:,:);X_ch3_seq_new];

% X_ch3_new = [X_ch3_new(:,1:14) X_ch3_new(:,16:end)];

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

X_1_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_2_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_3_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_4_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_5_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_6_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_7_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_8_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_9_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_10_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');

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

% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC_ch4 = X_seq_CC_temp.feature_matrix_ch4;

X_ch4_seq_new = X_seq_CC_ch4;

X_ch4_new = [X_1_ch4_new(:,:);X_2_ch4_new(:,:);X_3_ch4_new(:,:);X_4_ch4_new(:,:);X_5_ch4_new(:,:);X_6_ch4_new(:,:);X_7_ch4_new(:,:);X_8_ch4_new(:,:);X_9_ch4_new(:,:);X_10_ch4_new(:,:);X_ch4_seq_new];

% X_ch4_new = [X_ch4_new(:,1:14) X_ch4_new(:,16:end)];

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

X_1_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_2_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_3_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_4_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_5_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_6_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_7_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_8_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_9_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_10_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');

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

% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC_ch5 = X_seq_CC_temp.feature_matrix_ch5;

X_ch5_seq_new = X_seq_CC_ch5;

X_ch5_new = [X_1_ch5_new(:,:);X_2_ch5_new(:,:);X_3_ch5_new(:,:);X_4_ch5_new(:,:);X_5_ch5_new(:,:);X_6_ch5_new(:,:);X_7_ch5_new(:,:);X_8_ch5_new(:,:);X_9_ch5_new(:,:);X_10_ch5_new(:,:);X_ch5_seq_new];

% X_ch5_new = [X_ch5_new(:,1:14) X_ch5_new(:,16:end)];

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
X_1_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_2_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_3_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_4_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_5_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_6_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_7_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_8_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_9_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_10_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');

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
% X_ch1_old = [X_ch1_old(:,1:14) X_ch1_old(:,16:end)];
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

class_length_old = [size(X_1_ch1_old,1) size(X_2_ch1_old,1) size(X_3_ch1_old,1) size(X_4_ch1_old,1) size(X_5_ch1_old,1) size(X_6_ch1_old,1) size(X_7_ch1_old,1) size(X_8_ch1_old,1) size(X_9_ch1_old,1) size(X_10_ch1_old,1)];

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

X_1_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_2_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_3_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_4_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_5_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_6_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_7_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_8_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_9_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_10_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');

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
% X_ch2_old = [X_ch2_old(:,1:14) X_ch2_old(:,16:end)];
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

class_length_old = [size(X_1_ch2_old,1) size(X_2_ch2_old,1) size(X_3_ch2_old,1) size(X_4_ch2_old,1) size(X_5_ch2_old,1) size(X_6_ch2_old,1) size(X_7_ch2_old,1) size(X_8_ch2_old,1) size(X_9_ch2_old,1) size(X_10_ch2_old,1)];

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

X_1_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_2_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_3_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_4_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_5_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_6_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_7_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_8_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_9_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_10_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');

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
% X_ch3_old = [X_ch3_old(:,1:14) X_ch3_old(:,16:end)];
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

class_length_old = [size(X_1_ch3_old,1) size(X_2_ch3_old,1) size(X_3_ch3_old,1) size(X_4_ch3_old,1) size(X_5_ch3_old,1) size(X_6_ch3_old,1) size(X_7_ch3_old,1) size(X_8_ch3_old,1) size(X_9_ch3_old,1) size(X_10_ch3_old,1)];

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

X_1_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_2_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_3_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_4_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_5_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_6_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_7_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_8_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_9_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_10_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');

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
% X_ch4_old = [X_ch4_old(:,1:14) X_ch4_old(:,16:end)];
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

class_length_old = [size(X_1_ch4_old,1) size(X_2_ch4_old,1) size(X_3_ch4_old,1) size(X_4_ch4_old,1) size(X_5_ch4_old,1) size(X_6_ch4_old,1) size(X_7_ch4_old,1) size(X_8_ch4_old,1) size(X_9_ch4_old,1) size(X_10_ch4_old,1)];

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

X_1_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_2_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_3_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_4_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_5_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_6_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_7_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_8_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_9_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_10_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');

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
% X_ch5_old = [X_ch5_old(:,1:14) X_ch5_old(:,16:end)];
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

class_length_old = [size(X_1_ch5_old,1) size(X_2_ch5_old,1) size(X_3_ch5_old,1) size(X_4_ch5_old,1) size(X_5_ch5_old,1) size(X_6_ch5_old,1) size(X_7_ch5_old,1) size(X_8_ch5_old,1) size(X_9_ch5_old,1) size(X_10_ch5_old,1)];

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

% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];
% 
% X_ch1_seq_new = (X_ch1_seq_new - mean(X_ch1_seq_new)) ./ std(X_ch1_seq_new);
% X_ch1_seq_new = [X_ch1_seq_new(:,1:14), X_ch1_seq_new(:,16:end)];
% 
% X_index_ch1_seq_new(1) = 1;
% X_ind_ch1_seq_new = [];
% X_ind_ch1_seq_new(:,1) = X_ch1_seq_new(:,1);
% 
% for i = 2:size(X_ch1_seq_new,2)    
%     temp_mat = [X_ind_ch1_seq_new X_ch1_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch1_seq_new = temp_mat;
%         X_index_ch1_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch1_seq_new = (X_ind_ch1_seq_new);
% 
% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];
% 
% X_ch2_seq_new = (X_ch2_seq_new - mean(X_ch2_seq_new)) ./ std(X_ch2_seq_new);
% X_ch2_seq_new = [X_ch2_seq_new(:,1:14), X_ch2_seq_new(:,16:end)];
% 
% X_index_ch2_seq_new(1) = 1;
% X_ind_ch2_seq_new = [];
% X_ind_ch2_seq_new(:,1) = X_ch2_seq_new(:,1);
% 
% for i = 2:size(X_ch2_seq_new,2)    
%     temp_mat = [X_ind_ch2_seq_new X_ch2_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch2_seq_new = temp_mat;
%         X_index_ch2_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch2_seq_new = (X_ind_ch2_seq_new);
% 
% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];
% 
% X_ch3_seq_new = (X_ch3_seq_new - mean(X_ch3_seq_new)) ./ std(X_ch3_seq_new);
% X_ch3_seq_new = [X_ch3_seq_new(:,1:14), X_ch3_seq_new(:,16:end)];
% 
% X_index_ch3_seq_new(1) = 1;
% X_ind_ch3_seq_new = [];
% X_ind_ch3_seq_new(:,1) = X_ch3_seq_new(:,1);
% 
% for i = 2:size(X_ch3_seq_new,2)    
%     temp_mat = [X_ind_ch3_seq_new X_ch3_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch3_seq_new = temp_mat;
%         X_index_ch3_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch3_seq_new = (X_ind_ch3_seq_new);
% 
% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];
% 
% X_ch4_seq_new = (X_ch4_seq_new - mean(X_ch4_seq_new)) ./ std(X_ch4_seq_new);
% X_ch4_seq_new = [X_ch4_seq_new(:,1:14), X_ch4_seq_new(:,16:end)];
% 
% X_index_ch4_seq_new(1) = 1;
% X_ind_ch4_seq_new = [];
% X_ind_ch4_seq_new(:,1) = X_ch4_seq_new(:,1);
% 
% for i = 2:size(X_ch4_seq_new,2)    
%     temp_mat = [X_ind_ch4_seq_new X_ch4_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch4_seq_new = temp_mat;
%         X_index_ch4_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch4_seq_new = (X_ind_ch4_seq_new);
% 
% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];
% 
% X_ch5_seq_new = (X_ch5_seq_new - mean(X_ch5_seq_new)) ./ std(X_ch5_seq_new);
% X_ch5_seq_new = [X_ch5_seq_new(:,1:14), X_ch5_seq_new(:,16:end)];
% 
% X_index_ch5_seq_new(1) = 1;
% X_ind_ch5_seq_new = [];
% X_ind_ch5_seq_new(:,1) = X_ch5_seq_new(:,1);
% 
% for i = 2:size(X_ch5_seq_new,2)    
%     temp_mat = [X_ind_ch5_seq_new X_ch5_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch5_seq_new = temp_mat;
%         X_index_ch5_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch5_seq_new = (X_ind_ch5_seq_new);


%

% KNN_fet_ch1_cf = [4 12 15];
% KNN_fet_ch2_cf = [4 6 8];
% KNN_fet_ch3_cf = [4 8 17 24];
% KNN_fet_ch4_cf = [7 8 14 17];
% KNN_fet_ch5_cf = [8 14 19 26];
% 
% KNN_fet_ch1_fs = [4 5 8 12 13 14 15 23 26];
% KNN_fet_ch2_fs = [6 8 14 16 23 24];
% KNN_fet_ch3_fs = [4 6 8 14 17 24];
% KNN_fet_ch4_fs = [1 4 5 8 9 14 17 19];
% KNN_fet_ch5_fs = [7 8 10 26];

KNN_fet_ch1_cf = [4 12 15 16];
KNN_fet_ch2_cf = [4 6 8 15];
KNN_fet_ch3_cf = [4 8 18 25];
KNN_fet_ch4_cf = [7 8 14 18];
KNN_fet_ch5_cf = [8 14 20 27];

KNN_fet_ch1_fs = [4 5 8 12 13 14 15 16 24 27];
KNN_fet_ch2_fs = [6 8 14 15 17 24 26];
KNN_fet_ch3_fs = [4 6 8 14 18 25];
KNN_fet_ch4_fs = [1 4 5 8 9 14 15 18 20];
KNN_fet_ch5_fs = [7 8 10 27];

rng(8000,'twister');

obs_train_ch1 = [obs_ch1_old ; obs_ch1_new(1:end-size(X_ch1_seq_new,1),:)];
grp_train_ch1 = [grp_ch1_old ; grp_ch1_new];
obs_test_ch1 = obs_ch1_new(end-size(X_ch1_seq_new,1)+1:end,:);

obs_train_ch2 = [obs_ch2_old ; obs_ch2_new(1:end-size(X_ch2_seq_new,1),:)];
grp_train_ch2 = [grp_ch2_old ; grp_ch2_new];
obs_test_ch2 = obs_ch2_new(end-size(X_ch2_seq_new,1)+1:end,:);

obs_train_ch3 = [obs_ch3_old ; obs_ch3_new(1:end-size(X_ch3_seq_new,1),:)];
grp_train_ch3 = [grp_ch3_old ; grp_ch3_new];
obs_test_ch3 = obs_ch3_new(end-size(X_ch3_seq_new,1)+1:end,:);

obs_train_ch4 = [obs_ch4_old ; obs_ch4_new(1:end-size(X_ch4_seq_new,1),:)];
grp_train_ch4 = [grp_ch4_old ; grp_ch4_new];
obs_test_ch4 = obs_ch4_new(end-size(X_ch4_seq_new,1)+1:end,:);

obs_train_ch5 = [obs_ch5_old ; obs_ch5_new(1:end-size(X_ch5_seq_new,1),:)];
grp_train_ch5 = [grp_ch5_old ; grp_ch5_new];
obs_test_ch5 = obs_ch5_new(end-size(X_ch5_seq_new,1)+1:end,:);

md1_CH1 = fitcknn(obs_train_ch1(:,KNN_fet_ch1_cf),grp_train_ch1,'NumNeighbors',5);
[label_ch1,NegLoss, PBScore] = predict(md1_CH1,obs_test_ch1(:,KNN_fet_ch1_cf));
% accuracy_ch1 = (sum((grp_test_ch1-label_ch1) == 0)/length(grp_test_ch1))*100;

md1_CH2 = fitcknn(obs_train_ch2(:,KNN_fet_ch2_cf),grp_train_ch2,'NumNeighbors',5);
[label_ch2,NegLoss, PBScore] = predict(md1_CH2,obs_test_ch2(:,KNN_fet_ch2_cf));
% accuracy_ch2 = (sum((grp_test_ch2-label_ch2) == 0)/length(grp_test_ch2))*100;

md1_CH3 = fitcknn(obs_train_ch3(:,KNN_fet_ch3_cf),grp_train_ch3,'NumNeighbors',5);
[label_ch3,NegLoss, PBScore] = predict(md1_CH3,obs_test_ch3(:,KNN_fet_ch3_cf));
% accuracy_ch3 = (sum((grp_test_ch3-label_ch3) == 0)/length(grp_test_ch3))*100;

md1_CH4 = fitcknn(obs_train_ch4(:,KNN_fet_ch4_cf),grp_train_ch4,'NumNeighbors',5);
[label_ch4,NegLoss, PBScore] = predict(md1_CH4,obs_test_ch4(:,KNN_fet_ch4_cf));
% accuracy_ch4 = (sum((grp_test_ch4-label_ch4) == 0)/length(grp_test_ch4))*100;

md1_CH5 = fitcknn(obs_train_ch5(:,KNN_fet_ch5_cf),grp_train_ch5,'NumNeighbors',5);
[label_ch5,NegLoss, PBScore] = predict(md1_CH5,obs_test_ch5(:,KNN_fet_ch5_cf));
% accuracy_ch5 = (sum((grp_test_ch5-label_ch5) == 0)/length(grp_test_ch5))*100;

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

% accuracy_sep_cf = (sum((grp_test_ch1-label_sep) == 0)/length(grp_test_ch1))*100;

md1_CH1_fs = fitcknn(obs_train_ch1(:,KNN_fet_ch1_fs),grp_train_ch1,'NumNeighbors',5);
[label_ch1_fs,NegLoss, PBScore] = predict(md1_CH1_fs,obs_test_ch1(:,KNN_fet_ch1_fs));
% accuracy_ch1_fs = (sum((grp_test_ch1-label_ch1_fs) == 0)/length(grp_test_ch1))*100;

md1_CH2_fs = fitcknn(obs_train_ch2(:,KNN_fet_ch2_fs),grp_train_ch2,'NumNeighbors',5);
[label_ch2_fs,NegLoss, PBScore] = predict(md1_CH2_fs,obs_test_ch2(:,KNN_fet_ch2_fs));
% accuracy_ch2_fs = (sum((grp_test_ch2-label_ch2_fs) == 0)/length(grp_test_ch2))*100;

md1_CH3_fs = fitcknn(obs_train_ch3(:,KNN_fet_ch3_fs),grp_train_ch3,'NumNeighbors',5);
[label_ch3_fs,NegLoss, PBScore] = predict(md1_CH3_fs,obs_test_ch3(:,KNN_fet_ch3_fs));
% accuracy_ch3_fs = (sum((grp_test_ch3-label_ch3_fs) == 0)/length(grp_test_ch3))*100;

md1_CH4_fs = fitcknn(obs_train_ch4(:,KNN_fet_ch4_fs),grp_train_ch4,'NumNeighbors',5);
[label_ch4_fs,NegLoss, PBScore] = predict(md1_CH4_fs,obs_test_ch4(:,KNN_fet_ch4_fs));
% accuracy_ch4_fs = (sum((grp_test_ch4-label_ch4_fs) == 0)/length(grp_test_ch4))*100;

md1_CH5_fs = fitcknn(obs_train_ch5(:,KNN_fet_ch5_fs),grp_train_ch5,'NumNeighbors',5);
[label_ch5_fs,NegLoss, PBScore] = predict(md1_CH5_fs,obs_test_ch5(:,KNN_fet_ch5_fs));
% accuracy_ch5_fs = (sum((grp_test_ch5-label_ch5_fs) == 0)/length(grp_test_ch5))*100;


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

% accuracy_sep_fs = (sum((grp_test_ch1-label_sep_fs) == 0)/length(grp_test_ch1))*100;

save('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_sep_cf', 'label_sep');
save('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_sep_fs', 'label_sep_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_sep_cf.xlsx'), label_sep)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\KNN_label_sep_fs.xlsx'), label_sep_fs)


%% Load my data - LDA CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

% channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_1_CC_new = X_1_CC_new_temp.feature_matrix_ch1;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch2;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch3;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch4;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch5;

X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_2_CC_new = X_2_CC_new_temp.feature_matrix_ch1;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch2;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch3;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch4;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch5;

X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_3_CC_new = X_3_CC_new_temp.feature_matrix_ch1;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch2;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch3;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch4;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch5;

X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_4_CC_new = X_4_CC_new_temp.feature_matrix_ch1;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch2;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch3;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch4;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch5;

X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_5_CC_new = X_5_CC_new_temp.feature_matrix_ch1;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch2;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch3;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch4;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch5;

X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_6_CC_new = X_6_CC_new_temp.feature_matrix_ch1;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch2;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch3;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch4;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch5;

X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_7_CC_new = X_7_CC_new_temp.feature_matrix_ch1;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch2;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch3;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch4;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch5;

X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_8_CC_new = X_8_CC_new_temp.feature_matrix_ch1;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch2;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch3;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch4;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch5;

X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_9_CC_new = X_9_CC_new_temp.feature_matrix_ch1;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch2;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch3;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch4;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch5;

X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');
X_10_CC_new = X_10_CC_new_temp.feature_matrix_ch1;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch2;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch3;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch4;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch5;

% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC = X_seq_CC_temp.feature_matrix_ch1;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch2;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch3;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch4;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch5;

X_seq_new = X_seq_CC;

X_CC_new = [X_1_CC_new(:,:); X_2_CC_new(:,:); X_3_CC_new(:,:); X_4_CC_new(:,:); X_5_CC_new(:,:); X_6_CC_new(:,:); X_7_CC_new(:,:); X_8_CC_new(:,:); X_9_CC_new(:,:); X_10_CC_new(:,:);X_seq_new];
% X_CC_new = [X_CC_new(:,1:14) X_CC_new(:,16:end)];
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

X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_1_CC = X_1_CC_temp.feature_matrix_ch1;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch2;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch3;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch4;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch5;

X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_2_CC = X_2_CC_temp.feature_matrix_ch1;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch2;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch3;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch4;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch5;

X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_3_CC = X_3_CC_temp.feature_matrix_ch1;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch2;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch3;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch4;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch5;

X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_4_CC = X_4_CC_temp.feature_matrix_ch1;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch2;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch3;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch4;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch5;

X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_5_CC = X_5_CC_temp.feature_matrix_ch1;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch2;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch3;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch4;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch5;

X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_6_CC = X_6_CC_temp.feature_matrix_ch1;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch2;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch3;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch4;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch5;

X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_7_CC = X_7_CC_temp.feature_matrix_ch1;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch2;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch3;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch4;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch5;

X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_8_CC = X_8_CC_temp.feature_matrix_ch1;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch2;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch3;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch4;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch5;

X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_9_CC = X_9_CC_temp.feature_matrix_ch1;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch2;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch3;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch4;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch5;

X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');
X_10_CC = X_10_CC_temp.feature_matrix_ch1;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch2;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch3;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch4;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch5;

X_CC_old = [X_1_CC(:,:);X_2_CC(:,:);X_3_CC(:,:);X_4_CC(:,:);X_5_CC(:,:);X_6_CC(:,:);X_7_CC(:,:);X_8_CC(:,:);X_9_CC(:,:);X_10_CC(:,:)];
% X_CC_old = [X_CC_old(:,1:14) X_CC_old(:,16:end)];
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

class_length_old = [size(X_1_CC,1) size(X_2_CC,1) size(X_3_CC,1) size(X_4_CC,1) size(X_5_CC,1) size(X_6_CC,1) size(X_7_CC,1) size(X_8_CC,1) size(X_9_CC,1) size(X_10_CC,1)];

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

% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];
% 
% X_seq_new = (X_seq_new - mean(X_seq_new)) ./ std(X_seq_new);
% 
% X_seq_new = [X_seq_new(:,1:14), X_seq_new(:,16:end)];
% 
% X_index_seq_new(1) = 1;
% X_ind_seq_new = [];
% X_ind_seq_new(:,1) = X_seq_new(:,1);
% 
% for i = 2:size(X_seq_new,2)    
%     temp_mat = [X_ind_seq_new X_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_seq_new = temp_mat;
%         X_index_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end

% LDA_CC_fet_cf = [1 4 8 13 14]; 
% LDA_CC_fet_fs = [1 3 4 5 8 12 13 14 15 16 25 26];

LDA_CC_fet_cf = [1 4 8 13 14]; 
LDA_CC_fet_fs = [1 3 4 5 8 12 13 14 15 16 17 26 27];

obs_train = [obs_CC_old ; obs_CC_new(1:end-size(X_seq_new,1),:)];
grp_train = [grp_CC_old ; grp_CC_new];
obs_test = obs_CC_new(end-size(X_seq_new,1)+1:end,:);

rng(8000,'twister');

md1_CC_cf = fitcdiscr(obs_train(:,LDA_CC_fet_cf),grp_train,'DiscrimType','linear');
[label_cf,NegLoss, PBScore] = predict(md1_CC_cf,obs_test(:,LDA_CC_fet_cf));

md1_CC_fs = fitcdiscr(obs_train(:,LDA_CC_fet_fs),grp_train,'DiscrimType','linear');
[label_fs,NegLoss, PBScore] = predict(md1_CC_fs,obs_test(:,LDA_CC_fet_fs));

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_CC_cf'), 'label_cf');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_CC_fs'), 'label_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_CC_cf.xlsx'), label_cf)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_CC_fs.xlsx'), label_fs)


%% Load my data - LDA sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_2_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_3_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_4_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_5_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_6_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_7_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_8_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_9_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_10_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');

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

% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC_ch1 = X_seq_CC_temp.feature_matrix_ch1;

X_ch1_seq_new = X_seq_CC_ch1;

X_ch1_new = [X_1_ch1_new(:,:);X_2_ch1_new(:,:);X_3_ch1_new(:,:);X_4_ch1_new(:,:);X_5_ch1_new(:,:);X_6_ch1_new(:,:);X_7_ch1_new(:,:);X_8_ch1_new(:,:);X_9_ch1_new(:,:);X_10_ch1_new(:,:);X_ch1_seq_new];

% X_ch1_new = [X_ch1_new(:,1:14) X_ch1_new(:,16:end)];

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

X_1_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_2_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_3_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_4_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_5_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_6_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_7_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_8_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_9_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_10_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');

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

% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC_ch2 = X_seq_CC_temp.feature_matrix_ch2;

X_ch2_seq_new = X_seq_CC_ch2;

X_ch2_new = [X_1_ch2_new(:,:);X_2_ch2_new(:,:);X_3_ch2_new(:,:);X_4_ch2_new(:,:);X_5_ch2_new(:,:);X_6_ch2_new(:,:);X_7_ch2_new(:,:);X_8_ch2_new(:,:);X_9_ch2_new(:,:);X_10_ch2_new(:,:);X_ch2_seq_new];

% X_ch2_new = [X_ch2_new(:,1:14) X_ch2_new(:,16:end)];

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

X_1_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_2_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_3_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_4_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_5_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_6_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_7_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_8_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_9_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_10_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');

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

% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC_ch3 = X_seq_CC_temp.feature_matrix_ch3;

X_ch3_seq_new = X_seq_CC_ch3;

X_ch3_new = [X_1_ch3_new(:,:);X_2_ch3_new(:,:);X_3_ch3_new(:,:);X_4_ch3_new(:,:);X_5_ch3_new(:,:);X_6_ch3_new(:,:);X_7_ch3_new(:,:);X_8_ch3_new(:,:);X_9_ch3_new(:,:);X_10_ch3_new(:,:);X_ch3_seq_new];

% X_ch3_new = [X_ch3_new(:,1:14) X_ch3_new(:,16:end)];

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

X_1_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_2_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_3_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_4_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_5_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_6_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_7_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_8_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_9_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_10_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');

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

% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC_ch4 = X_seq_CC_temp.feature_matrix_ch4;

X_ch4_seq_new = X_seq_CC_ch4;

X_ch4_new = [X_1_ch4_new(:,:);X_2_ch4_new(:,:);X_3_ch4_new(:,:);X_4_ch4_new(:,:);X_5_ch4_new(:,:);X_6_ch4_new(:,:);X_7_ch4_new(:,:);X_8_ch4_new(:,:);X_9_ch4_new(:,:);X_10_ch4_new(:,:);X_ch4_seq_new];

% X_ch4_new = [X_ch4_new(:,1:14) X_ch4_new(:,16:end)];

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

X_1_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_2_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_3_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_4_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_5_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_6_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_7_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_8_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_9_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_10_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');

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

% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC_ch5 = X_seq_CC_temp.feature_matrix_ch5;

X_ch5_seq_new = X_seq_CC_ch5;

X_ch5_new = [X_1_ch5_new(:,:);X_2_ch5_new(:,:);X_3_ch5_new(:,:);X_4_ch5_new(:,:);X_5_ch5_new(:,:);X_6_ch5_new(:,:);X_7_ch5_new(:,:);X_8_ch5_new(:,:);X_9_ch5_new(:,:);X_10_ch5_new(:,:);X_ch5_seq_new];

% X_ch5_new = [X_ch5_new(:,1:14) X_ch5_new(:,16:end)];

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
X_1_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_2_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_3_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_4_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_5_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_6_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_7_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_8_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_9_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_10_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');

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
% X_ch1_old = [X_ch1_old(:,1:14) X_ch1_old(:,16:end)];
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

class_length_old = [size(X_1_ch1_old,1) size(X_2_ch1_old,1) size(X_3_ch1_old,1) size(X_4_ch1_old,1) size(X_5_ch1_old,1) size(X_6_ch1_old,1) size(X_7_ch1_old,1) size(X_8_ch1_old,1) size(X_9_ch1_old,1) size(X_10_ch1_old,1)];

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

X_1_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_2_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_3_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_4_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_5_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_6_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_7_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_8_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_9_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_10_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');

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
% X_ch2_old = [X_ch2_old(:,1:14) X_ch2_old(:,16:end)];
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

class_length_old = [size(X_1_ch2_old,1) size(X_2_ch2_old,1) size(X_3_ch2_old,1) size(X_4_ch2_old,1) size(X_5_ch2_old,1) size(X_6_ch2_old,1) size(X_7_ch2_old,1) size(X_8_ch2_old,1) size(X_9_ch2_old,1) size(X_10_ch2_old,1)];

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

X_1_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_2_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_3_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_4_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_5_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_6_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_7_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_8_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_9_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_10_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');

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
% X_ch3_old = [X_ch3_old(:,1:14) X_ch3_old(:,16:end)];
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

class_length_old = [size(X_1_ch3_old,1) size(X_2_ch3_old,1) size(X_3_ch3_old,1) size(X_4_ch3_old,1) size(X_5_ch3_old,1) size(X_6_ch3_old,1) size(X_7_ch3_old,1) size(X_8_ch3_old,1) size(X_9_ch3_old,1) size(X_10_ch3_old,1)];

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

X_1_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_2_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_3_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_4_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_5_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_6_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_7_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_8_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_9_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_10_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');

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
% X_ch4_old = [X_ch4_old(:,1:14) X_ch4_old(:,16:end)];
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

class_length_old = [size(X_1_ch4_old,1) size(X_2_ch4_old,1) size(X_3_ch4_old,1) size(X_4_ch4_old,1) size(X_5_ch4_old,1) size(X_6_ch4_old,1) size(X_7_ch4_old,1) size(X_8_ch4_old,1) size(X_9_ch4_old,1) size(X_10_ch4_old,1)];

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

X_1_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_2_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_3_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_4_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_5_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_6_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_7_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_8_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_9_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_10_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');

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
% X_ch5_old = [X_ch5_old(:,1:14) X_ch5_old(:,16:end)];
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

class_length_old = [size(X_1_ch5_old,1) size(X_2_ch5_old,1) size(X_3_ch5_old,1) size(X_4_ch5_old,1) size(X_5_ch5_old,1) size(X_6_ch5_old,1) size(X_7_ch5_old,1) size(X_8_ch5_old,1) size(X_9_ch5_old,1) size(X_10_ch5_old,1)];

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

%

% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];
% 
% X_ch1_seq_new = (X_ch1_seq_new - mean(X_ch1_seq_new)) ./ std(X_ch1_seq_new);
% X_ch1_seq_new = [X_ch1_seq_new(:,1:14), X_ch1_seq_new(:,16:end)];
% 
% X_index_ch1_seq_new(1) = 1;
% X_ind_ch1_seq_new = [];
% X_ind_ch1_seq_new(:,1) = X_ch1_seq_new(:,1);
% 
% for i = 2:size(X_ch1_seq_new,2)    
%     temp_mat = [X_ind_ch1_seq_new X_ch1_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch1_seq_new = temp_mat;
%         X_index_ch1_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch1_seq_new = (X_ind_ch1_seq_new);
% 
% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];
% 
% X_ch2_seq_new = (X_ch2_seq_new - mean(X_ch2_seq_new)) ./ std(X_ch2_seq_new);
% X_ch2_seq_new = [X_ch2_seq_new(:,1:14), X_ch2_seq_new(:,16:end)];
% 
% X_index_ch2_seq_new(1) = 1;
% X_ind_ch2_seq_new = [];
% X_ind_ch2_seq_new(:,1) = X_ch2_seq_new(:,1);
% 
% for i = 2:size(X_ch2_seq_new,2)    
%     temp_mat = [X_ind_ch2_seq_new X_ch2_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch2_seq_new = temp_mat;
%         X_index_ch2_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch2_seq_new = (X_ind_ch2_seq_new);
% 
% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];
% 
% X_ch3_seq_new = (X_ch3_seq_new - mean(X_ch3_seq_new)) ./ std(X_ch3_seq_new);
% X_ch3_seq_new = [X_ch3_seq_new(:,1:14), X_ch3_seq_new(:,16:end)];
% 
% X_index_ch3_seq_new(1) = 1;
% X_ind_ch3_seq_new = [];
% X_ind_ch3_seq_new(:,1) = X_ch3_seq_new(:,1);
% 
% for i = 2:size(X_ch3_seq_new,2)    
%     temp_mat = [X_ind_ch3_seq_new X_ch3_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch3_seq_new = temp_mat;
%         X_index_ch3_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch3_seq_new = (X_ind_ch3_seq_new);
% 
% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];
% 
% X_ch4_seq_new = (X_ch4_seq_new - mean(X_ch4_seq_new)) ./ std(X_ch4_seq_new);
% X_ch4_seq_new = [X_ch4_seq_new(:,1:14), X_ch4_seq_new(:,16:end)];
% 
% X_index_ch4_seq_new(1) = 1;
% X_ind_ch4_seq_new = [];
% X_ind_ch4_seq_new(:,1) = X_ch4_seq_new(:,1);
% 
% for i = 2:size(X_ch4_seq_new,2)    
%     temp_mat = [X_ind_ch4_seq_new X_ch4_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch4_seq_new = temp_mat;
%         X_index_ch4_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch4_seq_new = (X_ind_ch4_seq_new);
% 
% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];
% 
% X_ch5_seq_new = (X_ch5_seq_new - mean(X_ch5_seq_new)) ./ std(X_ch5_seq_new);
% X_ch5_seq_new = [X_ch5_seq_new(:,1:14), X_ch5_seq_new(:,16:end)];
% 
% X_index_ch5_seq_new(1) = 1;
% X_ind_ch5_seq_new = [];
% X_ind_ch5_seq_new(:,1) = X_ch5_seq_new(:,1);
% 
% for i = 2:size(X_ch5_seq_new,2)    
%     temp_mat = [X_ind_ch5_seq_new X_ch5_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch5_seq_new = temp_mat;
%         X_index_ch5_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch5_seq_new = (X_ind_ch5_seq_new);

%

% LDA_fet_ch1_cf = [5 12 15 27];
% LDA_fet_ch2_cf = [8 9 13 14 20];
% LDA_fet_ch3_cf = [7 9 10 13];
% LDA_fet_ch4_cf = [8 12 15 16];
% LDA_fet_ch5_cf = [4 8 10 15];
% 
% LDA_fet_ch1_fs = [1 3 4 5 6 8 9 10 11 12 13 15 16 20 21 24 25 27]; 
% LDA_fet_ch2_fs = [1 3 5 7 8 9 10 11 12 13 14 20 25 26];
% LDA_fet_ch3_fs = [4 5 7 8 9 10 13 14];
% LDA_fet_ch4_fs = [1 3 5 7 8 12 13 14 15 16 26];
% LDA_fet_ch5_fs = [3 4 5 8 10 12 14 15 26];

LDA_fet_ch1_cf = [5 12 15 16 28];
LDA_fet_ch2_cf = [8 9 13 14 21];
LDA_fet_ch3_cf = [7 9 10 13 15];
LDA_fet_ch4_cf = [8 12 15 16 17];
LDA_fet_ch5_cf = [4 8 10 15 16];

LDA_fet_ch1_fs = [1 3 4 5 6 8 9 10 11 12 13 15 16 17 21 22 25 26 28]; 
LDA_fet_ch2_fs = [1 3 5 7 8 9 10 11 12 13 14 15 21 26 27];
LDA_fet_ch3_fs = [4 5 7 8 9 10 13 14 15];
LDA_fet_ch4_fs = [1 3 5 7 8 12 13 14 15 16 17 27 28];
LDA_fet_ch5_fs = [3 4 5 8 10 12 14 15 16 27];

rng(8000,'twister');

obs_train_ch1 = [obs_ch1_old ; obs_ch1_new(1:end-size(X_ch1_seq_new,1),:)];
grp_train_ch1 = [grp_ch1_old ; grp_ch1_new];
obs_test_ch1 = obs_ch1_new(end-size(X_ch1_seq_new,1)+1:end,:);

obs_train_ch2 = [obs_ch2_old ; obs_ch2_new(1:end-size(X_ch2_seq_new,1),:)];
grp_train_ch2 = [grp_ch2_old ; grp_ch2_new];
obs_test_ch2 = obs_ch2_new(end-size(X_ch2_seq_new,1)+1:end,:);

obs_train_ch3 = [obs_ch3_old ; obs_ch3_new(1:end-size(X_ch3_seq_new,1),:)];
grp_train_ch3 = [grp_ch3_old ; grp_ch3_new];
obs_test_ch3 = obs_ch3_new(end-size(X_ch3_seq_new,1)+1:end,:);

obs_train_ch4 = [obs_ch4_old ; obs_ch4_new(1:end-size(X_ch4_seq_new,1),:)];
grp_train_ch4 = [grp_ch4_old ; grp_ch4_new];
obs_test_ch4 = obs_ch4_new(end-size(X_ch4_seq_new,1)+1:end,:);

obs_train_ch5 = [obs_ch5_old ; obs_ch5_new(1:end-size(X_ch5_seq_new,1),:)];
grp_train_ch5 = [grp_ch5_old ; grp_ch5_new];
obs_test_ch5 = obs_ch5_new(end-size(X_ch5_seq_new,1)+1:end,:);

md1_CH1 = fitcdiscr(obs_train_ch1(:,LDA_fet_ch1_cf),grp_train_ch1,'DiscrimType','linear');
[label_ch1,NegLoss, PBScore] = predict(md1_CH1,obs_test_ch1(:,LDA_fet_ch1_cf));
% accuracy_ch1 = (sum((grp_test_ch1-label_ch1) == 0)/length(grp_test_ch1))*100;

md1_CH2 = fitcdiscr(obs_train_ch2(:,LDA_fet_ch2_cf),grp_train_ch2,'DiscrimType','linear');
[label_ch2,NegLoss, PBScore] = predict(md1_CH2,obs_test_ch2(:,LDA_fet_ch2_cf));
% accuracy_ch2 = (sum((grp_test_ch2-label_ch2) == 0)/length(grp_test_ch2))*100;

md1_CH3 = fitcdiscr(obs_train_ch3(:,LDA_fet_ch3_cf),grp_train_ch3,'DiscrimType','linear');
[label_ch3,NegLoss, PBScore] = predict(md1_CH3,obs_test_ch3(:,LDA_fet_ch3_cf));
% accuracy_ch3 = (sum((grp_test_ch3-label_ch3) == 0)/length(grp_test_ch3))*100;

md1_CH4 = fitcdiscr(obs_train_ch4(:,LDA_fet_ch4_cf),grp_train_ch4,'DiscrimType','linear');
[label_ch4,NegLoss, PBScore] = predict(md1_CH4,obs_test_ch4(:,LDA_fet_ch4_cf));
% accuracy_ch4 = (sum((grp_test_ch4-label_ch4) == 0)/length(grp_test_ch4))*100;

md1_CH5 = fitcdiscr(obs_train_ch5(:,LDA_fet_ch5_cf),grp_train_ch5,'DiscrimType','linear');
[label_ch5,NegLoss, PBScore] = predict(md1_CH5,obs_test_ch5(:,LDA_fet_ch5_cf));
% accuracy_ch5 = (sum((grp_test_ch5-label_ch5) == 0)/length(grp_test_ch5))*100;

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

% accuracy_sep_cf = (sum((grp_test_ch1-label_sep) == 0)/length(grp_test_ch1))*100;

md1_CH1_fs = fitcdiscr(obs_train_ch1(:,LDA_fet_ch1_fs),grp_train_ch1,'DiscrimType','linear');
[label_ch1_fs,NegLoss, PBScore] = predict(md1_CH1_fs,obs_test_ch1(:,LDA_fet_ch1_fs));
% accuracy_ch1_fs = (sum((grp_test_ch1-label_ch1_fs) == 0)/length(grp_test_ch1))*100;

md1_CH2_fs = fitcdiscr(obs_train_ch2(:,LDA_fet_ch2_fs),grp_train_ch2,'DiscrimType','linear');
[label_ch2_fs,NegLoss, PBScore] = predict(md1_CH2_fs,obs_test_ch2(:,LDA_fet_ch2_fs));
% accuracy_ch2_fs = (sum((grp_test_ch2-label_ch2_fs) == 0)/length(grp_test_ch2))*100;

md1_CH3_fs = fitcdiscr(obs_train_ch3(:,LDA_fet_ch3_fs),grp_train_ch3,'DiscrimType','linear');
[label_ch3_fs,NegLoss, PBScore] = predict(md1_CH3_fs,obs_test_ch3(:,LDA_fet_ch3_fs));
% accuracy_ch3_fs = (sum((grp_test_ch3-label_ch3_fs) == 0)/length(grp_test_ch3))*100;

md1_CH4_fs = fitcdiscr(obs_train_ch4(:,LDA_fet_ch4_fs),grp_train_ch4,'DiscrimType','linear');
[label_ch4_fs,NegLoss, PBScore] = predict(md1_CH4_fs,obs_test_ch4(:,LDA_fet_ch4_fs));
% accuracy_ch4_fs = (sum((grp_test_ch4-label_ch4_fs) == 0)/length(grp_test_ch4))*100;

md1_CH5_fs = fitcdiscr(obs_train_ch5(:,LDA_fet_ch5_fs),grp_train_ch5,'DiscrimType','linear');
[label_ch5_fs,NegLoss, PBScore] = predict(md1_CH5_fs,obs_test_ch5(:,LDA_fet_ch5_fs));
% accuracy_ch5_fs = (sum((grp_test_ch5-label_ch5_fs) == 0)/length(grp_test_ch5))*100;


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

% accuracy_sep_fs = (sum((grp_test_ch1-label_sep_fs) == 0)/length(grp_test_ch1))*100;
% 
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_sep_cf'), 'label_sep');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_sep_fs'), 'label_sep_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_sep_cf.xlsx'), label_sep)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\LDA_label_sep_fs.xlsx'), label_sep_fs)


%% Load my data - QDA CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

% channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_1_CC_new = X_1_CC_new_temp.feature_matrix_ch1;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch2;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch3;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch4;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch5;

X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_2_CC_new = X_2_CC_new_temp.feature_matrix_ch1;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch2;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch3;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch4;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch5;

X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_3_CC_new = X_3_CC_new_temp.feature_matrix_ch1;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch2;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch3;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch4;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch5;

X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_4_CC_new = X_4_CC_new_temp.feature_matrix_ch1;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch2;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch3;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch4;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch5;

X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_5_CC_new = X_5_CC_new_temp.feature_matrix_ch1;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch2;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch3;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch4;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch5;

X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_6_CC_new = X_6_CC_new_temp.feature_matrix_ch1;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch2;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch3;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch4;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch5;

X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_7_CC_new = X_7_CC_new_temp.feature_matrix_ch1;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch2;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch3;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch4;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch5;

X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_8_CC_new = X_8_CC_new_temp.feature_matrix_ch1;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch2;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch3;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch4;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch5;

X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_9_CC_new = X_9_CC_new_temp.feature_matrix_ch1;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch2;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch3;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch4;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch5;

X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');
X_10_CC_new = X_10_CC_new_temp.feature_matrix_ch1;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch2;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch3;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch4;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch5;

% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC = X_seq_CC_temp.feature_matrix_ch1;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch2;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch3;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch4;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch5;

X_seq_new = X_seq_CC;

X_CC_new = [X_1_CC_new(:,:); X_2_CC_new(:,:); X_3_CC_new(:,:); X_4_CC_new(:,:); X_5_CC_new(:,:); X_6_CC_new(:,:); X_7_CC_new(:,:); X_8_CC_new(:,:); X_9_CC_new(:,:); X_10_CC_new(:,:);X_seq_new];
% X_CC_new = [X_CC_new(:,1:14) X_CC_new(:,16:end)];
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

X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_1_CC = X_1_CC_temp.feature_matrix_ch1;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch2;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch3;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch4;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch5;

X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_2_CC = X_2_CC_temp.feature_matrix_ch1;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch2;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch3;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch4;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch5;

X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_3_CC = X_3_CC_temp.feature_matrix_ch1;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch2;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch3;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch4;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch5;

X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_4_CC = X_4_CC_temp.feature_matrix_ch1;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch2;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch3;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch4;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch5;

X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_5_CC = X_5_CC_temp.feature_matrix_ch1;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch2;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch3;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch4;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch5;

X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_6_CC = X_6_CC_temp.feature_matrix_ch1;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch2;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch3;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch4;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch5;

X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_7_CC = X_7_CC_temp.feature_matrix_ch1;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch2;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch3;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch4;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch5;

X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_8_CC = X_8_CC_temp.feature_matrix_ch1;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch2;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch3;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch4;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch5;

X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_9_CC = X_9_CC_temp.feature_matrix_ch1;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch2;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch3;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch4;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch5;

X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');
X_10_CC = X_10_CC_temp.feature_matrix_ch1;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch2;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch3;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch4;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch5;

X_CC_old = [X_1_CC(:,:);X_2_CC(:,:);X_3_CC(:,:);X_4_CC(:,:);X_5_CC(:,:);X_6_CC(:,:);X_7_CC(:,:);X_8_CC(:,:);X_9_CC(:,:);X_10_CC(:,:)];
% X_CC_old = [X_CC_old(:,1:14) X_CC_old(:,16:end)];
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

class_length_old = [size(X_1_CC,1) size(X_2_CC,1) size(X_3_CC,1) size(X_4_CC,1) size(X_5_CC,1) size(X_6_CC,1) size(X_7_CC,1) size(X_8_CC,1) size(X_9_CC,1) size(X_10_CC,1)];

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

% 
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];
% 
% X_seq_new = (X_seq_new - mean(X_seq_new)) ./ std(X_seq_new);
% 
% X_seq_new = [X_seq_new(:,1:14), X_seq_new(:,16:end)];
% 
% X_index_seq_new(1) = 1;
% X_ind_seq_new = [];
% X_ind_seq_new(:,1) = X_seq_new(:,1);
% 
% for i = 2:size(X_seq_new,2)    
%     temp_mat = [X_ind_seq_new X_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_seq_new = temp_mat;
%         X_index_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end


% QDA_CC_fet_cf = [3 8 9 13 15]; 
% QDA_CC_fet_fs = [1 8 9 11 13 14 15 19 27]; 

QDA_CC_fet_cf = [3 8 9 13 16]; 
QDA_CC_fet_fs = [1 8 9 11 13 14 16 20 28]; 

rng(8000,'twister');

obs_train = [obs_CC_old ; obs_CC_new(1:end-size(X_seq_new,1),:)];
grp_train = [grp_CC_old ; grp_CC_new];
obs_test = obs_CC_new(end-size(X_seq_new,1)+1:end,:);

md1_CC_cf = fitcdiscr(obs_train(:,QDA_CC_fet_cf),grp_train,'DiscrimType','pseudoQuadratic');
[label_cf,NegLoss, PBScore] = predict(md1_CC_cf,obs_test(:,QDA_CC_fet_cf));

% accuracy_CC_cf = (sum((grp_test-label_cf) == 0)/length(grp_test))*100;

md1_CC_fs = fitcdiscr(obs_train(:,QDA_CC_fet_fs),grp_train,'DiscrimType','pseudoQuadratic');
[label_fs,NegLoss, PBScore] = predict(md1_CC_fs,obs_test(:,QDA_CC_fet_fs));

% accuracy_CC_fs = (sum((grp_test-label_fs) == 0)/length(grp_test))*100;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_CC_cf'), 'label_cf');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_CC_fs'), 'label_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_CC_cf.xlsx'), label_cf)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_CC_fs.xlsx'), label_fs)


%% Load my data - QDA sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_2_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_3_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_4_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_5_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_6_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_7_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_8_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_9_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_10_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');

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

% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC_ch1 = X_seq_CC_temp.feature_matrix_ch1;

X_ch1_seq_new = X_seq_CC_ch1;

X_ch1_new = [X_1_ch1_new(:,:);X_2_ch1_new(:,:);X_3_ch1_new(:,:);X_4_ch1_new(:,:);X_5_ch1_new(:,:);X_6_ch1_new(:,:);X_7_ch1_new(:,:);X_8_ch1_new(:,:);X_9_ch1_new(:,:);X_10_ch1_new(:,:);X_ch1_seq_new];

% X_ch1_new = [X_ch1_new(:,1:14) X_ch1_new(:,16:end)];

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

X_1_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_2_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_3_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_4_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_5_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_6_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_7_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_8_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_9_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_10_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');

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

% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC_ch2 = X_seq_CC_temp.feature_matrix_ch2;

X_ch2_seq_new = X_seq_CC_ch2;

X_ch2_new = [X_1_ch2_new(:,:);X_2_ch2_new(:,:);X_3_ch2_new(:,:);X_4_ch2_new(:,:);X_5_ch2_new(:,:);X_6_ch2_new(:,:);X_7_ch2_new(:,:);X_8_ch2_new(:,:);X_9_ch2_new(:,:);X_10_ch2_new(:,:);X_ch2_seq_new];

% X_ch2_new = [X_ch2_new(:,1:14) X_ch2_new(:,16:end)];

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

X_1_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_2_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_3_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_4_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_5_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_6_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_7_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_8_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_9_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_10_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');

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

% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC_ch3 = X_seq_CC_temp.feature_matrix_ch3;

X_ch3_seq_new = X_seq_CC_ch3;

X_ch3_new = [X_1_ch3_new(:,:);X_2_ch3_new(:,:);X_3_ch3_new(:,:);X_4_ch3_new(:,:);X_5_ch3_new(:,:);X_6_ch3_new(:,:);X_7_ch3_new(:,:);X_8_ch3_new(:,:);X_9_ch3_new(:,:);X_10_ch3_new(:,:);X_ch3_seq_new];

% X_ch3_new = [X_ch3_new(:,1:14) X_ch3_new(:,16:end)];

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

X_1_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_2_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_3_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_4_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_5_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_6_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_7_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_8_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_9_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_10_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');

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

% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC_ch4 = X_seq_CC_temp.feature_matrix_ch4;

X_ch4_seq_new = X_seq_CC_ch4;

X_ch4_new = [X_1_ch4_new(:,:);X_2_ch4_new(:,:);X_3_ch4_new(:,:);X_4_ch4_new(:,:);X_5_ch4_new(:,:);X_6_ch4_new(:,:);X_7_ch4_new(:,:);X_8_ch4_new(:,:);X_9_ch4_new(:,:);X_10_ch4_new(:,:);X_ch4_seq_new];

% X_ch4_new = [X_ch4_new(:,1:14) X_ch4_new(:,16:end)];

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

X_1_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_2_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_3_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_4_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_5_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_6_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_7_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_8_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_9_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_10_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');

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

% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC_ch5 = X_seq_CC_temp.feature_matrix_ch5;

X_ch5_seq_new = X_seq_CC_ch5;

X_ch5_new = [X_1_ch5_new(:,:);X_2_ch5_new(:,:);X_3_ch5_new(:,:);X_4_ch5_new(:,:);X_5_ch5_new(:,:);X_6_ch5_new(:,:);X_7_ch5_new(:,:);X_8_ch5_new(:,:);X_9_ch5_new(:,:);X_10_ch5_new(:,:);X_ch5_seq_new];

% X_ch5_new = [X_ch5_new(:,1:14) X_ch5_new(:,16:end)];

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
X_1_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_2_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_3_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_4_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_5_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_6_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_7_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_8_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_9_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_10_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');

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
% X_ch1_old = [X_ch1_old(:,1:14) X_ch1_old(:,16:end)];
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

class_length_old = [size(X_1_ch1_old,1) size(X_2_ch1_old,1) size(X_3_ch1_old,1) size(X_4_ch1_old,1) size(X_5_ch1_old,1) size(X_6_ch1_old,1) size(X_7_ch1_old,1) size(X_8_ch1_old,1) size(X_9_ch1_old,1) size(X_10_ch1_old,1)];

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

X_1_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_2_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_3_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_4_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_5_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_6_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_7_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_8_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_9_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_10_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');

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
% X_ch2_old = [X_ch2_old(:,1:14) X_ch2_old(:,16:end)];
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

class_length_old = [size(X_1_ch2_old,1) size(X_2_ch2_old,1) size(X_3_ch2_old,1) size(X_4_ch2_old,1) size(X_5_ch2_old,1) size(X_6_ch2_old,1) size(X_7_ch2_old,1) size(X_8_ch2_old,1) size(X_9_ch2_old,1) size(X_10_ch2_old,1)];

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

X_1_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_2_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_3_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_4_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_5_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_6_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_7_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_8_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_9_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_10_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');

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
% X_ch3_old = [X_ch3_old(:,1:14) X_ch3_old(:,16:end)];
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

class_length_old = [size(X_1_ch3_old,1) size(X_2_ch3_old,1) size(X_3_ch3_old,1) size(X_4_ch3_old,1) size(X_5_ch3_old,1) size(X_6_ch3_old,1) size(X_7_ch3_old,1) size(X_8_ch3_old,1) size(X_9_ch3_old,1) size(X_10_ch3_old,1)];

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

X_1_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_2_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_3_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_4_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_5_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_6_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_7_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_8_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_9_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_10_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');

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
% X_ch4_old = [X_ch4_old(:,1:14) X_ch4_old(:,16:end)];
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

class_length_old = [size(X_1_ch4_old,1) size(X_2_ch4_old,1) size(X_3_ch4_old,1) size(X_4_ch4_old,1) size(X_5_ch4_old,1) size(X_6_ch4_old,1) size(X_7_ch4_old,1) size(X_8_ch4_old,1) size(X_9_ch4_old,1) size(X_10_ch4_old,1)];

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

X_1_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_2_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_3_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_4_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_5_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_6_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_7_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_8_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_9_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_10_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');

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
% X_ch5_old = [X_ch5_old(:,1:14) X_ch5_old(:,16:end)];
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

class_length_old = [size(X_1_ch5_old,1) size(X_2_ch5_old,1) size(X_3_ch5_old,1) size(X_4_ch5_old,1) size(X_5_ch5_old,1) size(X_6_ch5_old,1) size(X_7_ch5_old,1) size(X_8_ch5_old,1) size(X_9_ch5_old,1) size(X_10_ch5_old,1)];

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

% %
% 
% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];
% 
% X_ch1_seq_new = (X_ch1_seq_new - mean(X_ch1_seq_new)) ./ std(X_ch1_seq_new);
% X_ch1_seq_new = [X_ch1_seq_new(:,1:14), X_ch1_seq_new(:,16:end)];
% 
% X_index_ch1_seq_new(1) = 1;
% X_ind_ch1_seq_new = [];
% X_ind_ch1_seq_new(:,1) = X_ch1_seq_new(:,1);
% 
% for i = 2:size(X_ch1_seq_new,2)    
%     temp_mat = [X_ind_ch1_seq_new X_ch1_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch1_seq_new = temp_mat;
%         X_index_ch1_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch1_seq_new = (X_ind_ch1_seq_new);
% 
% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];
% 
% X_ch2_seq_new = (X_ch2_seq_new - mean(X_ch2_seq_new)) ./ std(X_ch2_seq_new);
% X_ch2_seq_new = [X_ch2_seq_new(:,1:14), X_ch2_seq_new(:,16:end)];
% 
% X_index_ch2_seq_new(1) = 1;
% X_ind_ch2_seq_new = [];
% X_ind_ch2_seq_new(:,1) = X_ch2_seq_new(:,1);
% 
% for i = 2:size(X_ch2_seq_new,2)    
%     temp_mat = [X_ind_ch2_seq_new X_ch2_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch2_seq_new = temp_mat;
%         X_index_ch2_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch2_seq_new = (X_ind_ch2_seq_new);
% 
% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];
% 
% X_ch3_seq_new = (X_ch3_seq_new - mean(X_ch3_seq_new)) ./ std(X_ch3_seq_new);
% X_ch3_seq_new = [X_ch3_seq_new(:,1:14), X_ch3_seq_new(:,16:end)];
% 
% X_index_ch3_seq_new(1) = 1;
% X_ind_ch3_seq_new = [];
% X_ind_ch3_seq_new(:,1) = X_ch3_seq_new(:,1);
% 
% for i = 2:size(X_ch3_seq_new,2)    
%     temp_mat = [X_ind_ch3_seq_new X_ch3_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch3_seq_new = temp_mat;
%         X_index_ch3_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch3_seq_new = (X_ind_ch3_seq_new);
% 
% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];
% 
% X_ch4_seq_new = (X_ch4_seq_new - mean(X_ch4_seq_new)) ./ std(X_ch4_seq_new);
% X_ch4_seq_new = [X_ch4_seq_new(:,1:14), X_ch4_seq_new(:,16:end)];
% 
% X_index_ch4_seq_new(1) = 1;
% X_ind_ch4_seq_new = [];
% X_ind_ch4_seq_new(:,1) = X_ch4_seq_new(:,1);
% 
% for i = 2:size(X_ch4_seq_new,2)    
%     temp_mat = [X_ind_ch4_seq_new X_ch4_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch4_seq_new = temp_mat;
%         X_index_ch4_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch4_seq_new = (X_ind_ch4_seq_new);
% 
% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];
% 
% X_ch5_seq_new = (X_ch5_seq_new - mean(X_ch5_seq_new)) ./ std(X_ch5_seq_new);
% X_ch5_seq_new = [X_ch5_seq_new(:,1:14), X_ch5_seq_new(:,16:end)];
% 
% X_index_ch5_seq_new(1) = 1;
% X_ind_ch5_seq_new = [];
% X_ind_ch5_seq_new(:,1) = X_ch5_seq_new(:,1);
% 
% for i = 2:size(X_ch5_seq_new,2)    
%     temp_mat = [X_ind_ch5_seq_new X_ch5_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch5_seq_new = temp_mat;
%         X_index_ch5_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch5_seq_new = (X_ind_ch5_seq_new);

%

% QDA_fet_ch1_cf = [8 12 14 15 16];
% QDA_fet_ch2_cf = [1 8 9 13];
% QDA_fet_ch3_cf = [1 7 9 10 13];
% QDA_fet_ch4_cf = [1 7 8 10 12];
% QDA_fet_ch5_cf = [4 7 8 12];
% 
% QDA_fet_ch1_fs = [8 9 12 14 15 16]; 
% QDA_fet_ch2_fs = [1 8 9 13 14 15];
% QDA_fet_ch3_fs = [4 8 9 10 12 13 14 15 19 25];
% QDA_fet_ch4_fs = [5 8 9 10 14 15 16 17 20];
% QDA_fet_ch5_fs = [4 5 7 8 10 11 12 14 15];

QDA_fet_ch1_cf = [8 12 14 16 17];
QDA_fet_ch2_cf = [1 8 9 13];
QDA_fet_ch3_cf = [1 7 9 10 13];
QDA_fet_ch4_cf = [1 7 8 10 12];
QDA_fet_ch5_cf = [4 7 8 12];

QDA_fet_ch1_fs = [8 9 12 14 15 16 17]; 
QDA_fet_ch2_fs = [1 8 9 13 14 15 16];
QDA_fet_ch3_fs = [4 8 9 10 12 13 14 16 20 26];
QDA_fet_ch4_fs = [5 8 9 10 14 16 17 18 21];
QDA_fet_ch5_fs = [4 5 7 8 10 11 12 14 16];

rng(8000,'twister');

obs_train_ch1 = [obs_ch1_old ; obs_ch1_new(1:end-size(X_ch1_seq_new,1),:)];
grp_train_ch1 = [grp_ch1_old ; grp_ch1_new];
obs_test_ch1 = obs_ch1_new(end-size(X_ch1_seq_new,1)+1:end,:);

obs_train_ch2 = [obs_ch2_old ; obs_ch2_new(1:end-size(X_ch2_seq_new,1),:)];
grp_train_ch2 = [grp_ch2_old ; grp_ch2_new];
obs_test_ch2 = obs_ch2_new(end-size(X_ch2_seq_new,1)+1:end,:);

obs_train_ch3 = [obs_ch3_old ; obs_ch3_new(1:end-size(X_ch3_seq_new,1),:)];
grp_train_ch3 = [grp_ch3_old ; grp_ch3_new];
obs_test_ch3 = obs_ch3_new(end-size(X_ch3_seq_new,1)+1:end,:);

obs_train_ch4 = [obs_ch4_old ; obs_ch4_new(1:end-size(X_ch4_seq_new,1),:)];
grp_train_ch4 = [grp_ch4_old ; grp_ch4_new];
obs_test_ch4 = obs_ch4_new(end-size(X_ch4_seq_new,1)+1:end,:);

obs_train_ch5 = [obs_ch5_old ; obs_ch5_new(1:end-size(X_ch5_seq_new,1),:)];
grp_train_ch5 = [grp_ch5_old ; grp_ch5_new];
obs_test_ch5 = obs_ch5_new(end-size(X_ch5_seq_new,1)+1:end,:);


md1_CH1 = fitcdiscr(obs_train_ch1(:,QDA_fet_ch1_cf),grp_train_ch1,'DiscrimType','pseudoQuadratic');
[label_ch1,NegLoss, PBScore] = predict(md1_CH1,obs_test_ch1(:,QDA_fet_ch1_cf));
% accuracy_ch1 = (sum((grp_test_ch1-label_ch1) == 0)/length(grp_test_ch1))*100;

md1_CH2 = fitcdiscr(obs_train_ch2(:,QDA_fet_ch2_cf),grp_train_ch2,'DiscrimType','pseudoQuadratic');
[label_ch2,NegLoss, PBScore] = predict(md1_CH2,obs_test_ch2(:,QDA_fet_ch2_cf));
% accuracy_ch2 = (sum((grp_test_ch2-label_ch2) == 0)/length(grp_test_ch2))*100;

md1_CH3 = fitcdiscr(obs_train_ch3(:,QDA_fet_ch3_cf),grp_train_ch3,'DiscrimType','pseudoQuadratic');
[label_ch3,NegLoss, PBScore] = predict(md1_CH3,obs_test_ch3(:,QDA_fet_ch3_cf));
% accuracy_ch3 = (sum((grp_test_ch3-label_ch3) == 0)/length(grp_test_ch3))*100;

md1_CH4 = fitcdiscr(obs_train_ch4(:,QDA_fet_ch4_cf),grp_train_ch4,'DiscrimType','pseudoQuadratic');
[label_ch4,NegLoss, PBScore] = predict(md1_CH4,obs_test_ch4(:,QDA_fet_ch4_cf));
% accuracy_ch4 = (sum((grp_test_ch4-label_ch4) == 0)/length(grp_test_ch4))*100;

md1_CH5 = fitcdiscr(obs_train_ch5(:,QDA_fet_ch5_cf),grp_train_ch5,'DiscrimType','pseudoQuadratic');
[label_ch5,NegLoss, PBScore] = predict(md1_CH5,obs_test_ch5(:,QDA_fet_ch5_cf));
% accuracy_ch5 = (sum((grp_test_ch5-label_ch5) == 0)/length(grp_test_ch5))*100;

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

% accuracy_sep_cf = (sum((grp_test_ch1-label_sep) == 0)/length(grp_test_ch1))*100;

md1_CH1_fs = fitcdiscr(obs_train_ch1(:,QDA_fet_ch1_fs),grp_train_ch1,'DiscrimType','pseudoQuadratic');
[label_ch1_fs,NegLoss, PBScore] = predict(md1_CH1_fs,obs_test_ch1(:,QDA_fet_ch1_fs));
% accuracy_ch1_fs = (sum((grp_test_ch1-label_ch1_fs) == 0)/length(grp_test_ch1))*100;

md1_CH2_fs = fitcdiscr(obs_train_ch2(:,QDA_fet_ch2_fs),grp_train_ch2,'DiscrimType','pseudoQuadratic');
[label_ch2_fs,NegLoss, PBScore] = predict(md1_CH2_fs,obs_test_ch2(:,QDA_fet_ch2_fs));
% accuracy_ch2_fs = (sum((grp_test_ch2-label_ch2_fs) == 0)/length(grp_test_ch2))*100;

md1_CH3_fs = fitcdiscr(obs_train_ch3(:,QDA_fet_ch3_fs),grp_train_ch3,'DiscrimType','pseudoQuadratic');
[label_ch3_fs,NegLoss, PBScore] = predict(md1_CH3_fs,obs_test_ch3(:,QDA_fet_ch3_fs));
% accuracy_ch3_fs = (sum((grp_test_ch3-label_ch3_fs) == 0)/length(grp_test_ch3))*100;

md1_CH4_fs = fitcdiscr(obs_train_ch4(:,QDA_fet_ch4_fs),grp_train_ch4,'DiscrimType','pseudoQuadratic');
[label_ch4_fs,NegLoss, PBScore] = predict(md1_CH4_fs,obs_test_ch4(:,QDA_fet_ch4_fs));
% accuracy_ch4_fs = (sum((grp_test_ch4-label_ch4_fs) == 0)/length(grp_test_ch4))*100;

md1_CH5_fs = fitcdiscr(obs_train_ch5(:,QDA_fet_ch5_fs),grp_train_ch5,'DiscrimType','pseudoQuadratic');
[label_ch5_fs,NegLoss, PBScore] = predict(md1_CH5_fs,obs_test_ch5(:,QDA_fet_ch5_fs));
% accuracy_ch5_fs = (sum((grp_test_ch5-label_ch5_fs) == 0)/length(grp_test_ch5))*100;


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

% accuracy_sep_fs = (sum((grp_test_ch1-label_sep_fs) == 0)/length(grp_test_ch1))*100;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_sep_cf'), 'label_sep');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_sep_fs'), 'label_sep_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_sep_cf.xlsx'), label_sep)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\QDA_label_sep_fs.xlsx'), label_sep_fs)


%% Load my data - SVM CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

% channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_1_CC_new = X_1_CC_new_temp.feature_matrix_ch1;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch2;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch3;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch4;
X_1_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_1_CC_new = X_1_CC_new + X_1_CC_new_temp.feature_matrix_ch5;

X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_2_CC_new = X_2_CC_new_temp.feature_matrix_ch1;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch2;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch3;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch4;
X_2_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_2_CC_new = X_2_CC_new + X_2_CC_new_temp.feature_matrix_ch5;

X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_3_CC_new = X_3_CC_new_temp.feature_matrix_ch1;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch2;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch3;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch4;
X_3_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_3_CC_new = X_3_CC_new + X_3_CC_new_temp.feature_matrix_ch5;

X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_4_CC_new = X_4_CC_new_temp.feature_matrix_ch1;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch2;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch3;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch4;
X_4_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_4_CC_new = X_4_CC_new + X_4_CC_new_temp.feature_matrix_ch5;

X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_5_CC_new = X_5_CC_new_temp.feature_matrix_ch1;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch2;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch3;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch4;
X_5_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_5_CC_new = X_5_CC_new + X_5_CC_new_temp.feature_matrix_ch5;

X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_6_CC_new = X_6_CC_new_temp.feature_matrix_ch1;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch2;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch3;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch4;
X_6_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_6_CC_new = X_6_CC_new + X_6_CC_new_temp.feature_matrix_ch5;

X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_7_CC_new = X_7_CC_new_temp.feature_matrix_ch1;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch2;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch3;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch4;
X_7_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_7_CC_new = X_7_CC_new + X_7_CC_new_temp.feature_matrix_ch5;

X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_8_CC_new = X_8_CC_new_temp.feature_matrix_ch1;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch2;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch3;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch4;
X_8_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_8_CC_new = X_8_CC_new + X_8_CC_new_temp.feature_matrix_ch5;

X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_9_CC_new = X_9_CC_new_temp.feature_matrix_ch1;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch2;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch3;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch4;
X_9_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_9_CC_new = X_9_CC_new + X_9_CC_new_temp.feature_matrix_ch5;

X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');
X_10_CC_new = X_10_CC_new_temp.feature_matrix_ch1;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch2;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch3;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch4;
X_10_CC_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');
X_10_CC_new = X_10_CC_new + X_10_CC_new_temp.feature_matrix_ch5;

% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC = X_seq_CC_temp.feature_matrix_ch1;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch2;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch3;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch4;
X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC = X_seq_CC + X_seq_CC_temp.feature_matrix_ch5;

X_seq_new = X_seq_CC;

X_CC_new = [X_1_CC_new(:,:); X_2_CC_new(:,:); X_3_CC_new(:,:); X_4_CC_new(:,:); X_5_CC_new(:,:); X_6_CC_new(:,:); X_7_CC_new(:,:); X_8_CC_new(:,:); X_9_CC_new(:,:); X_10_CC_new(:,:);X_seq_new];
% X_CC_new = [X_CC_new(:,1:14) X_CC_new(:,16:end)];
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

X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_1_CC = X_1_CC_temp.feature_matrix_ch1;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch2;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch3;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch4;
X_1_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_1_CC = X_1_CC + X_1_CC_temp.feature_matrix_ch5;

X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_2_CC = X_2_CC_temp.feature_matrix_ch1;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch2;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch3;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch4;
X_2_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_2_CC = X_2_CC + X_2_CC_temp.feature_matrix_ch5;

X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_3_CC = X_3_CC_temp.feature_matrix_ch1;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch2;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch3;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch4;
X_3_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_3_CC = X_3_CC + X_3_CC_temp.feature_matrix_ch5;

X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_4_CC = X_4_CC_temp.feature_matrix_ch1;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch2;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch3;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch4;
X_4_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_4_CC = X_4_CC + X_4_CC_temp.feature_matrix_ch5;

X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_5_CC = X_5_CC_temp.feature_matrix_ch1;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch2;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch3;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch4;
X_5_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_5_CC = X_5_CC + X_5_CC_temp.feature_matrix_ch5;

X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_6_CC = X_6_CC_temp.feature_matrix_ch1;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch2;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch3;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch4;
X_6_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_6_CC = X_6_CC + X_6_CC_temp.feature_matrix_ch5;

X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_7_CC = X_7_CC_temp.feature_matrix_ch1;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch2;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch3;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch4;
X_7_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_7_CC = X_7_CC + X_7_CC_temp.feature_matrix_ch5;

X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_8_CC = X_8_CC_temp.feature_matrix_ch1;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch2;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch3;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch4;
X_8_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_8_CC = X_8_CC + X_8_CC_temp.feature_matrix_ch5;

X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_9_CC = X_9_CC_temp.feature_matrix_ch1;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch2;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch3;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch4;
X_9_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_9_CC = X_9_CC + X_9_CC_temp.feature_matrix_ch5;

X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');
X_10_CC = X_10_CC_temp.feature_matrix_ch1;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch2;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch3;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch4;
X_10_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');
X_10_CC = X_10_CC + X_10_CC_temp.feature_matrix_ch5;

X_CC_old = [X_1_CC(:,:);X_2_CC(:,:);X_3_CC(:,:);X_4_CC(:,:);X_5_CC(:,:);X_6_CC(:,:);X_7_CC(:,:);X_8_CC(:,:);X_9_CC(:,:);X_10_CC(:,:)];
% X_CC_old = [X_CC_old(:,1:14) X_CC_old(:,16:end)];
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

class_length_old = [size(X_1_CC,1) size(X_2_CC,1) size(X_3_CC,1) size(X_4_CC,1) size(X_5_CC,1) size(X_6_CC,1) size(X_7_CC,1) size(X_8_CC,1) size(X_9_CC,1) size(X_10_CC,1)];

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

% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_1_seq_new = X_1_seq_new_temp.feature_matrix_ch1;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch2;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch3;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch4;
% X_1_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_1_seq_new = X_1_seq_new + X_1_seq_new_temp.feature_matrix_ch5;
% 
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_2_seq_new = X_2_seq_new_temp.feature_matrix_ch1;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch2;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch3;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch4;
% X_2_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_2_seq_new = X_2_seq_new + X_2_seq_new_temp.feature_matrix_ch5;
% 
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_3_seq_new = X_3_seq_new_temp.feature_matrix_ch1;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch2;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch3;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch4;
% X_3_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_3_seq_new = X_3_seq_new + X_3_seq_new_temp.feature_matrix_ch5;
% 
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_4_seq_new = X_4_seq_new_temp.feature_matrix_ch1;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch2;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch3;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch4;
% X_4_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_4_seq_new = X_4_seq_new + X_4_seq_new_temp.feature_matrix_ch5;
% 
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_5_seq_new = X_5_seq_new_temp.feature_matrix_ch1;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch2;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch3;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch4;
% X_5_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_5_seq_new = X_5_seq_new + X_5_seq_new_temp.feature_matrix_ch5;
% 
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_6_seq_new = X_6_seq_new_temp.feature_matrix_ch1;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch2;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch3;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch4;
% X_6_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_6_seq_new = X_6_seq_new + X_6_seq_new_temp.feature_matrix_ch5;
% 
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_7_seq_new = X_7_seq_new_temp.feature_matrix_ch1;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch2;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch3;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch4;
% X_7_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_7_seq_new = X_7_seq_new + X_7_seq_new_temp.feature_matrix_ch5;
% 
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_8_seq_new = X_8_seq_new_temp.feature_matrix_ch1;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch2;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch3;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch4;
% X_8_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_8_seq_new = X_8_seq_new + X_8_seq_new_temp.feature_matrix_ch5;
% 
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_9_seq_new = X_9_seq_new_temp.feature_matrix_ch1;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch2;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch3;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch4;
% X_9_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_9_seq_new = X_9_seq_new + X_9_seq_new_temp.feature_matrix_ch5;
% 
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% X_10_seq_new = X_10_seq_new_temp.feature_matrix_ch1;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch2;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch3;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch4;
% X_10_seq_new_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% X_10_seq_new = X_10_seq_new + X_10_seq_new_temp.feature_matrix_ch5;
% 
% X_seq_new = [X_1_seq_new(:,:); X_2_seq_new(:,:); X_3_seq_new(:,:); X_4_seq_new(:,:); X_5_seq_new(:,:); X_6_seq_new(:,:); X_7_seq_new(:,:); X_8_seq_new(:,:); X_9_seq_new(:,:); X_10_seq_new(:,:)];
% 
% X_seq_new = (X_seq_new - mean(X_seq_new)) ./ std(X_seq_new);
% 
% X_seq_new = [X_seq_new(:,1:14), X_seq_new(:,16:end)];
% 
% X_index_seq_new(1) = 1;
% X_ind_seq_new = [];
% X_ind_seq_new(:,1) = X_seq_new(:,1);
% 
% for i = 2:size(X_seq_new,2)    
%     temp_mat = [X_ind_seq_new X_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_seq_new = temp_mat;
%         X_index_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end

% SVM_CC_fet_cf = [4 5 8 14 15]; 
% SVM_CC_fet_fs = [3 4 5 7 8 9 10 13 14 15 16 17 27]; 

SVM_CC_fet_cf = [8 14 15 16 17]; %4 5 8 14 15
SVM_CC_fet_fs = [3 8 10 13 14 15 16 28]; %3 4 5 7 8 9 10 13 14 15 16 17 27 28

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

obs_train = [obs_CC_old ; obs_CC_new(1:end-size(X_seq_new,1),:)];
grp_train = [grp_CC_old ; grp_CC_new];
obs_test = obs_CC_new(end-size(X_seq_new,1)+1:end,:);

md1_CC_cf = fitcecoc(obs_train(:,SVM_CC_fet_cf),grp_train,'learners',t,'Coding','onevsall');
[label_cf,NegLoss, PBScore] = predict(md1_CC_cf,obs_test(:,SVM_CC_fet_cf));

% accuracy_CC_cf = (sum((grp_test-label_cf) == 0)/length(grp_test))*100;

md1_CC_fs = fitcecoc(obs_train(:,SVM_CC_fet_fs),grp_train,'learners',t,'Coding','onevsall');
[label_fs,NegLoss, PBScore] = predict(md1_CC_fs,obs_test(:,SVM_CC_fet_fs));

% accuracy_CC_fs = (sum((grp_test-label_fs) == 0)/length(grp_test))*100;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_CC_cf'), 'label_cf');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_CC_fs'), 'label_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_CC_cf.xlsx'), label_cf)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_CC_fs.xlsx'), label_fs)


%% Load my data - SVM sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch1_features.mat');
X_2_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch1_features.mat');
X_3_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch1_features.mat');
X_4_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch1_features.mat');
X_5_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch1_features.mat');
X_6_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch1_features.mat');
X_7_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch1_features.mat');
X_8_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch1_features.mat');
X_9_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch1_features.mat');
X_10_ch1_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch1_features.mat');

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

% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch1_features.mat');
X_seq_CC_ch1 = X_seq_CC_temp.feature_matrix_ch1;

X_ch1_seq_new = X_seq_CC_ch1;

X_ch1_new = [X_1_ch1_new(:,:);X_2_ch1_new(:,:);X_3_ch1_new(:,:);X_4_ch1_new(:,:);X_5_ch1_new(:,:);X_6_ch1_new(:,:);X_7_ch1_new(:,:);X_8_ch1_new(:,:);X_9_ch1_new(:,:);X_10_ch1_new(:,:);X_ch1_seq_new];

% X_ch1_new = [X_ch1_new(:,1:14) X_ch1_new(:,16:end)];

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

X_1_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch2_features.mat');
X_2_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch2_features.mat');
X_3_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch2_features.mat');
X_4_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch2_features.mat');
X_5_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch2_features.mat');
X_6_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch2_features.mat');
X_7_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch2_features.mat');
X_8_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch2_features.mat');
X_9_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch2_features.mat');
X_10_ch2_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch2_features.mat');

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

% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch2_features.mat');
X_seq_CC_ch2 = X_seq_CC_temp.feature_matrix_ch2;

X_ch2_seq_new = X_seq_CC_ch2;

X_ch2_new = [X_1_ch2_new(:,:);X_2_ch2_new(:,:);X_3_ch2_new(:,:);X_4_ch2_new(:,:);X_5_ch2_new(:,:);X_6_ch2_new(:,:);X_7_ch2_new(:,:);X_8_ch2_new(:,:);X_9_ch2_new(:,:);X_10_ch2_new(:,:);X_ch2_seq_new];

% X_ch2_new = [X_ch2_new(:,1:14) X_ch2_new(:,16:end)];

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

X_1_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch3_features.mat');
X_2_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch3_features.mat');
X_3_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch3_features.mat');
X_4_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch3_features.mat');
X_5_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch3_features.mat');
X_6_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch3_features.mat');
X_7_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch3_features.mat');
X_8_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch3_features.mat');
X_9_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch3_features.mat');
X_10_ch3_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch3_features.mat');

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

% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch3_features.mat');
X_seq_CC_ch3 = X_seq_CC_temp.feature_matrix_ch3;

X_ch3_seq_new = X_seq_CC_ch3;

X_ch3_new = [X_1_ch3_new(:,:);X_2_ch3_new(:,:);X_3_ch3_new(:,:);X_4_ch3_new(:,:);X_5_ch3_new(:,:);X_6_ch3_new(:,:);X_7_ch3_new(:,:);X_8_ch3_new(:,:);X_9_ch3_new(:,:);X_10_ch3_new(:,:);X_ch3_seq_new];

% X_ch3_new = [X_ch3_new(:,1:14) X_ch3_new(:,16:end)];

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

X_1_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch4_features.mat');
X_2_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch4_features.mat');
X_3_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch4_features.mat');
X_4_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch4_features.mat');
X_5_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch4_features.mat');
X_6_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch4_features.mat');
X_7_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch4_features.mat');
X_8_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch4_features.mat');
X_9_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch4_features.mat');
X_10_ch4_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch4_features.mat');

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

% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch4_features.mat');
X_seq_CC_ch4 = X_seq_CC_temp.feature_matrix_ch4;

X_ch4_seq_new = X_seq_CC_ch4;

X_ch4_new = [X_1_ch4_new(:,:);X_2_ch4_new(:,:);X_3_ch4_new(:,:);X_4_ch4_new(:,:);X_5_ch4_new(:,:);X_6_ch4_new(:,:);X_7_ch4_new(:,:);X_8_ch4_new(:,:);X_9_ch4_new(:,:);X_10_ch4_new(:,:);X_ch4_seq_new];

% X_ch4_new = [X_ch4_new(:,1:14) X_ch4_new(:,16:end)];

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

X_1_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 5 new\data divided\ch5_features.mat');
X_2_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 4,5 new2\data divided\ch5_features.mat');
X_3_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 3,4,5 new\data divided\ch5_features.mat');
X_4_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 2,3,4,5 new\data divided\ch5_features.mat');
X_5_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex all new\data divided\ch5_features.mat');
X_6_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\ext all new\data divided\ch5_features.mat');
X_7_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2,3 new\data divided\ch5_features.mat');
X_8_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1,2 new\data divided\ch5_features.mat');
X_9_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\flex 1 new\data divided\ch5_features.mat');
X_10_ch5_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\nothing\data divided\ch5_features.mat');

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

% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];

X_seq_CC_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\ch5_features.mat');
X_seq_CC_ch5 = X_seq_CC_temp.feature_matrix_ch5;

X_ch5_seq_new = X_seq_CC_ch5;

X_ch5_new = [X_1_ch5_new(:,:);X_2_ch5_new(:,:);X_3_ch5_new(:,:);X_4_ch5_new(:,:);X_5_ch5_new(:,:);X_6_ch5_new(:,:);X_7_ch5_new(:,:);X_8_ch5_new(:,:);X_9_ch5_new(:,:);X_10_ch5_new(:,:);X_ch5_seq_new];

% X_ch5_new = [X_ch5_new(:,1:14) X_ch5_new(:,16:end)];

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
X_1_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch1_features.mat');
X_2_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch1_features.mat');
X_3_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch1_features.mat');
X_4_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch1_features.mat');
X_5_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch1_features.mat');
X_6_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch1_features.mat');
X_7_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch1_features.mat');
X_8_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch1_features.mat');
X_9_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch1_features.mat');
X_10_ch1_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch1_features.mat');

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
% X_ch1_old = [X_ch1_old(:,1:14) X_ch1_old(:,16:end)];
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

class_length_old = [size(X_1_ch1_old,1) size(X_2_ch1_old,1) size(X_3_ch1_old,1) size(X_4_ch1_old,1) size(X_5_ch1_old,1) size(X_6_ch1_old,1) size(X_7_ch1_old,1) size(X_8_ch1_old,1) size(X_9_ch1_old,1) size(X_10_ch1_old,1)];

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

X_1_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch2_features.mat');
X_2_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch2_features.mat');
X_3_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch2_features.mat');
X_4_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch2_features.mat');
X_5_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch2_features.mat');
X_6_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch2_features.mat');
X_7_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch2_features.mat');
X_8_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch2_features.mat');
X_9_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch2_features.mat');
X_10_ch2_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch2_features.mat');

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
% X_ch2_old = [X_ch2_old(:,1:14) X_ch2_old(:,16:end)];
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

class_length_old = [size(X_1_ch2_old,1) size(X_2_ch2_old,1) size(X_3_ch2_old,1) size(X_4_ch2_old,1) size(X_5_ch2_old,1) size(X_6_ch2_old,1) size(X_7_ch2_old,1) size(X_8_ch2_old,1) size(X_9_ch2_old,1) size(X_10_ch2_old,1)];

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

X_1_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch3_features.mat');
X_2_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch3_features.mat');
X_3_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch3_features.mat');
X_4_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch3_features.mat');
X_5_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch3_features.mat');
X_6_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch3_features.mat');
X_7_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch3_features.mat');
X_8_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch3_features.mat');
X_9_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch3_features.mat');
X_10_ch3_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch3_features.mat');

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
% X_ch3_old = [X_ch3_old(:,1:14) X_ch3_old(:,16:end)];
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

class_length_old = [size(X_1_ch3_old,1) size(X_2_ch3_old,1) size(X_3_ch3_old,1) size(X_4_ch3_old,1) size(X_5_ch3_old,1) size(X_6_ch3_old,1) size(X_7_ch3_old,1) size(X_8_ch3_old,1) size(X_9_ch3_old,1) size(X_10_ch3_old,1)];

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

X_1_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch4_features.mat');
X_2_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch4_features.mat');
X_3_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch4_features.mat');
X_4_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch4_features.mat');
X_5_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch4_features.mat');
X_6_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch4_features.mat');
X_7_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch4_features.mat');
X_8_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch4_features.mat');
X_9_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch4_features.mat');
X_10_ch4_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch4_features.mat');

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
% X_ch4_old = [X_ch4_old(:,1:14) X_ch4_old(:,16:end)];
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

class_length_old = [size(X_1_ch4_old,1) size(X_2_ch4_old,1) size(X_3_ch4_old,1) size(X_4_ch4_old,1) size(X_5_ch4_old,1) size(X_6_ch4_old,1) size(X_7_ch4_old,1) size(X_8_ch4_old,1) size(X_9_ch4_old,1) size(X_10_ch4_old,1)];

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

X_1_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\data divided\ch5_features.mat');
X_2_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\data divided\ch5_features.mat');
X_3_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\data divided\ch5_features.mat');
X_4_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\data divided\ch5_features.mat');
X_5_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\data divided\ch5_features.mat');
X_6_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\data divided\ch5_features.mat');
X_7_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\data divided\ch5_features.mat');
X_8_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\data divided\ch5_features.mat');
X_9_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\data divided\ch5_features.mat');
X_10_ch5_old = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\data divided\ch5_features.mat');

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
% X_ch5_old = [X_ch5_old(:,1:14) X_ch5_old(:,16:end)];
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

class_length_old = [size(X_1_ch5_old,1) size(X_2_ch5_old,1) size(X_3_ch5_old,1) size(X_4_ch5_old,1) size(X_5_ch5_old,1) size(X_6_ch5_old,1) size(X_7_ch5_old,1) size(X_8_ch5_old,1) size(X_9_ch5_old,1) size(X_10_ch5_old,1)];

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

% %
% %
% 
% X_1_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch1_features.mat');
% X_2_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch1_features.mat');
% X_3_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch1_features.mat');
% X_4_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch1_features.mat');
% X_5_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch1_features.mat');
% X_6_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch1_features.mat');
% X_7_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch1_features.mat');
% X_8_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch1_features.mat');
% X_9_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch1_features.mat');
% X_10_ch1_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch1_features.mat');
% 
% X_1_ch1_seq_new = X_1_ch1_seq_new.feature_matrix_ch1;
% X_2_ch1_seq_new = X_2_ch1_seq_new.feature_matrix_ch1;
% X_3_ch1_seq_new = X_3_ch1_seq_new.feature_matrix_ch1;
% X_4_ch1_seq_new = X_4_ch1_seq_new.feature_matrix_ch1;
% X_5_ch1_seq_new = X_5_ch1_seq_new.feature_matrix_ch1;
% X_6_ch1_seq_new = X_6_ch1_seq_new.feature_matrix_ch1;
% X_7_ch1_seq_new = X_7_ch1_seq_new.feature_matrix_ch1;
% X_8_ch1_seq_new = X_8_ch1_seq_new.feature_matrix_ch1;
% X_9_ch1_seq_new = X_9_ch1_seq_new.feature_matrix_ch1;
% X_10_ch1_seq_new = X_10_ch1_seq_new.feature_matrix_ch1;
% 
% X_ch1_seq_new = [X_1_ch1_seq_new(:,:);X_2_ch1_seq_new(:,:);X_3_ch1_seq_new(:,:);X_4_ch1_seq_new(:,:);X_5_ch1_seq_new(:,:);X_6_ch1_seq_new(:,:);X_7_ch1_seq_new(:,:);X_8_ch1_seq_new(:,:);X_9_ch1_seq_new(:,:);X_10_ch1_seq_new(:,:)];
% 
% X_ch1_seq_new = (X_ch1_seq_new - mean(X_ch1_seq_new)) ./ std(X_ch1_seq_new);
% X_ch1_seq_new = [X_ch1_seq_new(:,1:14), X_ch1_seq_new(:,16:end)];
% 
% X_index_ch1_seq_new(1) = 1;
% X_ind_ch1_seq_new = [];
% X_ind_ch1_seq_new(:,1) = X_ch1_seq_new(:,1);
% 
% for i = 2:size(X_ch1_seq_new,2)    
%     temp_mat = [X_ind_ch1_seq_new X_ch1_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch1_seq_new = temp_mat;
%         X_index_ch1_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch1_seq_new = (X_ind_ch1_seq_new);
% 
% X_1_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch2_features.mat');
% X_2_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch2_features.mat');
% X_3_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch2_features.mat');
% X_4_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch2_features.mat');
% X_5_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch2_features.mat');
% X_6_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch2_features.mat');
% X_7_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch2_features.mat');
% X_8_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch2_features.mat');
% X_9_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch2_features.mat');
% X_10_ch2_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch2_features.mat');
% 
% X_1_ch2_seq_new = X_1_ch2_seq_new.feature_matrix_ch2;
% X_2_ch2_seq_new = X_2_ch2_seq_new.feature_matrix_ch2;
% X_3_ch2_seq_new = X_3_ch2_seq_new.feature_matrix_ch2;
% X_4_ch2_seq_new = X_4_ch2_seq_new.feature_matrix_ch2;
% X_5_ch2_seq_new = X_5_ch2_seq_new.feature_matrix_ch2;
% X_6_ch2_seq_new = X_6_ch2_seq_new.feature_matrix_ch2;
% X_7_ch2_seq_new = X_7_ch2_seq_new.feature_matrix_ch2;
% X_8_ch2_seq_new = X_8_ch2_seq_new.feature_matrix_ch2;
% X_9_ch2_seq_new = X_9_ch2_seq_new.feature_matrix_ch2;
% X_10_ch2_seq_new = X_10_ch2_seq_new.feature_matrix_ch2;
% 
% X_ch2_seq_new = [X_1_ch2_seq_new(:,:);X_2_ch2_seq_new(:,:);X_3_ch2_seq_new(:,:);X_4_ch2_seq_new(:,:);X_5_ch2_seq_new(:,:);X_6_ch2_seq_new(:,:);X_7_ch2_seq_new(:,:);X_8_ch2_seq_new(:,:);X_9_ch2_seq_new(:,:);X_10_ch2_seq_new(:,:)];
% 
% X_ch2_seq_new = (X_ch2_seq_new - mean(X_ch2_seq_new)) ./ std(X_ch2_seq_new);
% X_ch2_seq_new = [X_ch2_seq_new(:,1:14), X_ch2_seq_new(:,16:end)];
% 
% X_index_ch2_seq_new(1) = 1;
% X_ind_ch2_seq_new = [];
% X_ind_ch2_seq_new(:,1) = X_ch2_seq_new(:,1);
% 
% for i = 2:size(X_ch2_seq_new,2)    
%     temp_mat = [X_ind_ch2_seq_new X_ch2_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch2_seq_new = temp_mat;
%         X_index_ch2_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch2_seq_new = (X_ind_ch2_seq_new);
% 
% X_1_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch3_features.mat');
% X_2_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch3_features.mat');
% X_3_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch3_features.mat');
% X_4_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch3_features.mat');
% X_5_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch3_features.mat');
% X_6_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch3_features.mat');
% X_7_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch3_features.mat');
% X_8_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch3_features.mat');
% X_9_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch3_features.mat');
% X_10_ch3_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch3_features.mat');
% 
% X_1_ch3_seq_new = X_1_ch3_seq_new.feature_matrix_ch3;
% X_2_ch3_seq_new = X_2_ch3_seq_new.feature_matrix_ch3;
% X_3_ch3_seq_new = X_3_ch3_seq_new.feature_matrix_ch3;
% X_4_ch3_seq_new = X_4_ch3_seq_new.feature_matrix_ch3;
% X_5_ch3_seq_new = X_5_ch3_seq_new.feature_matrix_ch3;
% X_6_ch3_seq_new = X_6_ch3_seq_new.feature_matrix_ch3;
% X_7_ch3_seq_new = X_7_ch3_seq_new.feature_matrix_ch3;
% X_8_ch3_seq_new = X_8_ch3_seq_new.feature_matrix_ch3;
% X_9_ch3_seq_new = X_9_ch3_seq_new.feature_matrix_ch3;
% X_10_ch3_seq_new = X_10_ch3_seq_new.feature_matrix_ch3;
% 
% X_ch3_seq_new = [X_1_ch3_seq_new(:,:);X_2_ch3_seq_new(:,:);X_3_ch3_seq_new(:,:);X_4_ch3_seq_new(:,:);X_5_ch3_seq_new(:,:);X_6_ch3_seq_new(:,:);X_7_ch3_seq_new(:,:);X_8_ch3_seq_new(:,:);X_9_ch3_seq_new(:,:);X_10_ch3_seq_new(:,:)];
% 
% X_ch3_seq_new = (X_ch3_seq_new - mean(X_ch3_seq_new)) ./ std(X_ch3_seq_new);
% X_ch3_seq_new = [X_ch3_seq_new(:,1:14), X_ch3_seq_new(:,16:end)];
% 
% X_index_ch3_seq_new(1) = 1;
% X_ind_ch3_seq_new = [];
% X_ind_ch3_seq_new(:,1) = X_ch3_seq_new(:,1);
% 
% for i = 2:size(X_ch3_seq_new,2)    
%     temp_mat = [X_ind_ch3_seq_new X_ch3_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch3_seq_new = temp_mat;
%         X_index_ch3_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch3_seq_new = (X_ind_ch3_seq_new);
% 
% X_1_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch4_features.mat');
% X_2_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch4_features.mat');
% X_3_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch4_features.mat');
% X_4_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch4_features.mat');
% X_5_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch4_features.mat');
% X_6_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch4_features.mat');
% X_7_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch4_features.mat');
% X_8_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch4_features.mat');
% X_9_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch4_features.mat');
% X_10_ch4_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch4_features.mat');
% 
% X_1_ch4_seq_new = X_1_ch4_seq_new.feature_matrix_ch4;
% X_2_ch4_seq_new = X_2_ch4_seq_new.feature_matrix_ch4;
% X_3_ch4_seq_new = X_3_ch4_seq_new.feature_matrix_ch4;
% X_4_ch4_seq_new = X_4_ch4_seq_new.feature_matrix_ch4;
% X_5_ch4_seq_new = X_5_ch4_seq_new.feature_matrix_ch4;
% X_6_ch4_seq_new = X_6_ch4_seq_new.feature_matrix_ch4;
% X_7_ch4_seq_new = X_7_ch4_seq_new.feature_matrix_ch4;
% X_8_ch4_seq_new = X_8_ch4_seq_new.feature_matrix_ch4;
% X_9_ch4_seq_new = X_9_ch4_seq_new.feature_matrix_ch4;
% X_10_ch4_seq_new = X_10_ch4_seq_new.feature_matrix_ch4;
% 
% X_ch4_seq_new = [X_1_ch4_seq_new(:,:);X_2_ch4_seq_new(:,:);X_3_ch4_seq_new(:,:);X_4_ch4_seq_new(:,:);X_5_ch4_seq_new(:,:);X_6_ch4_seq_new(:,:);X_7_ch4_seq_new(:,:);X_8_ch4_seq_new(:,:);X_9_ch4_seq_new(:,:);X_10_ch4_seq_new(:,:)];
% 
% X_ch4_seq_new = (X_ch4_seq_new - mean(X_ch4_seq_new)) ./ std(X_ch4_seq_new);
% X_ch4_seq_new = [X_ch4_seq_new(:,1:14), X_ch4_seq_new(:,16:end)];
% 
% X_index_ch4_seq_new(1) = 1;
% X_ind_ch4_seq_new = [];
% X_ind_ch4_seq_new(:,1) = X_ch4_seq_new(:,1);
% 
% for i = 2:size(X_ch4_seq_new,2)    
%     temp_mat = [X_ind_ch4_seq_new X_ch4_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch4_seq_new = temp_mat;
%         X_index_ch4_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch4_seq_new = (X_ind_ch4_seq_new);
% 
% X_1_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 5 new_ch5_features.mat');
% X_2_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 4,5 new2_ch5_features.mat');
% X_3_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 3,4,5 new_ch5_features.mat');
% X_4_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 2,3,4,5 new_ch5_features.mat');
% X_5_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex all new_ch5_features.mat');
% X_6_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\ext all new_ch5_features.mat');
% X_7_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2,3 new_ch5_features.mat');
% X_8_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1,2 new_ch5_features.mat');
% X_9_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\flex 1 new_ch5_features.mat');
% X_10_ch5_seq_new = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\test 2\nothing_ch5_features.mat');
% 
% X_1_ch5_seq_new = X_1_ch5_seq_new.feature_matrix_ch5;
% X_2_ch5_seq_new = X_2_ch5_seq_new.feature_matrix_ch5;
% X_3_ch5_seq_new = X_3_ch5_seq_new.feature_matrix_ch5;
% X_4_ch5_seq_new = X_4_ch5_seq_new.feature_matrix_ch5;
% X_5_ch5_seq_new = X_5_ch5_seq_new.feature_matrix_ch5;
% X_6_ch5_seq_new = X_6_ch5_seq_new.feature_matrix_ch5;
% X_7_ch5_seq_new = X_7_ch5_seq_new.feature_matrix_ch5;
% X_8_ch5_seq_new = X_8_ch5_seq_new.feature_matrix_ch5;
% X_9_ch5_seq_new = X_9_ch5_seq_new.feature_matrix_ch5;
% X_10_ch5_seq_new = X_10_ch5_seq_new.feature_matrix_ch5;
% 
% X_ch5_seq_new = [X_1_ch5_seq_new(:,:);X_2_ch5_seq_new(:,:);X_3_ch5_seq_new(:,:);X_4_ch5_seq_new(:,:);X_5_ch5_seq_new(:,:);X_6_ch5_seq_new(:,:);X_7_ch5_seq_new(:,:);X_8_ch5_seq_new(:,:);X_9_ch5_seq_new(:,:);X_10_ch5_seq_new(:,:)];
% 
% X_ch5_seq_new = (X_ch5_seq_new - mean(X_ch5_seq_new)) ./ std(X_ch5_seq_new);
% X_ch5_seq_new = [X_ch5_seq_new(:,1:14), X_ch5_seq_new(:,16:end)];
% 
% X_index_ch5_seq_new(1) = 1;
% X_ind_ch5_seq_new = [];
% X_ind_ch5_seq_new(:,1) = X_ch5_seq_new(:,1);
% 
% for i = 2:size(X_ch5_seq_new,2)    
%     temp_mat = [X_ind_ch5_seq_new X_ch5_seq_new(:,i)];
%     temp_rank = rank(temp_mat);
%     
%     if temp_rank == size(temp_mat,2)
%         X_ind_ch5_seq_new = temp_mat;
%         X_index_ch5_seq_new(:,size(temp_mat,2)) = i;
%     end    
% end
% 
% obs_ch5_seq_new = (X_ind_ch5_seq_new);

%


% SVM_fet_ch1_cf = [4 12 13 15 27];
% SVM_fet_ch2_cf = [6 8 9 12];
% SVM_fet_ch3_cf = [9 12 13 25];
% SVM_fet_ch4_cf = [8 12 15 16 27];
% SVM_fet_ch5_cf = [8 10 15];
% 
% SVM_fet_ch1_fs = [4 12 13 15 16 27]; 
% SVM_fet_ch2_fs = [5 8 9 12 16 18 21 22];
% SVM_fet_ch3_fs = [7 9 12 13 14 15 16 25];
% SVM_fet_ch4_fs = [7 8 10 12 13 14 15 16 27];
% SVM_fet_ch5_fs = [4 5 6 8 10 12 15 17 19];

SVM_fet_ch1_cf = [10 12 15 16];%4 12 13 15 16 28
SVM_fet_ch2_cf = [8 12 15 17];%6 8 9 12 15
SVM_fet_ch3_cf = [12 13 15 16 17];%9 12 13 15 26
SVM_fet_ch4_cf = [8 12 15 17];%8 12 15 16 17 28
SVM_fet_ch5_cf = [1 8 12 15];%8 10 15 16

SVM_fet_ch1_fs = [4 5 6 12 13 15 16 24 27]; %4 12 13 15 16 17 28
SVM_fet_ch2_fs = [4 7 8 9 12 15 16 17];%5 8 9 12 15 17 19 22 23
SVM_fet_ch3_fs = [1 4 9 12 13 14 15 17];%7 9 12 13 14 15 16 17 26
SVM_fet_ch4_fs = [1 3 8 12 15 16 17];%7 8 10 12 13 14 15 16 17 28
SVM_fet_ch5_fs = [1 4 5 8 12 14 15 16];%4 5 6 8 10 12 15 16 18 20

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

obs_train_ch1 = [obs_ch1_old ; obs_ch1_new(1:end-size(X_ch1_seq_new,1),:)];
grp_train_ch1 = [grp_ch1_old ; grp_ch1_new];
obs_test_ch1 = obs_ch1_new(end-size(X_ch1_seq_new,1)+1:end,:);

obs_train_ch2 = [obs_ch2_old ; obs_ch2_new(1:end-size(X_ch2_seq_new,1),:)];
grp_train_ch2 = [grp_ch2_old ; grp_ch2_new];
obs_test_ch2 = obs_ch2_new(end-size(X_ch2_seq_new,1)+1:end,:);

obs_train_ch3 = [obs_ch3_old ; obs_ch3_new(1:end-size(X_ch3_seq_new,1),:)];
grp_train_ch3 = [grp_ch3_old ; grp_ch3_new];
obs_test_ch3 = obs_ch3_new(end-size(X_ch3_seq_new,1)+1:end,:);

obs_train_ch4 = [obs_ch4_old ; obs_ch4_new(1:end-size(X_ch4_seq_new,1),:)];
grp_train_ch4 = [grp_ch4_old ; grp_ch4_new];
obs_test_ch4 = obs_ch4_new(end-size(X_ch4_seq_new,1)+1:end,:);

obs_train_ch5 = [obs_ch5_old ; obs_ch5_new(1:end-size(X_ch5_seq_new,1),:)];
grp_train_ch5 = [grp_ch5_old ; grp_ch5_new];
obs_test_ch5 = obs_ch5_new(end-size(X_ch5_seq_new,1)+1:end,:);


md1_CH1 = fitcecoc(obs_train_ch1(:,SVM_fet_ch1_cf),grp_train_ch1,'learners',t,'Coding','onevsall');
[label_ch1,NegLoss, PBScore] = predict(md1_CH1,obs_test_ch1(:,SVM_fet_ch1_cf));
% accuracy_ch1 = (sum((grp_test_ch1-label_ch1) == 0)/length(grp_test_ch1))*100;

md1_CH2 = fitcecoc(obs_train_ch2(:,SVM_fet_ch2_cf),grp_train_ch2,'learners',t,'Coding','onevsall');
[label_ch2,NegLoss, PBScore] = predict(md1_CH2,obs_test_ch2(:,SVM_fet_ch2_cf));
% accuracy_ch2 = (sum((grp_test_ch2-label_ch2) == 0)/length(grp_test_ch2))*100;

md1_CH3 = fitcecoc(obs_train_ch3(:,SVM_fet_ch3_cf),grp_train_ch3,'learners',t,'Coding','onevsall');
[label_ch3,NegLoss, PBScore] = predict(md1_CH3,obs_test_ch3(:,SVM_fet_ch3_cf));
% accuracy_ch3 = (sum((grp_test_ch3-label_ch3) == 0)/length(grp_test_ch3))*100;

md1_CH4 = fitcecoc(obs_train_ch4(:,SVM_fet_ch4_cf),grp_train_ch4,'learners',t,'Coding','onevsall');
[label_ch4,NegLoss, PBScore] = predict(md1_CH4,obs_test_ch4(:,SVM_fet_ch4_cf));
% accuracy_ch4 = (sum((grp_test_ch4-label_ch4) == 0)/length(grp_test_ch4))*100;

md1_CH5 = fitcecoc(obs_train_ch5(:,SVM_fet_ch5_cf),grp_train_ch5,'learners',t,'Coding','onevsall');
[label_ch5,NegLoss, PBScore] = predict(md1_CH5,obs_test_ch5(:,SVM_fet_ch5_cf));
% accuracy_ch5 = (sum((grp_test_ch5-label_ch5) == 0)/length(grp_test_ch5))*100;

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

% accuracy_sep_cf = (sum((grp_test_ch1-label_sep) == 0)/length(grp_test_ch1))*100;

md1_CH1_fs = fitcecoc(obs_train_ch1(:,SVM_fet_ch1_fs),grp_train_ch1,'learners',t,'Coding','onevsall');
[label_ch1_fs,NegLoss, PBScore] = predict(md1_CH1_fs,obs_test_ch1(:,SVM_fet_ch1_fs));
% accuracy_ch1_fs = (sum((grp_test_ch1-label_ch1_fs) == 0)/length(grp_test_ch1))*100;

md1_CH2_fs = fitcecoc(obs_train_ch2(:,SVM_fet_ch2_fs),grp_train_ch2,'learners',t,'Coding','onevsall');
[label_ch2_fs,NegLoss, PBScore] = predict(md1_CH2_fs,obs_test_ch2(:,SVM_fet_ch2_fs));
% accuracy_ch2_fs = (sum((grp_test_ch2-label_ch2_fs) == 0)/length(grp_test_ch2))*100;

md1_CH3_fs = fitcecoc(obs_train_ch3(:,SVM_fet_ch3_fs),grp_train_ch3,'learners',t,'Coding','onevsall');
[label_ch3_fs,NegLoss, PBScore] = predict(md1_CH3_fs,obs_test_ch3(:,SVM_fet_ch3_fs));
% accuracy_ch3_fs = (sum((grp_test_ch3-label_ch3_fs) == 0)/length(grp_test_ch3))*100;

md1_CH4_fs = fitcecoc(obs_train_ch4(:,SVM_fet_ch4_fs),grp_train_ch4,'learners',t,'Coding','onevsall');
[label_ch4_fs,NegLoss, PBScore] = predict(md1_CH4_fs,obs_test_ch4(:,SVM_fet_ch4_fs));
% accuracy_ch4_fs = (sum((grp_test_ch4-label_ch4_fs) == 0)/length(grp_test_ch4))*100;

md1_CH5_fs = fitcecoc(obs_train_ch5(:,SVM_fet_ch5_fs),grp_train_ch5,'learners',t,'Coding','onevsall');
[label_ch5_fs,NegLoss, PBScore] = predict(md1_CH5_fs,obs_test_ch5(:,SVM_fet_ch5_fs));
% accuracy_ch5_fs = (sum((grp_test_ch5-label_ch5_fs) == 0)/length(grp_test_ch5))*100;


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

% accuracy_sep_fs = (sum((grp_test_ch1-label_sep_fs) == 0)/length(grp_test_ch1))*100;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_sep_cf'), 'label_sep');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_sep_fs'), 'label_sep_fs');

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_sep_cf.xlsx'), label_sep)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\new data\sequence\orig\changed_SVM_label_sep_fs.xlsx'), label_sep_fs)
