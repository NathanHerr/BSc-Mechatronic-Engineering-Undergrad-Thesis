clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

load('C:\Users\Nathan\Desktop\Thesis\My data\new data\flex all new.mat') % Load data set

format longg;
format compact;
fontSize = 20;

signal_ch1 = Data{1}; %
signal_ch2 = Data{2}; %
signal_ch3 = Data{3}; %
signal_ch4 = Data{4}; %
signal_ch5 = Data{5}; %

% signal_ch1 = signal_ch1(4.2e4:end); %
% signal_ch2 = signal_ch2(4.2e4:end); %
% signal_ch3 = signal_ch3(4.2e4:end); %
% signal_ch4 = signal_ch4(4.2e4:end); %
% signal_ch5 = signal_ch5(4.2e4:end); %

% Take absolute value and median filter to get rid of oscillations.
filteredSignal_ch1 = medfilt1(abs(signal_ch1), 1500);
filteredSignal_ch2 = medfilt1(abs(signal_ch2), 1500);
filteredSignal_ch3 = medfilt1(abs(signal_ch3), 1500);
filteredSignal_ch4 = medfilt1(abs(signal_ch4), 1500);
filteredSignal_ch5 = medfilt1(abs(signal_ch5), 1500);

% Find the quiet parts between the bursts.
quietParts_ch1 = filteredSignal_ch1 < 50;
quietParts_ch2 = filteredSignal_ch2 < 50;
quietParts_ch3 = filteredSignal_ch3 < 23;
quietParts_ch4 = filteredSignal_ch4 < 23;
quietParts_ch5 = filteredSignal_ch5 < 50;

% Find the starting and ending elements of the important information.
startingBlockIndexes_ch1 = find(diff(quietParts_ch1) < 0);
endingBlockIndexes_ch1 = find(diff(quietParts_ch1) > 0);

startingBlockIndexes_ch2 = find(diff(quietParts_ch2) < 0);
endingBlockIndexes_ch2 = find(diff(quietParts_ch2) > 0);

startingBlockIndexes_ch3 = find(diff(quietParts_ch3) < 0);
endingBlockIndexes_ch3 = find(diff(quietParts_ch3) > 0);

startingBlockIndexes_ch4 = find(diff(quietParts_ch4) < 0);
endingBlockIndexes_ch4 = find(diff(quietParts_ch4) > 0);

startingBlockIndexes_ch5 = find(diff(quietParts_ch5) < 0);
endingBlockIndexes_ch5 = find(diff(quietParts_ch5) > 0);

% plot channels

figure('units','normalized','outerposition',[0 0 1 1])
hold on
grid on;
plot(signal_ch1/10); %%divided by 10 for plotting only
plot(filteredSignal_ch1);
plot(quietParts_ch1*100, 'LineWidth', 3);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
legend({'Raw Signal','Filtered Signal'},'Location','northeast');
title('Flex All: Ch1', 'FontSize', fontSize);
% saveas(gcf,'Flex_All_CH1_ext.png')

figure('units','normalized','outerposition',[0 0 1 1])
hold on
grid on;
plot(signal_ch2/10); %%divided by 10 for plotting only
plot(filteredSignal_ch2);
plot(quietParts_ch2*100, 'LineWidth', 3);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
legend({'Raw Signal','Filtered Signal'},'Location','northeast');
title('Flex All: Ch2', 'FontSize', fontSize);
% saveas(gcf,'Flex_All_CH2_ext.png')

figure('units','normalized','outerposition',[0 0 1 1])
hold on
grid on;
plot(signal_ch3/10); %%divided by 10 for plotting only
plot(filteredSignal_ch3);
plot(quietParts_ch3*100, 'LineWidth', 3);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
legend({'Raw Signal','Filtered Signal'},'Location','northeast');
title('Flex All: Ch3', 'FontSize', fontSize);
% saveas(gcf,'Flex_All_CH3_ext.png')

