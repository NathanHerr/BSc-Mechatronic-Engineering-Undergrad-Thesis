% Load my data - KNN sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');

X_1 = X_1.feature_matrix_ch1;
X_2 = X_2.feature_matrix_ch1;
X_3 = X_3.feature_matrix_ch1;
X_4 = X_4.feature_matrix_ch1;
X_5 = X_5.feature_matrix_ch1;
X_6 = X_6.feature_matrix_ch1;
X_7 = X_7.feature_matrix_ch1;
X_8 = X_8.feature_matrix_ch1;
X_9 = X_9.feature_matrix_ch1;
X_10 = X_10.feature_matrix_ch1;

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];


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

% 

num_it = 50;
KNN_acc_mat = zeros(num_it,1);
KNN_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:); 
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcknn(obs_train(:,features_selected),grp_train,'NumNeighbors',5);
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    KNN_acc_mat(i) = accuracy;
    KNN_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(KNN_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = KNN_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_acc_ch1'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_fet_ch1'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_elapsed_time_ch1'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');

X_1 = X_1.feature_matrix_ch2;
X_2 = X_2.feature_matrix_ch2;
X_3 = X_3.feature_matrix_ch2;
X_4 = X_4.feature_matrix_ch2;
X_5 = X_5.feature_matrix_ch2;
X_6 = X_6.feature_matrix_ch2;
X_7 = X_7.feature_matrix_ch2;
X_8 = X_8.feature_matrix_ch2;
X_9 = X_9.feature_matrix_ch2;
X_10 = X_10.feature_matrix_ch2;

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];


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

% 

num_it = 50;
KNN_acc_mat = zeros(num_it,1);
KNN_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:); 
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcknn(obs_train(:,features_selected),grp_train,'NumNeighbors',5);
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    KNN_acc_mat(i) = accuracy;
    KNN_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(KNN_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = KNN_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_acc_ch2'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_fet_ch2'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_elapsed_time_ch2'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');

X_1 = X_1.feature_matrix_ch3;
X_2 = X_2.feature_matrix_ch3;
X_3 = X_3.feature_matrix_ch3;
X_4 = X_4.feature_matrix_ch3;
X_5 = X_5.feature_matrix_ch3;
X_6 = X_6.feature_matrix_ch3;
X_7 = X_7.feature_matrix_ch3;
X_8 = X_8.feature_matrix_ch3;
X_9 = X_9.feature_matrix_ch3;
X_10 = X_10.feature_matrix_ch3;

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];


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

% 

num_it = 50;
KNN_acc_mat = zeros(num_it,1);
KNN_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:); 
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcknn(obs_train(:,features_selected),grp_train,'NumNeighbors',5);
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    KNN_acc_mat(i) = accuracy;
    KNN_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(KNN_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = KNN_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_acc_ch3'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_fet_ch3'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_elapsed_time_ch3'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');

X_1 = X_1.feature_matrix_ch4;
X_2 = X_2.feature_matrix_ch4;
X_3 = X_3.feature_matrix_ch4;
X_4 = X_4.feature_matrix_ch4;
X_5 = X_5.feature_matrix_ch4;
X_6 = X_6.feature_matrix_ch4;
X_7 = X_7.feature_matrix_ch4;
X_8 = X_8.feature_matrix_ch4;
X_9 = X_9.feature_matrix_ch4;
X_10 = X_10.feature_matrix_ch4;

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];


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

% 

num_it = 50;
KNN_acc_mat = zeros(num_it,1);
KNN_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:); 
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcknn(obs_train(:,features_selected),grp_train,'NumNeighbors',5);
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    KNN_acc_mat(i) = accuracy;
    KNN_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(KNN_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = KNN_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_acc_ch4'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_fet_ch4'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_elapsed_time_ch4'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');

X_1 = X_1.feature_matrix_ch5;
X_2 = X_2.feature_matrix_ch5;
X_3 = X_3.feature_matrix_ch5;
X_4 = X_4.feature_matrix_ch5;
X_5 = X_5.feature_matrix_ch5;
X_6 = X_6.feature_matrix_ch5;
X_7 = X_7.feature_matrix_ch5;
X_8 = X_8.feature_matrix_ch5;
X_9 = X_9.feature_matrix_ch5;
X_10 = X_10.feature_matrix_ch5;

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];


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

% 

