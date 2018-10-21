%% Normalising length

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

lowest_data_length = 8771;
data_matrix = zeros(150,30000);
v_index = 1; % Change this!!!

dirs = {'ext all new' ,'flex 1,2,3 new' ,'flex 1,2 new' ,'flex 1 new' 'flex 2,3,4,5 new', 'flex 3,4,5 new', 'flex 4,5 new', 'flex 4,5 new2', 'flex 5 new', 'flex all new', 'nothing'};
v_length = [4 25 25 25 25 24 26 26 28 25 26 35];
data_length = zeros(1,v_length(v_index));
data_midpoints = zeros(1,v_length(v_index));


% for v_index = 1:length(v_length)
    for j = 1:v_length(v_index)
        for k = 1:5
            variable_name = sprintf('v%d_ch%d',j,k);
            file_name = strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\',variable_name);
            temp_row = struct2cell(load(file_name));
            temp_row = temp_row{1};
            data_matrix(((k-1)*30)+j:((k-1)*30)+j,1:length(temp_row)) = temp_row;
        end
        data_length(j) = length(temp_row);  
    end

    for i = 1:v_length(v_index)
        data_midpoints(i) = floor(((data_length(i)+1)/2));
    end

    data_matrix_2 = zeros(5*v_length(v_index),lowest_data_length);

    for j = 1:5
       for i = 1:v_length(v_index)
           if mod(lowest_data_length,2) == 0
                temp_row = data_matrix((j-1)*30+i:(j-1)*30+i,:);
                data_matrix_2((j-1)*v_length(v_index)+i:(j-1)*v_length(v_index)+i,:) = temp_row(data_midpoints(i)+1-floor(lowest_data_length/2):data_midpoints(i)+floor(lowest_data_length/2));
           else
                temp_row = data_matrix((j-1)*30+i:(j-1)*30+i,:);
                data_matrix_2((j-1)*v_length(v_index)+i:(j-1)*v_length(v_index)+i,:) = temp_row(data_midpoints(i)-floor(lowest_data_length/2):data_midpoints(i)+floor(lowest_data_length/2));
           end

       end
    end

    data_matrix_ch1 = data_matrix_2(1:v_length(v_index),:);
    data_matrix_ch2 = data_matrix_2(v_length(v_index)+1:2*v_length(v_index),:);
    data_matrix_ch3 = data_matrix_2(2*v_length(v_index)+1:3*v_length(v_index),:);
    data_matrix_ch4 = data_matrix_2(3*v_length(v_index)+1:4*v_length(v_index),:);
    data_matrix_ch5 = data_matrix_2(4*v_length(v_index)+1:5*v_length(v_index),:);

    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch1'), 'data_matrix_ch1');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch2'), 'data_matrix_ch2');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch3'), 'data_matrix_ch3');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch4'), 'data_matrix_ch4');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch5'), 'data_matrix_ch5');
    
% end