figure('units','normalized','outerposition',[0 0 1 1])
hold on
grid on;
plot(signal_ch4/10); %%divided by 10 for plotting only
plot(filteredSignal_ch4);
plot(quietParts_ch4*100, 'LineWidth', 3);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
legend({'Raw Signal','Filtered Signal'},'Location','northeast');
title('Flex All: Ch4', 'FontSize', fontSize);
% saveas(gcf,'Flex_All_CH4_ext.png')

figure('units','normalized','outerposition',[0 0 1 1])
hold on
grid on
plot(signal_ch5/10); %%divided by 10 for plotting only
plot(filteredSignal_ch5);
plot(quietParts_ch5*100, 'LineWidth', 3);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
legend({'Raw Signal','Filtered Signal'},'Location','northeast');
title('Flex All: Ch5', 'FontSize', fontSize);
% saveas(gcf,'Flex_All_CH5_ext.png')

% Find the starting and ending elements of the important information.
startingBlockIndexes_gen = find(diff(quietParts_ch5) < 0);
endingBlockIndexes_gen = find(diff(quietParts_ch5) > 0);

% Extract the blocks
v1_ch1 = signal_ch1(startingBlockIndexes_gen(1):endingBlockIndexes_gen(1));
v2_ch1 = signal_ch1(startingBlockIndexes_gen(2):endingBlockIndexes_gen(2));
v3_ch1 = signal_ch1(startingBlockIndexes_gen(3):endingBlockIndexes_gen(3));
v4_ch1 = signal_ch1(startingBlockIndexes_gen(4):endingBlockIndexes_gen(4));
v5_ch1 = signal_ch1(startingBlockIndexes_gen(5):endingBlockIndexes_gen(5));
v6_ch1 = signal_ch1(startingBlockIndexes_gen(6):endingBlockIndexes_gen(6));
v7_ch1 = signal_ch1(startingBlockIndexes_gen(7):endingBlockIndexes_gen(7));
v8_ch1 = signal_ch1(startingBlockIndexes_gen(8):endingBlockIndexes_gen(8));
v9_ch1 = signal_ch1(startingBlockIndexes_gen(9):endingBlockIndexes_gen(9));
v10_ch1 = signal_ch1(startingBlockIndexes_gen(10):endingBlockIndexes_gen(10));
v11_ch1 = signal_ch1(startingBlockIndexes_gen(11):endingBlockIndexes_gen(11));
v12_ch1 = signal_ch1(startingBlockIndexes_gen(12):endingBlockIndexes_gen(12));
v13_ch1 = signal_ch1(startingBlockIndexes_gen(13):endingBlockIndexes_gen(13));
v14_ch1 = signal_ch1(startingBlockIndexes_gen(14):endingBlockIndexes_gen(14));
v15_ch1 = signal_ch1(startingBlockIndexes_gen(15):endingBlockIndexes_gen(15));
v16_ch1 = signal_ch1(startingBlockIndexes_gen(16):endingBlockIndexes_gen(16));
v17_ch1 = signal_ch1(startingBlockIndexes_gen(17):endingBlockIndexes_gen(17));
v18_ch1 = signal_ch1(startingBlockIndexes_gen(18):endingBlockIndexes_gen(18));
v19_ch1 = signal_ch1(startingBlockIndexes_gen(19):endingBlockIndexes_gen(19));
v20_ch1 = signal_ch1(startingBlockIndexes_gen(20):endingBlockIndexes_gen(20));
v21_ch1 = signal_ch1(startingBlockIndexes_gen(21):endingBlockIndexes_gen(21));
v22_ch1 = signal_ch1(startingBlockIndexes_gen(22):endingBlockIndexes_gen(22));
v23_ch1 = signal_ch1(startingBlockIndexes_gen(23):endingBlockIndexes_gen(23));
v24_ch1 = signal_ch1(startingBlockIndexes_gen(24):endingBlockIndexes_gen(24));
v25_ch1 = signal_ch1(startingBlockIndexes_gen(25):endingBlockIndexes_gen(25));
v26_ch1 = signal_ch1(startingBlockIndexes_gen(26):endingBlockIndexes_gen(26));
% v27_ch1 = signal_ch1(startingBlockIndexes_gen(27):endingBlockIndexes_gen(27));
% v28_ch1 = signal_ch1(startingBlockIndexes_gen(28):endingBlockIndexes_gen(28));