num_it = 50;
KNN_acc_mat = zeros(num_it,1);
KNN_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:); 
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcknn(obs_train(:,features_selected),grp_train,'NumNeighbors',5);
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    KNN_acc_mat(i) = accuracy;
    KNN_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(KNN_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = KNN_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_acc_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_fet_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channels_sep\changed_elapsed_time_ch5'), 'elapsed_time');

% Load my data - KNN CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_1 = X_1_temp.feature_matrix_ch1;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch2;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch3;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch4;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch5;

X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_2 = X_2_temp.feature_matrix_ch1;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch2;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch3;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch4;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch5;

X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_3 = X_3_temp.feature_matrix_ch1;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch2;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch3;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch4;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch5;

X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_4 = X_4_temp.feature_matrix_ch1;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch2;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch3;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch4;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch5;

X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_5 = X_5_temp.feature_matrix_ch1;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch2;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch3;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch4;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch5;

X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_6 = X_6_temp.feature_matrix_ch1;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch2;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch3;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch4;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch5;

X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_7 = X_7_temp.feature_matrix_ch1;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch2;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch3;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch4;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch5;

X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_8 = X_8_temp.feature_matrix_ch1;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch2;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch3;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch4;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch5;

X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_9 = X_9_temp.feature_matrix_ch1;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch2;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch3;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch4;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch5;

X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');
X_10 = X_10_temp.feature_matrix_ch1;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch2;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch3;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch4;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');
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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
KNN_acc_mat = zeros(num_it,1);
KNN_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it
        
    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:); 
    grp_test = grp(holdoutCVP.test,:);
    tenfoldCVP = cvpartition(grp_train,'kfold',10);

% classifier algorithm

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcknn(xtrain,ytrain,'NumNeighbors',5),xtest)) ~= 0);

% Featsel

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);

    features_selected = features(fsLocal);

    md1 = fitcknn(obs_train(:,features_selected),grp_train,'NumNeighbors',5);
    [label,score,cost] = predict(md1,obs_test(:,features_selected));

    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    KNN_acc_mat(i) = accuracy;
    KNN_fet_mat{i} = num2str(features_selected);
end

% Sort Data and Find max accuracu and associated features

[sorted_acc_mat,featureIdxSortbyAcc] = sort(KNN_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = KNN_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channel_comb_fixed\acc_CC'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channel_comb_fixed\fet_CC'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\KNN_tests\channel_comb_fixed\elapsed_time'), 'elapsed_time');

% Load my data - LDA sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');

X_1 = X_1.feature_matrix_ch1;
X_2 = X_2.feature_matrix_ch1;
X_3 = X_3.feature_matrix_ch1;
X_4 = X_4.feature_matrix_ch1;
X_5 = X_5.feature_matrix_ch1;
X_6 = X_6.feature_matrix_ch1;
X_7 = X_7.feature_matrix_ch1;
X_8 = X_8.feature_matrix_ch1;
X_9 = X_9.feature_matrix_ch1;
X_10 = X_10.feature_matrix_ch1;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:) ;X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
LDA_acc_mat = zeros(num_it,1);
LDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','linear'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','linear');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    LDA_acc_mat(i) = accuracy;
    LDA_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(LDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = LDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_acc_ch1'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_fet_ch1'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_elapsed_time_ch1'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');

X_1 = X_1.feature_matrix_ch2;
X_2 = X_2.feature_matrix_ch2;
X_3 = X_3.feature_matrix_ch2;
X_4 = X_4.feature_matrix_ch2;
X_5 = X_5.feature_matrix_ch2;
X_6 = X_6.feature_matrix_ch2;
X_7 = X_7.feature_matrix_ch2;
X_8 = X_8.feature_matrix_ch2;
X_9 = X_9.feature_matrix_ch2;
X_10 = X_10.feature_matrix_ch2;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:) ;X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
LDA_acc_mat = zeros(num_it,1);
LDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','linear'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','linear');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    LDA_acc_mat(i) = accuracy;
    LDA_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(LDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = LDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_acc_ch2'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_fet_ch2'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_elapsed_time_ch2'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');

X_1 = X_1.feature_matrix_ch3;
X_2 = X_2.feature_matrix_ch3;
X_3 = X_3.feature_matrix_ch3;
X_4 = X_4.feature_matrix_ch3;
X_5 = X_5.feature_matrix_ch3;
X_6 = X_6.feature_matrix_ch3;
X_7 = X_7.feature_matrix_ch3;
X_8 = X_8.feature_matrix_ch3;
X_9 = X_9.feature_matrix_ch3;
X_10 = X_10.feature_matrix_ch3;


