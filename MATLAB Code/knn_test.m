
%% Without LDA

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'2.0 flex all 5','2.0 ext all 5','3.0 flex 5','3.0 flex 4,5','2.0 flex 3,4,5','2.0 flex 2,3,4,5','flex 1,2,3 max','flex 1,2 max','flex 1 max'};
v_length = [21 22 23 23 27 23 17 17 19];
v_length_train = v_length-3;

num_test_samples = 3;

data_matrix_ch1 = zeros(length(dirs)*30,35);

for D = 1:length(dirs)
    temp_matrix = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch1_features.mat'));
    temp_matrix = temp_matrix.feature_matrix_ch1;
    temp_col = zeros(size(temp_matrix,1),1);
    for i  = 1:size(temp_matrix,1)
        temp_col(i) = D;
    end
    data_matrix_ch1(30*(D-1)+1:30*(D-1)+size(temp_matrix,1),:) = [temp_matrix temp_col];
end

data_matrix_ch2 = zeros(length(dirs)*30,35);

for D = 1:length(dirs)
    temp_matrix = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch2_features.mat'));
    temp_matrix = temp_matrix.feature_matrix_ch2;
    temp_col = zeros(size(temp_matrix,1),1);
    for i  = 1:size(temp_matrix,1)
        temp_col(i) = D;
    end
    data_matrix_ch2(30*(D-1)+1:30*(D-1)+size(temp_matrix,1),:) = [temp_matrix temp_col];
end

data_matrix_ch1_noZ = data_matrix_ch1(any(data_matrix_ch1,2),:);
data_matrix_ch2_noZ = data_matrix_ch2(any(data_matrix_ch2,2),:);

norm_feature_matrix_ch1 = [normc(data_matrix_ch1_noZ(:,1:34)) data_matrix_ch1_noZ(:,35)];
norm_feature_matrix_ch2 = normc(data_matrix_ch2_noZ(:,1:34));

train_data_ch1 = zeros(30*9,35);
test_data_ch1 = zeros(30*9,35);

for i = 1:length(dirs)
    train_data_ch1(30*(i-1)+1:30*(i-1)+v_length_train(i),:) = data_matrix_ch1(30*(i-1)+1:30*(i-1)+v_length_train(i),:);
end

train_data_ch1 = train_data_ch1(any(train_data_ch1,2),:);
norm_train_data_ch1 = [normc(train_data_ch1(:,1:34)) train_data_ch1(:,35)];

for i = 1:length(dirs)
    test_data_ch1(30*(i-1)+1+v_length_train(i):30*(i-1)+v_length(i),:) = data_matrix_ch1(30*(i-1)+1+v_length_train(i):30*(i-1)+v_length(i),:);
end

test_data_ch1 = test_data_ch1(any(test_data_ch1,2),:);
norm_test_data_ch1 = [normc(test_data_ch1(:,1:34)) test_data_ch1(:,35)];

train_classes = norm_train_data_ch1(:,35);
test_classes = norm_test_data_ch1(:,35);

calculatedClases = knnclassify(norm_test_data_ch1(:,1:34), norm_train_data_ch1(:,1:34), norm_train_data_ch1(:,35));

simmilarity = []; % growing array
for i = 1 : 1 : length(test_classes)
    similarity(i) = ( test_classes(i) == calculatedClases(i) );
end

accuracy = sum(similarity) / length(test_classes);

% feature selection

fun = @(XT,yT,Xt,yt)...
      (sum(~strcmp(yt,classify(Xt,XT,yT,'quadratic'))));

INMODEL = sequentialfs(@classf,norm_feature_matrix_ch1(:,1:34),norm_feature_matrix_ch1(:,35));


%% With LDA

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'2.0 flex all 5','2.0 ext all 5','3.0 flex 5','3.0 flex 4,5','2.0 flex 3,4,5','2.0 flex 2,3,4,5','flex 1,2,3 max','flex 1,2 max','flex 1 max'};
v_length = [21 22 23 23 27 23 17 17 19];
v_length_train = v_length-3;

num_test_samples = 3;

data_matrix_ch1 = zeros(length(dirs)*30,34);

for D = 1:length(dirs)
    temp_matrix = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch1_features.mat'));
    temp_matrix = temp_matrix.feature_matrix_ch1;
    data_matrix_ch1(30*(D-1)+1:30*(D-1)+size(temp_matrix,1),:) = temp_matrix;
end

data_matrix_ch1_noZ = data_matrix_ch1(any(data_matrix_ch1,2),:);
norm_feature_matrix_ch1 = normc(data_matrix_ch1_noZ);

train_data_ch1 = zeros(30*9,34);
test_data_ch1 = zeros(30*9,34);

for i = 1:length(dirs)
    train_data_ch1(30*(i-1)+1:30*(i-1)+v_length_train(i),:) = data_matrix_ch1(30*(i-1)+1:30*(i-1)+v_length_train(i),:);
end

train_data_ch1 = train_data_ch1(any(train_data_ch1,2),:);
norm_train_data_ch1 = normc(train_data_ch1);

for i = 1:length(dirs)
    test_data_ch1(30*(i-1)+1+v_length_train(i):30*(i-1)+v_length(i),:) = data_matrix_ch1(30*(i-1)+1+v_length_train(i):30*(i-1)+v_length(i),:);
end

test_data_ch1 = test_data_ch1(any(test_data_ch1,2),:);
norm_test_data_ch1 = normc(test_data_ch1);

train_classes_LDA = {};
test_classes_LDA = {};
train_classes_knn = [];
test_classes_knn = [];

for i = 1:9    
    if i == 1
        for j = 1:v_length_train(i)
            train_classes_LDA{j} = i;
            train_classes_knn(j) = i;
        end
    else
        for j = 1:v_length_train(i)
            train_classes_LDA{j+sum(v_length_train(1:i-1))} = i;
            train_classes_knn(j+sum(v_length_train(1:i-1))) = i;
        end
    end      
end

for i = 1:9
    for j = 1:3
        test_classes_LDA{3*(i-1)+j} = i;
        test_classes_knn(3*(i-1)+j) = i;
    end
end

%************************* MultiClass LDA ***************************************

mLDA = LDA(norm_train_data_ch1, train_classes_LDA);
mLDA.Compute();

%dimension of a samples is < (mLDA.NumberOfClasses-1) so following line cannot be executed:
%transformedSamples = mLDA.Transform(meas, mLDA.NumberOfClasses - 1);

transformedTrainSamples = mLDA.Transform(norm_train_data_ch1, 1);
transformedTestSamples = mLDA.Transform(norm_test_data_ch1, 1);

%************************* MultiClass LDA ***************************************

calculatedClases = knnclassify(transformedTestSamples, transformedTrainSamples, train_classes_knn);

simmilarity = [];
for i = 1 : 1 : length(test_classes_knn)
    similarity(i) = ( test_classes_knn(i) == calculatedClases(i) );
end

accuracy = sum(similarity) / length(test_classes_knn);