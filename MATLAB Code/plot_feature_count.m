% test SVM 

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

F1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch1.mat');
F2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch2.mat');
F3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch3.mat');
F4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch4.mat');
F5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_sep\changed_fet_ch5.mat');

F_cc = load('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\channels_comb\changed_fet_CC.mat');

F1 = F1.sorted_fet_mat;
F2 = F2.sorted_fet_mat;
F3 = F3.sorted_fet_mat;
F4 = F4.sorted_fet_mat;
F5 = F5.sorted_fet_mat;

F_cc = F_cc.sorted_fet_mat;

F1_r = [];
F2_r = [];
F3_r = [];
F4_r = [];
F5_r = [];

F_cc_r = [];

for i = 1:10
    F1_r = [F1_r , str2num(F1{i})];
end

for i = 1:10
    F2_r = [F2_r , str2num(F2{i})];
end

for i = 1:10
    F3_r = [F3_r , str2num(F3{i})];
end

for i = 1:10
    F4_r = [F4_r , str2num(F4{i})];
end

for i = 1:10
    F5_r = [F5_r , str2num(F5{i})];
end

for i = 1:10
    F_cc_r = [F_cc_r , str2num(F_cc{i})];
end

F1_x = [];
F2_x = [];
F3_x = [];
F4_x = [];
F5_x = [];

F_cc_x = [];

for i = 1:10
    temp  = str2num(F1{i});
    for j = 1:length(temp)
        if ~ismember(temp(j),F1_x)
            F1_x = [F1_x , temp(j)];
        end
    end    
end

for i = 1:10
    temp  = str2num(F2{i});
    for j = 1:length(temp)
        if ~ismember(temp(j),F2_x)
            F2_x = [F2_x , temp(j)];
        end
    end    
end

for i = 1:10
    temp  = str2num(F3{i});
    for j = 1:length(temp)
        if ~ismember(temp(j),F3_x)
            F3_x = [F3_x , temp(j)];
        end
    end    
end

for i = 1:10
    temp  = str2num(F4{i});
    for j = 1:length(temp)
        if ~ismember(temp(j),F4_x)
            F4_x = [F4_x , temp(j)];
        end
    end    
end

for i = 1:10
    temp  = str2num(F5{i});
    for j = 1:length(temp)
        if ~ismember(temp(j),F5_x)
            F5_x = [F5_x , temp(j)];
        end
    end    
end

for i = 1:10
    temp  = str2num(F_cc{i});
    for j = 1:length(temp)
        if ~ismember(temp(j),F_cc_x)
            F_cc_x = [F_cc_x , temp(j)];
        end
    end    
end

F1_x = sort(F1_x); 
F2_x = sort(F2_x);
F3_x = sort(F3_x);
F4_x = sort(F4_x);
F5_x = sort(F5_x);

F_cc_x = sort(F_cc_x);

F1_y = [];
F2_y = [];
F3_y = [];
F4_y = [];
F5_y = [];

F_cc_y = [];

for i = 1:length(F1_x)
    F1_y(i) = sum(F1_x(i)==F1_r);
end

for i = 1:length(F2_x)
    F2_y(i) = sum(F2_x(i)==F2_r);
end

for i = 1:length(F3_x)
    F3_y(i) = sum(F3_x(i)==F3_r);
end

for i = 1:length(F4_x)
    F4_y(i) = sum(F4_x(i)==F4_r);
end

for i = 1:length(F5_x)
    F5_y(i) = sum(F5_x(i)==F5_r);
end

for i = 1:length(F_cc_x)
    F_cc_y(i) = sum(F_cc_x(i)==F_cc_r);
end

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_count_ch1.xlsx'), F1_y)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_label_ch1.xlsx'), F1_x)

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_count_ch2.xlsx'), F2_y)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_label_ch2.xlsx'), F2_x)

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_count_ch3.xlsx'), F3_y)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_label_ch3.xlsx'), F3_x)

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_count_ch4.xlsx'), F4_y)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_label_ch4.xlsx'), F4_x)

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_count_ch5.xlsx'), F5_y)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_label_ch6.xlsx'), F5_x)

xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_count_cc.xlsx'), F_cc_y)
xlswrite(('C:\Users\Nathan\Google Drive\Thesis\My data\SVM_tests\old_SVM_Gaus_FT_label_cc.xlsx'), F_cc_x)


% figure('units','normalized','outerposition',[0 0 1 1])
% bar(F1_x,F1_y)
% title('Bar Graph Showing Feature Recurrence Using SVM on CH1')
% xticks(F1_x(1):1:F1_x(end))
% xlim([(F1_x(1)-1) (F1_x(end)+1)])
% xlabel('Features') 
% ylabel('Recurrence')
% saveas(gcf,'BG_SVM_CH1.png')
% % 
% figure('units','normalized','outerposition',[0 0 1 1])
% bar(F2_x,F2_y)
% title('Bar Graph Showing Feature Recurrence Using SVM on CH2')
% xticks(F2_x(1):1:F2_x(end))
% xlim([(F2_x(1)-1) (F2_x(end)+1)])
% xlabel('Features') 
% ylabel('Recurrence')
% saveas(gcf,'BG_SVM_CH2.png')
% % 
% figure('units','normalized','outerposition',[0 0 1 1])
% bar(F3_x,F3_y)
% title('Bar Graph Showing Feature Recurrence Using SVM on CH3')
% xticks(F3_x(1):1:F3_x(end))
% xlim([(F3_x(1)-1) (F3_x(end)+1)])
% xlabel('Features') 
% ylabel('Recurrence')
% saveas(gcf,'BG_SVM_CH3.png')
% % 
% figure('units','normalized','outerposition',[0 0 1 1])
% bar(F4_x,F4_y)
% title('Bar Graph Showing Feature Recurrence Using SVM on CH4')
% xticks(F4_x(1):1:F4_x(end))
% xlim([(F4_x(1)-1) (F4_x(end)+1)])
% xlabel('Features') 
% ylabel('Recurrence')
% saveas(gcf,'BG_SVM_CH4.png')
% % 
% figure('units','normalized','outerposition',[0 0 1 1])
% bar(F5_x,F5_y)
% title('Bar Graph Showing Feature Recurrence Using SVM on CH5')
% xticks(F5_x(1):1:F5_x(end))
% xlim([(F5_x(1)-1) (F5_x(end)+1)])
% xlabel('Features') 
% ylabel('Recurrence')
% saveas(gcf,'BG_SVM_CH5.png')
% % 
% figure('units','normalized','outerposition',[0 0 1 1])
% bar(F_cc_x,F_cc_y)
% title('Bar Graph Showing Feature Recurrence Using SVM on CC')
% xticks(F_cc_x(1):1:F_cc_x(end))
% xlim([(F_cc_x(1)-1) (F_cc_x(end)+1)])
% xlabel('Features') 
% ylabel('Recurrence')
% saveas(gcf,'BG_SVM_CC.png')