X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:) ;X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
LDA_acc_mat = zeros(num_it,1);
LDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','linear'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','linear');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    LDA_acc_mat(i) = accuracy;
    LDA_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(LDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = LDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_acc_ch3'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_fet_ch3'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_elapsed_time_ch3'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');

X_1 = X_1.feature_matrix_ch4;
X_2 = X_2.feature_matrix_ch4;
X_3 = X_3.feature_matrix_ch4;
X_4 = X_4.feature_matrix_ch4;
X_5 = X_5.feature_matrix_ch4;
X_6 = X_6.feature_matrix_ch4;
X_7 = X_7.feature_matrix_ch4;
X_8 = X_8.feature_matrix_ch4;
X_9 = X_9.feature_matrix_ch4;
X_10 = X_10.feature_matrix_ch4;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:) ;X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
LDA_acc_mat = zeros(num_it,1);
LDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','linear'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','linear');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    LDA_acc_mat(i) = accuracy;
    LDA_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(LDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = LDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_acc_ch4'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_fet_ch4'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_elapsed_time_ch4'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');

X_1 = X_1.feature_matrix_ch5;
X_2 = X_2.feature_matrix_ch5;
X_3 = X_3.feature_matrix_ch5;
X_4 = X_4.feature_matrix_ch5;
X_5 = X_5.feature_matrix_ch5;
X_6 = X_6.feature_matrix_ch5;
X_7 = X_7.feature_matrix_ch5;
X_8 = X_8.feature_matrix_ch5;
X_9 = X_9.feature_matrix_ch5;
X_10 = X_10.feature_matrix_ch5;


X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:) ;X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
LDA_acc_mat = zeros(num_it,1);
LDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','linear'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','linear');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    LDA_acc_mat(i) = accuracy;
    LDA_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(LDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = LDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_acc_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_fet_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channels_sep\changed_elapsed_time_ch5'), 'elapsed_time');

% Load my data - LDA CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_1 = X_1_temp.feature_matrix_ch1;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch2;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch3;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch4;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch5;

X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_2 = X_2_temp.feature_matrix_ch1;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch2;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch3;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch4;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch5;

X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_3 = X_3_temp.feature_matrix_ch1;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch2;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch3;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch4;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch5;

X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_4 = X_4_temp.feature_matrix_ch1;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch2;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch3;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch4;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch5;

X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_5 = X_5_temp.feature_matrix_ch1;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch2;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch3;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch4;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch5;

X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_6 = X_6_temp.feature_matrix_ch1;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch2;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch3;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch4;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch5;

X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_7 = X_7_temp.feature_matrix_ch1;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch2;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch3;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch4;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch5;

X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_8 = X_8_temp.feature_matrix_ch1;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch2;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch3;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch4;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch5;

X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_9 = X_9_temp.feature_matrix_ch1;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch2;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch3;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch4;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch5;

X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');
X_10 = X_10_temp.feature_matrix_ch1;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch2;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch3;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch4;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');
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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
LDA_acc_mat = zeros(num_it,1);
LDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','linear'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','linear');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    LDA_acc_mat(i) = accuracy;
    LDA_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(LDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = LDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channel_comb_fixed\acc_CC'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channel_comb_fixed\fet_CC'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\LDA_tests\channel_comb_fixed\elapsed_time'), 'elapsed_time');

% Load my data - QDA sep

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');

X_1 = X_1.feature_matrix_ch1;
X_2 = X_2.feature_matrix_ch1;
X_3 = X_3.feature_matrix_ch1;
X_4 = X_4.feature_matrix_ch1;
X_5 = X_5.feature_matrix_ch1;
X_6 = X_6.feature_matrix_ch1;
X_7 = X_7.feature_matrix_ch1;
X_8 = X_8.feature_matrix_ch1;
X_9 = X_9.feature_matrix_ch1;
X_10 = X_10.feature_matrix_ch1;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
QDA_acc_mat = zeros(num_it,1);
QDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','pseudoQuadratic'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','pseudoQuadratic');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    QDA_acc_mat(i) = accuracy;
    QDA_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(QDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = QDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_acc_ch1'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_fet_ch1'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_elapsed_time_ch1'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');

