% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch1_features.mat');
X_2 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch1_features.mat');
X_3 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch1_features.mat');
X_4 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch1_features.mat');
X_5 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch1_features.mat');
X_6 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch1_features.mat');
X_7 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch1_features.mat');
X_8 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch1_features.mat');
X_9 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch1_features.mat');
X_10 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch1_features.mat');

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

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_acc_mat_ch1'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_fet_mat_ch1'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\elapsed_time_ch1'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch2_features.mat');
X_2 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch2_features.mat');
X_3 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch2_features.mat');
X_4 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch2_features.mat');
X_5 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch2_features.mat');
X_6 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch2_features.mat');
X_7 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch2_features.mat');
X_8 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch2_features.mat');
X_9 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch2_features.mat');
X_10 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch2_features.mat');

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

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_acc_mat_ch2'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_fet_mat_ch2'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\elapsed_time_ch2'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch3_features.mat');
X_2 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch3_features.mat');
X_3 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch3_features.mat');
X_4 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch3_features.mat');
X_5 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch3_features.mat');
X_6 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch3_features.mat');
X_7 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch3_features.mat');
X_8 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch3_features.mat');
X_9 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch3_features.mat');
X_10 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch3_features.mat');

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

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_acc_mat_ch3'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_fet_mat_ch3'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\elapsed_time_ch3'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch4_features.mat');
X_2 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch4_features.mat');
X_3 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch4_features.mat');
X_4 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch4_features.mat');
X_5 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch4_features.mat');
X_6 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch4_features.mat');
X_7 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch4_features.mat');
X_8 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch4_features.mat');
X_9 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch4_features.mat');
X_10 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch4_features.mat');

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

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_acc_mat_ch4'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_fet_mat_ch4'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\elapsed_time_ch4'), 'elapsed_time');

% Load my data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

X_1 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 5 new\ch5_features.mat');
X_2 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 4,5 new2\ch5_features.mat');
X_3 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 3,4,5 new\ch5_features.mat');
X_4 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 2,3,4,5 new\ch5_features.mat');
X_5 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new\ch5_features.mat');
X_6 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\ext all new\ch5_features.mat');
X_7 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2,3 new\ch5_features.mat');
X_8 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1,2 new\ch5_features.mat');
X_9 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex 1 new\ch5_features.mat');
X_10 = load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\ch5_features.mat');

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

save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_acc_mat_ch5'), 'sorted_acc_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\sorted_fet_mat_ch5'), 'sorted_fet_mat');
save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\QDA tests\sep many\elapsed_time_ch5'), 'elapsed_time');
