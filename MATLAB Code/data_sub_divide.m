clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

DIRS = {'ext all new' ,'flex 1,2,3 new' ,'flex 1,2 new' ,'flex 1 new' 'flex 2,3,4,5 new', 'flex 3,4,5 new', 'flex 4,5 new', 'flex 4,5 new2', 'flex 5 new', 'flex all new', 'nothing'};

% for D = 1:length(DIRS)
    ch1 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch1.mat'));
    ch2 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch2.mat'));
    ch3 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch3.mat'));
    ch4 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch4.mat'));
    ch5 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data_matrix_ch5.mat'));

    ch1 = ch1.data_matrix_ch1;
    ch2 = ch2.data_matrix_ch2;
    ch3 = ch3.data_matrix_ch3;
    ch4 = ch4.data_matrix_ch4;
    ch5 = ch5.data_matrix_ch5;

%     ch1 = ch1(:,1:end-1);
%     ch2 = ch2(:,1:end-1);
%     ch3 = ch3(:,1:end-1);
%     ch4 = ch4(:,1:end-1);
%     ch5 = ch5(:,1:end-1);

    window_size = 2616;
    groups = floor(length(ch1)/window_size);
    
    sub_div_ch1  = [];
    sub_div_ch2  = [];
    sub_div_ch3  = [];
    sub_div_ch4  = [];
    sub_div_ch5  = [];
    
for k = 1:4
    temp_ch1 = ch1(k,:);
    temp_ch2 = ch2(k,:);
    temp_ch3 = ch3(k,:);
    temp_ch4 = ch4(k,:);
    temp_ch5 = ch5(k,:);
    
    sub_div_ch1 = [sub_div_ch1 ; temp_ch1(:,1:window_size);temp_ch1(:,window_size+1:window_size*2);temp_ch1(:,window_size*2+1:window_size*3)];
    sub_div_ch2 = [sub_div_ch2 ;temp_ch2(:,1:window_size);temp_ch2(:,window_size+1:window_size*2);temp_ch2(:,window_size*2+1:window_size*3)];
    sub_div_ch3 = [sub_div_ch3 ;temp_ch3(:,1:window_size);temp_ch3(:,window_size+1:window_size*2);temp_ch3(:,window_size*2+1:window_size*3)];
    sub_div_ch4 = [sub_div_ch4 ;temp_ch4(:,1:window_size);temp_ch4(:,window_size+1:window_size*2);temp_ch4(:,window_size*2+1:window_size*3)];
    sub_div_ch5 = [sub_div_ch5 ;temp_ch5(:,1:window_size);temp_ch5(:,window_size+1:window_size*2);temp_ch5(:,window_size*2+1:window_size*3)];

%     for i = 1:groups
%         if i == 1
%             sub_div_ch1(i,:) = temp_ch1(:,1:window_size);
%             sub_div_ch2(i,:) = temp_ch2(:,1:window_size);
%             sub_div_ch3(i,:) = temp_ch3(:,1:window_size);
%             sub_div_ch4(i,:) = temp_ch4(:,1:window_size);
%             sub_div_ch5(i,:) = temp_ch5(:,1:window_size);
%         else
%             sub_div_ch1(i,:) = ch1(:,window_size*(i-1)+1:window_size*i);
%             sub_div_ch2(i,:) = ch2(:,window_size*(i-1)+1:window_size*i);
%             sub_div_ch3(i,:) = ch3(:,window_size*(i-1)+1:window_size*i);
%             sub_div_ch4(i,:) = ch4(:,window_size*(i-1)+1:window_size*i);
%             sub_div_ch5(i,:) = ch5(:,window_size*(i-1)+1:window_size*i);
%         end
%     end    
end

%     sub_div_ch1 = [ch1(:,1:window_size);ch1(:,window_size+1:window_size*2);ch1(:,window_size*2+1:window_size*3)];%;ch1(:,window_size*3+1:window_size*4)];
%     sub_div_ch2 = [ch2(:,1:window_size);ch2(:,window_size+1:window_size*2);ch2(:,window_size*2+1:window_size*3)];%;ch2(:,window_size*3+1:window_size*4)];
%     sub_div_ch3 = [ch3(:,1:window_size);ch3(:,window_size+1:window_size*2);ch3(:,window_size*2+1:window_size*3)];%;ch3(:,window_size*3+1:window_size*4)];
%     sub_div_ch4 = [ch4(:,1:window_size);ch4(:,window_size+1:window_size*2);ch4(:,window_size*2+1:window_size*3)];%;ch4(:,window_size*3+1:window_size*4)];
%     sub_div_ch5 = [ch5(:,1:window_size);ch5(:,window_size+1:window_size*2);ch5(:,window_size*2+1:window_size*3)];%;ch5(:,window_size*3+1:window_size*4)];

    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\data_matrix_ch1'), 'sub_div_ch1');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\data_matrix_ch2'), 'sub_div_ch2');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\data_matrix_ch3'), 'sub_div_ch3');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\data_matrix_ch4'), 'sub_div_ch4');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\data divided\data_matrix_ch5'), 'sub_div_ch5');
% end