X_1 = X_1.feature_matrix_ch2;
X_2 = X_2.feature_matrix_ch2;
X_3 = X_3.feature_matrix_ch2;
X_4 = X_4.feature_matrix_ch2;
X_5 = X_5.feature_matrix_ch2;
X_6 = X_6.feature_matrix_ch2;
X_7 = X_7.feature_matrix_ch2;
X_8 = X_8.feature_matrix_ch2;
X_9 = X_9.feature_matrix_ch2;
X_10 = X_10.feature_matrix_ch2;


X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
QDA_acc_mat = zeros(num_it,1);
QDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','pseudoQuadratic'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','pseudoQuadratic');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    QDA_acc_mat(i) = accuracy;
    QDA_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(QDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = QDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_acc_ch2'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_fet_ch2'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_elapsed_time_ch2'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');

X_1 = X_1.feature_matrix_ch3;
X_2 = X_2.feature_matrix_ch3;
X_3 = X_3.feature_matrix_ch3;
X_4 = X_4.feature_matrix_ch3;
X_5 = X_5.feature_matrix_ch3;
X_6 = X_6.feature_matrix_ch3;
X_7 = X_7.feature_matrix_ch3;
X_8 = X_8.feature_matrix_ch3;
X_9 = X_9.feature_matrix_ch3;
X_10 = X_10.feature_matrix_ch3;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
QDA_acc_mat = zeros(num_it,1);
QDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','pseudoQuadratic'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','pseudoQuadratic');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    QDA_acc_mat(i) = accuracy;
    QDA_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(QDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = QDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_acc_ch3'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_fet_ch3'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_elapsed_time_ch3'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');

X_1 = X_1.feature_matrix_ch4;
X_2 = X_2.feature_matrix_ch4;
X_3 = X_3.feature_matrix_ch4;
X_4 = X_4.feature_matrix_ch4;
X_5 = X_5.feature_matrix_ch4;
X_6 = X_6.feature_matrix_ch4;
X_7 = X_7.feature_matrix_ch4;
X_8 = X_8.feature_matrix_ch4;
X_9 = X_9.feature_matrix_ch4;
X_10 = X_10.feature_matrix_ch4;


X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
QDA_acc_mat = zeros(num_it,1);
QDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','pseudoQuadratic'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','pseudoQuadratic');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    QDA_acc_mat(i) = accuracy;
    QDA_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(QDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = QDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_acc_ch4'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_fet_ch4'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_elapsed_time_ch4'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');