v1_ch2 = signal_ch2(startingBlockIndexes_gen(1):endingBlockIndexes_gen(1));
v2_ch2 = signal_ch2(startingBlockIndexes_gen(2):endingBlockIndexes_gen(2));
v3_ch2 = signal_ch2(startingBlockIndexes_gen(3):endingBlockIndexes_gen(3));
v4_ch2 = signal_ch2(startingBlockIndexes_gen(4):endingBlockIndexes_gen(4));
v5_ch2 = signal_ch2(startingBlockIndexes_gen(5):endingBlockIndexes_gen(5));
v6_ch2 = signal_ch2(startingBlockIndexes_gen(6):endingBlockIndexes_gen(6));
v7_ch2 = signal_ch2(startingBlockIndexes_gen(7):endingBlockIndexes_gen(7));
v8_ch2 = signal_ch2(startingBlockIndexes_gen(8):endingBlockIndexes_gen(8));
v9_ch2 = signal_ch2(startingBlockIndexes_gen(9):endingBlockIndexes_gen(9));
v10_ch2 = signal_ch2(startingBlockIndexes_gen(10):endingBlockIndexes_gen(10));
v11_ch2 = signal_ch2(startingBlockIndexes_gen(11):endingBlockIndexes_gen(11));
v12_ch2 = signal_ch2(startingBlockIndexes_gen(12):endingBlockIndexes_gen(12));
v13_ch2 = signal_ch2(startingBlockIndexes_gen(13):endingBlockIndexes_gen(13));
v14_ch2 = signal_ch2(startingBlockIndexes_gen(14):endingBlockIndexes_gen(14));
v15_ch2 = signal_ch2(startingBlockIndexes_gen(15):endingBlockIndexes_gen(15));
v16_ch2 = signal_ch2(startingBlockIndexes_gen(16):endingBlockIndexes_gen(16));
v17_ch2 = signal_ch2(startingBlockIndexes_gen(17):endingBlockIndexes_gen(17));
v18_ch2 = signal_ch2(startingBlockIndexes_gen(18):endingBlockIndexes_gen(18));
v19_ch2 = signal_ch2(startingBlockIndexes_gen(19):endingBlockIndexes_gen(19));
v20_ch2 = signal_ch2(startingBlockIndexes_gen(20):endingBlockIndexes_gen(20));
v21_ch2 = signal_ch2(startingBlockIndexes_gen(21):endingBlockIndexes_gen(21));
v22_ch2 = signal_ch2(startingBlockIndexes_gen(22):endingBlockIndexes_gen(22));
v23_ch2 = signal_ch2(startingBlockIndexes_gen(23):endingBlockIndexes_gen(23));
v24_ch2 = signal_ch2(startingBlockIndexes_gen(24):endingBlockIndexes_gen(24));
v25_ch2 = signal_ch2(startingBlockIndexes_gen(25):endingBlockIndexes_gen(25));
v26_ch2 = signal_ch2(startingBlockIndexes_gen(26):endingBlockIndexes_gen(26));
% v27_ch2 = signal_ch2(startingBlockIndexes_gen(27):endingBlockIndexes_gen(27));
% v28_ch2 = signal_ch2(startingBlockIndexes_gen(28):endingBlockIndexes_gen(28));

