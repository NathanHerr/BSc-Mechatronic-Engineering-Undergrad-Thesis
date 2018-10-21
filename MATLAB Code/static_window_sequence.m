clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'ext all new' ,'flex 1,2,3 new' ,'flex 1,2 new' ,'flex 1 new' 'flex 2,3,4,5 new', 'flex 3,4,5 new', 'flex 4,5 new', 'flex 4,5 new2', 'flex 5 new', 'flex all new', 'nothing'};

% X_1_comb = [];
% X_2_comb = [];
% X_3_comb = [];
% X_4_comb = [];
% X_5_comb = [];
% 
% for D = 1:length(dirs)

    X = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3.mat'));
    
    X_1 = X.Data{1};
    X_2 = X.Data{3};
    X_3 = X.Data{3};
    X_4 = X.Data{4};
    X_5 = X.Data{5};

    X_1 = X_1';
    X_2 = X_2';
    X_3 = X_3';
    X_4 = X_4';
    X_5 = X_5';

    window_size = 2616;

    groups = floor(length(X_1)/window_size);

    X_1_div  = [];
    X_2_div  = [];
    X_3_div  = [];
    X_4_div  = [];
    X_5_div  = [];

    for i = 1:groups
        if i == 1
            X_1_div(i,:) = X_1(:,1:window_size);
            X_2_div(i,:) = X_2(:,1:window_size);
            X_3_div(i,:) = X_3(:,1:window_size);
            X_4_div(i,:) = X_4(:,1:window_size);
            X_5_div(i,:) = X_5(:,1:window_size);
        else
            X_1_div(i,:) = X_1(:,window_size*(i-1)+1:window_size*i);
            X_2_div(i,:) = X_2(:,window_size*(i-1)+1:window_size*i);
            X_3_div(i,:) = X_3(:,window_size*(i-1)+1:window_size*i);
            X_4_div(i,:) = X_4(:,window_size*(i-1)+1:window_size*i);
            X_5_div(i,:) = X_5(:,window_size*(i-1)+1:window_size*i);
        end
    end
    
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch1'), 'X_1_div');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch2'), 'X_2_div');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch3'), 'X_3_div');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch4'), 'X_4_div');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch5'), 'X_5_div');
    
%     X_1_comb = [X_1_comb ; X_1_div];
%     X_2_comb = [X_2_comb ; X_2_div];
%     X_3_comb = [X_3_comb ; X_3_div];
%     X_4_comb = [X_4_comb ; X_4_div];
%     X_5_comb = [X_5_comb ; X_5_div];
% 
% end
% 
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\data_matrix_ch1', 'X_1_comb');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\data_matrix_ch2', 'X_2_comb');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\data_matrix_ch3', 'X_3_comb');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\data_matrix_ch4', 'X_4_comb');
% save('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 2\data_matrix_ch5', 'X_5_comb');
%     