X_1 = X_1.feature_matrix_ch5;
X_2 = X_2.feature_matrix_ch5;
X_3 = X_3.feature_matrix_ch5;
X_4 = X_4.feature_matrix_ch5;
X_5 = X_5.feature_matrix_ch5;
X_6 = X_6.feature_matrix_ch5;
X_7 = X_7.feature_matrix_ch5;
X_8 = X_8.feature_matrix_ch5;
X_9 = X_9.feature_matrix_ch5;
X_10 = X_10.feature_matrix_ch5;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
QDA_acc_mat = zeros(num_it,1);
QDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','pseudoQuadratic'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','pseudoQuadratic');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    QDA_acc_mat(i) = accuracy;
    QDA_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(QDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = QDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_acc_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_fet_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channels_sep\changed_elapsed_time_ch5'), 'elapsed_time');

% Load my data - QDA CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_1 = X_1_temp.feature_matrix_ch1;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch2;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch3;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch4;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch5;

X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_2 = X_2_temp.feature_matrix_ch1;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch2;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch3;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch4;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch5;

X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_3 = X_3_temp.feature_matrix_ch1;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch2;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch3;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch4;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch5;

X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_4 = X_4_temp.feature_matrix_ch1;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch2;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch3;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch4;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch5;

X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_5 = X_5_temp.feature_matrix_ch1;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch2;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch3;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch4;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch5;

X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_6 = X_6_temp.feature_matrix_ch1;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch2;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch3;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch4;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch5;

X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_7 = X_7_temp.feature_matrix_ch1;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch2;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch3;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch4;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch5;

X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_8 = X_8_temp.feature_matrix_ch1;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch2;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch3;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch4;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch5;

X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_9 = X_9_temp.feature_matrix_ch1;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch2;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch3;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch4;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch5;

X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');
X_10 = X_10_temp.feature_matrix_ch1;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch2;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch3;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch4;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');
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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
QDA_acc_mat = zeros(num_it,1);
QDA_fet_mat = {};

tic;

rng(8000,'twister');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcdiscr(xtrain,ytrain,'DiscrimType','pseudoQuadratic'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcdiscr(obs_train(:,features_selected),grp_train,'DiscrimType','pseudoQuadratic');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    QDA_acc_mat(i) = accuracy;
    QDA_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(QDA_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = QDA_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channel_comb_fixed\acc_CC'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channel_comb_fixed\fet_CC'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\QDA_tests\channel_comb_fixed\elapsed_time'), 'elapsed_time');

%% Load my data - SVM sep - Gaussian & OVA

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');

X_1 = X_1.feature_matrix_ch1;
X_2 = X_2.feature_matrix_ch1;
X_3 = X_3.feature_matrix_ch1;
X_4 = X_4.feature_matrix_ch1;
X_5 = X_5.feature_matrix_ch1;
X_6 = X_6.feature_matrix_ch1;
X_7 = X_7.feature_matrix_ch1;
X_8 = X_8.feature_matrix_ch1;
X_9 = X_9.feature_matrix_ch1;
X_10 = X_10.feature_matrix_ch1;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_acc_ch1'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch1'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_elapsed_time_ch1'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');

X_1 = X_1.feature_matrix_ch2;
X_2 = X_2.feature_matrix_ch2;
X_3 = X_3.feature_matrix_ch2;
X_4 = X_4.feature_matrix_ch2;
X_5 = X_5.feature_matrix_ch2;
X_6 = X_6.feature_matrix_ch2;
X_7 = X_7.feature_matrix_ch2;
X_8 = X_8.feature_matrix_ch2;
X_9 = X_9.feature_matrix_ch2;
X_10 = X_10.feature_matrix_ch2;


X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_acc_ch2'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch2'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_elapsed_time_ch2'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');

X_1 = X_1.feature_matrix_ch3;
X_2 = X_2.feature_matrix_ch3;
X_3 = X_3.feature_matrix_ch3;
X_4 = X_4.feature_matrix_ch3;
X_5 = X_5.feature_matrix_ch3;
X_6 = X_6.feature_matrix_ch3;
X_7 = X_7.feature_matrix_ch3;
X_8 = X_8.feature_matrix_ch3;
X_9 = X_9.feature_matrix_ch3;
X_10 = X_10.feature_matrix_ch3;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_acc_ch3'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch3'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_elapsed_time_ch3'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');

X_1 = X_1.feature_matrix_ch4;
X_2 = X_2.feature_matrix_ch4;
X_3 = X_3.feature_matrix_ch4;
X_4 = X_4.feature_matrix_ch4;
X_5 = X_5.feature_matrix_ch4;
X_6 = X_6.feature_matrix_ch4;
X_7 = X_7.feature_matrix_ch4;
X_8 = X_8.feature_matrix_ch4;
X_9 = X_9.feature_matrix_ch4;
X_10 = X_10.feature_matrix_ch4;


X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_acc_ch4'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch4'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_elapsed_time_ch4'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_6 = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_7 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_8 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_9 = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_10 = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');

X_1 = X_1.feature_matrix_ch5;
X_2 = X_2.feature_matrix_ch5;
X_3 = X_3.feature_matrix_ch5;
X_4 = X_4.feature_matrix_ch5;
X_5 = X_5.feature_matrix_ch5;
X_6 = X_6.feature_matrix_ch5;
X_7 = X_7.feature_matrix_ch5;
X_8 = X_8.feature_matrix_ch5;
X_9 = X_9.feature_matrix_ch5;
X_10 = X_10.feature_matrix_ch5;

X = [X_1(:,:);X_2(:,:);X_3(:,:);X_4(:,:);X_5(:,:);X_6(:,:);X_7(:,:);X_8(:,:);X_9(:,:);X_10(:,:)];

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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);
    
end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_acc_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_elapsed_time_ch5'), 'elapsed_time');

% Load my data - SVM CC

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

channels = {'ch1_features.mat' 'ch2_features.mat' 'ch3_features.mat' 'ch4_features.mat' 'ch5_features.mat'};

X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch1_features.mat');
X_1 = X_1_temp.feature_matrix_ch1;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch2_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch2;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch3_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch3;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch4_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch4;
X_1_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 5\ch5_features.mat');
X_1 = X_1 + X_1_temp.feature_matrix_ch5;

X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch1_features.mat');
X_2 = X_2_temp.feature_matrix_ch1;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch2_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch2;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch3_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch3;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch4_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch4;
X_2_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\3.0 flex 4,5\ch5_features.mat');
X_2 = X_2 + X_2_temp.feature_matrix_ch5;