v1_ch3 = signal_ch3(startingBlockIndexes_gen(1):endingBlockIndexes_gen(1));
v2_ch3 = signal_ch3(startingBlockIndexes_gen(2):endingBlockIndexes_gen(2));
v3_ch3 = signal_ch3(startingBlockIndexes_gen(3):endingBlockIndexes_gen(3));
v4_ch3 = signal_ch3(startingBlockIndexes_gen(4):endingBlockIndexes_gen(4));
v5_ch3 = signal_ch3(startingBlockIndexes_gen(5):endingBlockIndexes_gen(5));
v6_ch3 = signal_ch3(startingBlockIndexes_gen(6):endingBlockIndexes_gen(6));
v7_ch3 = signal_ch3(startingBlockIndexes_gen(7):endingBlockIndexes_gen(7));
v8_ch3 = signal_ch3(startingBlockIndexes_gen(8):endingBlockIndexes_gen(8));
v9_ch3 = signal_ch3(startingBlockIndexes_gen(9):endingBlockIndexes_gen(9));
v10_ch3 = signal_ch3(startingBlockIndexes_gen(10):endingBlockIndexes_gen(10));
v11_ch3 = signal_ch3(startingBlockIndexes_gen(11):endingBlockIndexes_gen(11));
v12_ch3 = signal_ch3(startingBlockIndexes_gen(12):endingBlockIndexes_gen(12));
v13_ch3 = signal_ch3(startingBlockIndexes_gen(13):endingBlockIndexes_gen(13));
v14_ch3 = signal_ch3(startingBlockIndexes_gen(14):endingBlockIndexes_gen(14));
v15_ch3 = signal_ch3(startingBlockIndexes_gen(15):endingBlockIndexes_gen(15));
v16_ch3 = signal_ch3(startingBlockIndexes_gen(16):endingBlockIndexes_gen(16));
v17_ch3 = signal_ch3(startingBlockIndexes_gen(17):endingBlockIndexes_gen(17));
v18_ch3 = signal_ch3(startingBlockIndexes_gen(18):endingBlockIndexes_gen(18));
v19_ch3 = signal_ch3(startingBlockIndexes_gen(19):endingBlockIndexes_gen(19));
v20_ch3 = signal_ch3(startingBlockIndexes_gen(20):endingBlockIndexes_gen(20));
v21_ch3 = signal_ch3(startingBlockIndexes_gen(21):endingBlockIndexes_gen(21));
v22_ch3 = signal_ch3(startingBlockIndexes_gen(22):endingBlockIndexes_gen(22));
v23_ch3 = signal_ch3(startingBlockIndexes_gen(23):endingBlockIndexes_gen(23));
v24_ch3 = signal_ch3(startingBlockIndexes_gen(24):endingBlockIndexes_gen(24));
v25_ch3 = signal_ch3(startingBlockIndexes_gen(25):endingBlockIndexes_gen(25));
v26_ch3 = signal_ch3(startingBlockIndexes_gen(26):endingBlockIndexes_gen(26));
% v27_ch3 = signal_ch3(startingBlockIndexes_gen(27):endingBlockIndexes_gen(27));
% v28_ch3 = signal_ch3(startingBlockIndexes_gen(28):endingBlockIndexes_gen(28));

