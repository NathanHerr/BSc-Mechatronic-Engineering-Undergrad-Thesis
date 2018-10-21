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

X_1 = X_1.feature_matrix_ch5;
X_2 = X_2.feature_matrix_ch5;
X_3 = X_3.feature_matrix_ch5;
X_4 = X_4.feature_matrix_ch5;
X_5 = X_5.feature_matrix_ch5;
X_6 = X_6.feature_matrix_ch5;
X_7 = X_7.feature_matrix_ch5;
X_8 = X_8.feature_matrix_ch5;
X_9 = X_9.feature_matrix_ch5;

X = [X_1(:,:);X_2(:,:); X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:)];

% X = standardise(X);
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

% X_check = [X ; 1:34];
% 
% [~,inx]=sort(X_check(1,:));
% X_check = X_check(:,inx);
% 
% X_unique = uniquetol((X_ind)',1e-3,'ByRows',true);
% X_unique = unique(X','rows','stable');
% X_unique = X_unique';

%features_UX = [17 20 18 12 14 1 3 10 16 21 15 33 32 31 29 25 24 22 23 7 11 8 9 26 27 28 34 19];

class_length = [23 23 27 23 21 22 17 17 19];

t = zeros(sum(class_length),1);

for i = 1:length(class_length)
    if i == 1
         t(1:class_length(i)) = i;
    else
         t(sum(class_length(1:i-1))+1:sum(class_length(1:i))) = i;
    end 
end

grp = t;
obs = X_ind;

%% Alter Data

[data_test,data_train] = gendat([obs grp],0.2);

obs_test = data_test(:,1:end-1);
obs_train = data_train(:,1:end-1);

grp_test = data_test(:,end);
grp_train = data_train(:,end);

data_trainG1 = data_train(grp2idx(grp_train)==1,:);
data_trainG2 = data_train(grp2idx(grp_train)==2,:);
data_trainG3 = data_train(grp2idx(grp_train)==3,:);
data_trainG4 = data_train(grp2idx(grp_train)==4,:);
data_trainG5 = data_train(grp2idx(grp_train)==5,:);
data_trainG6 = data_train(grp2idx(grp_train)==6,:);
data_trainG7 = data_train(grp2idx(grp_train)==7,:);
data_trainG8 = data_train(grp2idx(grp_train)==8,:);
data_trainG9 = data_train(grp2idx(grp_train)==9,:);

[W, R] = featseli(data_train,'NN',0,data_test);

%% Given example

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.


load ovariancancer; 
whos

grp_new = grp2idx(grp);

A = [double(obs) double(grp_new)];

A = setprior(A,getprior(A));    % avoid heaps of warnings
[T,S] = gendat(A,0.5);          % generate train / test set
W1 = A*featseli([],'NN',4);     W1 = setname(W1,'ISel NN'); 
W2 = A*featseli([],'maha-s',4); W2 = setname(W2,'ISel maha-s');
W3 = A*featseli([],'maha-m',4); W3 = setname(W3,'ISel maha-m');
W4 = A*featseli([],'in-in',4);  W4 = setname(W4,'ISel in-in');
W5 = A*featseli([],ldc,4,5);    W5 = setname(W5,'ISel wrapper');
disp([+W1;+W2;+W3;+W4;+W5])     % show selected features
V = T*({W1,W2,W3,W4,W5}*ldc);   % train all selectors and classifiers
S*V*testc                       % show test result