X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch1_features.mat');
X_3 = X_3_temp.feature_matrix_ch1;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch2_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch2;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch3_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch3;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch4_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch4;
X_3_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 3,4,5\ch5_features.mat');
X_3 = X_3 + X_3_temp.feature_matrix_ch5;

X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch1_features.mat');
X_4 = X_4_temp.feature_matrix_ch1;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch2_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch2;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch3_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch3;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch4_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch4;
X_4_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex 2,3,4,5\ch5_features.mat');
X_4 = X_4 + X_4_temp.feature_matrix_ch5;

X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch1_features.mat');
X_5 = X_5_temp.feature_matrix_ch1;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch2_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch2;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch3_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch3;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch4_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch4;
X_5_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 flex all 5\ch5_features.mat');
X_5 = X_5 + X_5_temp.feature_matrix_ch5;

X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch1_features.mat');
X_6 = X_6_temp.feature_matrix_ch1;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch2_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch2;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch3_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch3;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch4_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch4;
X_6_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\2.0 ext all 5\ch5_features.mat');
X_6 = X_6 + X_6_temp.feature_matrix_ch5;

X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch1_features.mat');
X_7 = X_7_temp.feature_matrix_ch1;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch2_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch2;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch3_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch3;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch4_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch4;
X_7_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2,3 max\ch5_features.mat');
X_7 = X_7 + X_7_temp.feature_matrix_ch5;

X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch1_features.mat');
X_8 = X_8_temp.feature_matrix_ch1;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch2_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch2;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch3_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch3;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch4_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch4;
X_8_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1,2 max\ch5_features.mat');
X_8 = X_8 + X_8_temp.feature_matrix_ch5;

X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch1_features.mat');
X_9 = X_9_temp.feature_matrix_ch1;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch2_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch2;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch3_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch3;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch4_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch4;
X_9_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\flex 1 max\ch5_features.mat');
X_9 = X_9 + X_9_temp.feature_matrix_ch5;

X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch1_features.mat');
X_10 = X_10_temp.feature_matrix_ch1;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch2_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch2;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch3_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch3;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch4_features.mat');
X_10 = X_10 + X_10_temp.feature_matrix_ch4;
X_10_temp = load('C:\Users\Nathan\Google Drive\Thesis\My data\nothing\ch5_features.mat');
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

class_length= [size(X_1,1) size(X_2,1) size(X_3,1) size(X_4,1) size(X_5,1) size(X_6,1) size(X_7,1) size(X_8,1) size(X_9,1) size(X_10,1)];

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
SVM_acc_mat = zeros(num_it,1);
SVM_fet_mat = {};

tic;

rng(8000,'twister');

t = templateSVM('KernelFunction','gaussian');

for i = 1:num_it

    holdoutCVP = cvpartition(grp,'holdout',56);

    obs_train = obs(holdoutCVP.training,:);
    grp_train = grp(holdoutCVP.training);
    obs_test = obs(holdoutCVP.test,:);
    grp_test = grp(holdoutCVP.test,:);

    tenfoldCVP = cvpartition(grp_train,'kfold',10);

    classf = @(xtrain,ytrain,xtest,ytest) ...
                 sum((ytest-predict(fitcecoc(xtrain,ytrain,'learners',t,'Coding','onevsall'),xtest)) ~= 0);

    features = 1:size(X_ind,2);

    fsLocal = sequentialfs(classf,obs_train,grp_train,'cv',tenfoldCVP);
    
    features_selected = features(fsLocal);  

    MDL = fitcecoc(obs_train(:,features_selected),grp_train,'learners',t,'Coding','onevsall');
    [label, NegLoss, PBScore] = predict(MDL,obs_test(:,features_selected));
    accuracy = (sum((grp_test-label) == 0)/length(grp_test))*100;
    
    SVM_acc_mat(i) = accuracy;
    SVM_fet_mat{i} = num2str(features_selected);

end

[sorted_acc_mat,featureIdxSortbyAcc] = sort(SVM_acc_mat,'descend');
sorted_fet_mat = {};

for i = 1:num_it    
    sorted_fet_mat{i} = SVM_fet_mat{featureIdxSortbyAcc(i)};
end

elapsed_time = toc;

save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_comb\changed_acc_CC'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_comb\changed_fet_CC'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_comb\changed_elapsed_time'), 'elapsed_time');