v1_ch4 = signal_ch4(startingBlockIndexes_gen(1):endingBlockIndexes_gen(1));
v2_ch4 = signal_ch4(startingBlockIndexes_gen(2):endingBlockIndexes_gen(2));
v3_ch4 = signal_ch4(startingBlockIndexes_gen(3):endingBlockIndexes_gen(3));
v4_ch4 = signal_ch4(startingBlockIndexes_gen(4):endingBlockIndexes_gen(4));
v5_ch4 = signal_ch4(startingBlockIndexes_gen(5):endingBlockIndexes_gen(5));
v6_ch4 = signal_ch4(startingBlockIndexes_gen(6):endingBlockIndexes_gen(6));
v7_ch4 = signal_ch4(startingBlockIndexes_gen(7):endingBlockIndexes_gen(7));
v8_ch4 = signal_ch4(startingBlockIndexes_gen(8):endingBlockIndexes_gen(8));
v9_ch4 = signal_ch4(startingBlockIndexes_gen(9):endingBlockIndexes_gen(9));
v10_ch4 = signal_ch4(startingBlockIndexes_gen(10):endingBlockIndexes_gen(10));
v11_ch4 = signal_ch4(startingBlockIndexes_gen(11):endingBlockIndexes_gen(11));
v12_ch4 = signal_ch4(startingBlockIndexes_gen(12):endingBlockIndexes_gen(12));
v13_ch4 = signal_ch4(startingBlockIndexes_gen(13):endingBlockIndexes_gen(13));
v14_ch4 = signal_ch4(startingBlockIndexes_gen(14):endingBlockIndexes_gen(14));
v15_ch4 = signal_ch4(startingBlockIndexes_gen(15):endingBlockIndexes_gen(15));
v16_ch4 = signal_ch4(startingBlockIndexes_gen(16):endingBlockIndexes_gen(16));
v17_ch4 = signal_ch4(startingBlockIndexes_gen(17):endingBlockIndexes_gen(17));
v18_ch4 = signal_ch4(startingBlockIndexes_gen(18):endingBlockIndexes_gen(18));
v19_ch4 = signal_ch4(startingBlockIndexes_gen(19):endingBlockIndexes_gen(19));
v20_ch4 = signal_ch4(startingBlockIndexes_gen(20):endingBlockIndexes_gen(20));
v21_ch4 = signal_ch4(startingBlockIndexes_gen(21):endingBlockIndexes_gen(21));
v22_ch4 = signal_ch4(startingBlockIndexes_gen(22):endingBlockIndexes_gen(22));
v23_ch4 = signal_ch4(startingBlockIndexes_gen(23):endingBlockIndexes_gen(23));
v24_ch4 = signal_ch4(startingBlockIndexes_gen(24):endingBlockIndexes_gen(24));
v25_ch4 = signal_ch4(startingBlockIndexes_gen(25):endingBlockIndexes_gen(25));
v26_ch4 = signal_ch4(startingBlockIndexes_gen(26):endingBlockIndexes_gen(26));
% v27_ch4 = signal_ch4(startingBlockIndexes_gen(27):endingBlockIndexes_gen(27));
% v28_ch4 = signal_ch4(startingBlockIndexes_gen(28):endingBlockIndexes_gen(28));

%******************************************************************************************

% v = [v1c1 v1c2;
%     v2c1 v2c2]
% 
% for row = 1:length(v)
%     for col = 
%         
%     end
% end

%******************************************************************************************

v1_ch5 = signal_ch5(startingBlockIndexes_gen(1):endingBlockIndexes_gen(1));
v2_ch5 = signal_ch5(startingBlockIndexes_gen(2):endingBlockIndexes_gen(2));
v3_ch5 = signal_ch5(startingBlockIndexes_gen(3):endingBlockIndexes_gen(3));
v4_ch5 = signal_ch5(startingBlockIndexes_gen(4):endingBlockIndexes_gen(4));
v5_ch5 = signal_ch5(startingBlockIndexes_gen(5):endingBlockIndexes_gen(5));
v6_ch5 = signal_ch5(startingBlockIndexes_gen(6):endingBlockIndexes_gen(6));
v7_ch5 = signal_ch5(startingBlockIndexes_gen(7):endingBlockIndexes_gen(7));
v8_ch5 = signal_ch5(startingBlockIndexes_gen(8):endingBlockIndexes_gen(8));
v9_ch5 = signal_ch5(startingBlockIndexes_gen(9):endingBlockIndexes_gen(9));
v10_ch5 = signal_ch5(startingBlockIndexes_gen(10):endingBlockIndexes_gen(10));
v11_ch5 = signal_ch5(startingBlockIndexes_gen(11):endingBlockIndexes_gen(11));
v12_ch5 = signal_ch5(startingBlockIndexes_gen(12):endingBlockIndexes_gen(12));
v13_ch5 = signal_ch5(startingBlockIndexes_gen(13):endingBlockIndexes_gen(13));
v14_ch5 = signal_ch5(startingBlockIndexes_gen(14):endingBlockIndexes_gen(14));
v15_ch5 = signal_ch5(startingBlockIndexes_gen(15):endingBlockIndexes_gen(15));
v16_ch5 = signal_ch5(startingBlockIndexes_gen(16):endingBlockIndexes_gen(16));
v17_ch5 = signal_ch5(startingBlockIndexes_gen(17):endingBlockIndexes_gen(17));
v18_ch5 = signal_ch5(startingBlockIndexes_gen(18):endingBlockIndexes_gen(18));
v19_ch5 = signal_ch5(startingBlockIndexes_gen(19):endingBlockIndexes_gen(19));
v20_ch5 = signal_ch5(startingBlockIndexes_gen(20):endingBlockIndexes_gen(20));
v21_ch5 = signal_ch5(startingBlockIndexes_gen(21):endingBlockIndexes_gen(21));
v22_ch5 = signal_ch5(startingBlockIndexes_gen(22):endingBlockIndexes_gen(22));
v23_ch5 = signal_ch5(startingBlockIndexes_gen(23):endingBlockIndexes_gen(23));
v24_ch5 = signal_ch5(startingBlockIndexes_gen(24):endingBlockIndexes_gen(24));
v25_ch5 = signal_ch5(startingBlockIndexes_gen(25):endingBlockIndexes_gen(25));
v26_ch5 = signal_ch5(startingBlockIndexes_gen(26):endingBlockIndexes_gen(26));
% v27_ch5 = signal_ch5(startingBlockIndexes_gen(27):endingBlockIndexes_gen(27));
% v28_ch5 = signal_ch5(startingBlockIndexes_gen(28):endingBlockIndexes_gen(28));

%%

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

load('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing.mat') % Load data set

format longg;
format compact;
fontSize = 20;

signal_ch1 = Data{1}; %
signal_ch2 = Data{2}; %
signal_ch3 = Data{3}; %
signal_ch4 = Data{4}; %
signal_ch5 = Data{5}; %

N = 10465;
new_SZ = N*ceil(length(signal_ch1)/N);
change = new_SZ-length(signal_ch1);
reshaped_ch1 = zeros(N,floor(length(signal_ch1)/N));

for i = 1:floor(length(signal_ch1)/N)
    if i == 1
        reshaped_ch1(:,i) = signal_ch1(1:N);
    else
        reshaped_ch1(:,i) = signal_ch1(N*(i-1)+1:N*i);
    end
end

for i = 1:floor(length(signal_ch1)/N)
    file_name = sprintf('v%d_ch1',i);
    temp_variable = reshaped_ch1(:,i);
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\',file_name,'.mat'), 'temp_variable');   
end

for i = 1:floor(length(signal_ch2)/N)
    if i == 1
        reshaped_ch2(:,i) = signal_ch2(1:N);
    else
        reshaped_ch2(:,i) = signal_ch2(N*(i-1)+1:N*i);
    end
end

for i = 1:floor(length(signal_ch2)/N)
    file_name = sprintf('v%d_ch2',i);
    temp_variable = reshaped_ch2(:,i);
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\',file_name,'.mat'), 'temp_variable');   
end

for i = 1:floor(length(signal_ch3)/N)
    if i == 1
        reshaped_ch3(:,i) = signal_ch3(1:N);
    else
        reshaped_ch3(:,i) = signal_ch3(N*(i-1)+1:N*i);
    end
end

for i = 1:floor(length(signal_ch3)/N)
    file_name = sprintf('v%d_ch3',i);
    temp_variable = reshaped_ch3(:,i);
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\',file_name,'.mat'), 'temp_variable');   
end

for i = 1:floor(length(signal_ch4)/N)
    if i == 1
        reshaped_ch4(:,i) = signal_ch4(1:N);
    else
        reshaped_ch4(:,i) = signal_ch4(N*(i-1)+1:N*i);
    end
end

for i = 1:floor(length(signal_ch4)/N)
    file_name = sprintf('v%d_ch4',i);
    temp_variable = reshaped_ch4(:,i);
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\',file_name,'.mat'), 'temp_variable');   
end

for i = 1:floor(length(signal_ch5)/N)
    if i == 1
        reshaped_ch5(:,i) = signal_ch5(1:N);
    else
        reshaped_ch5(:,i) = signal_ch5(N*(i-1)+1:N*i);
    end
end

for i = 1:floor(length(signal_ch5)/N)
    file_name = sprintf('v%d_ch5',i);
    temp_variable = reshaped_ch5(:,i);
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\nothing\',file_name,'.mat'), 'temp_variable');   
end

%% save sections

for i = 1:5
    count = 0;
    for j = 1:length(startingBlockIndexes_gen)
            file_name = sprintf('v%d_ch%d',j,i);
            variable_name = sprintf('v%d_ch%d',j,i);
            save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence\test 3\',file_name,'.mat'), variable_name);
    end    
end

%% Plot sections

% Plot the 5 signals.
figure;
subplot(2, 1, 1);
plot(v1_ch5);
grid on;
title('V1', 'FontSize', fontSize);
subplot(2, 1, 2);
plot(v2_ch5);
grid on;
title('V2', 'FontSize', fontSize);
figure;
subplot(3, 1, 1);
plot(v3_ch5);
grid on;
title('V3', 'FontSize', fontSize);
subplot(3, 1, 2);
plot(v4_ch5);
grid on;
title('V4', 'FontSize', fontSize);
subplot(3, 1, 3);
plot(v5_ch5);
grid on;
title('V5', 'FontSize', fontSize);

% Plot the 5 signals.
figure;
subplot(5, 1, 1);
plot(v6_ch5);
grid on;
title('V6', 'FontSize', fontSize);
subplot(5, 1, 2);
plot(v7_ch5);
grid on;
title('V7', 'FontSize', fontSize);
subplot(5, 1, 3);
plot(v8_ch5);
grid on;
title('V8', 'FontSize', fontSize);
subplot(5, 1, 4);
plot(v9_ch5);
grid on;
title('V9', 'FontSize', fontSize);
subplot(5, 1, 5);
plot(v10_ch5);
grid on;
title('V10', 'FontSize', fontSize);

% Plot the 5 signals.
figure;
subplot(5, 1, 1);
plot(v11_ch5);
grid on;
title('V11', 'FontSize', fontSize);
subplot(5, 1, 2);
plot(v12_ch5);
grid on;
title('V12', 'FontSize', fontSize);
subplot(5, 1, 3);
plot(v13_ch5);
grid on;
title('V13', 'FontSize', fontSize);
subplot(5, 1, 4);
plot(v14_ch5);
grid on;
title('V14', 'FontSize', fontSize);
subplot(5, 1, 5);
plot(v15_ch5);
grid on;
title('V15', 'FontSize', fontSize);

% Plot the 5 signals.
figure;
subplot(2, 1, 1);
plot(v16_ch5);
grid on;
title('V16', 'FontSize', fontSize);
subplot(2, 1, 2);
plot(v17_ch5);
grid on;
title('V17', 'FontSize', fontSize);
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4, 1, 1);
plot(v18_ch5);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
grid on;
title('Segment 1', 'FontSize', fontSize);
subplot(4, 1, 2);
plot(v19_ch5);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
grid on;
title('Segment 2', 'FontSize', fontSize);
subplot(4, 1, 3);
plot(v20_ch5);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
grid on;
title('Segment 3', 'FontSize', fontSize);
subplot(4, 1, 4);
plot(v21_ch5);
xlabel('Samples (n)');
ylabel('Magnitude (uV)');
grid on;
title('Segment 4', 'FontSize', fontSize);
saveas(gcf,'Flex_All_4_seg.png')

% Plot the 5 signals.
figure;
subplot(6, 1, 1);
plot(v22_ch5);
grid on;
title('V21', 'FontSize', fontSize);
subplot(6, 1, 2);
plot(v23_ch5);
grid on;
title('V22', 'FontSize', fontSize);
subplot(6, 1, 3);
plot(v24_ch5);
grid on;
title('V23', 'FontSize', fontSize);
subplot(6, 1, 4);
plot(v25_ch5);
grid on;
title('V24', 'FontSize', fontSize);
subplot(6, 1, 5);
plot(v20_ch5);
grid on;
title('V25', 'FontSize', fontSize);
subplot(6, 1, 6);
plot(v26_ch5);
grid on;
title('V26', 'FontSize', fontSize);
