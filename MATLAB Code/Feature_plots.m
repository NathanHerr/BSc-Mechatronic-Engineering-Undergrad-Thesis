%% try compare clustering of features for each data set - attempt 1

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'2.0 ext all 5' ,'2.0 flex 2,3,4,5' ,'2.0 flex 3,4,5' ,'2.0 flex 5' '2.0 flex 5,4', '2.0 flex all 5', '3.0 flex 4,5', '3.0 flex 5', 'ext 2 all digits submax', 'Extend all submax', 'flex. all digits max contsction', 'flex 1,2,3 max', 'flex 1,2,3 sub max', 'flex 1,2 max', 'flex 1,2 sub max', 'flex 1 max', 'flex 1 sub max', 'flex 2,3,4,5 max' ,'flex 2,3,4,5 submax' ,'Flex 2, all digits submax' ,'Flex all, submax 10 reps', 'flex dig 3,4,5 max', 'flex dig 3,4,5 submax', 'flex digit 4,5 max' ,'flex digit 4,5 submax' ,'flex digit 5 max' ,'flex digit 5 submax'};

D = 1; %gesture 

ch1 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch1_features.mat'));
ch2 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch2_features.mat'));
ch3 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch3_features.mat'));
ch4 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch4_features.mat'));
ch5 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch5_features.mat'));

ch1 = ch1.feature_matrix_ch1;
ch2 = ch2.feature_matrix_ch2;
ch3 = ch3.feature_matrix_ch3;
ch4 = ch4.feature_matrix_ch4;
ch5 = ch5.feature_matrix_ch5;

ch1 = normc(ch1);
ch2 = normc(ch2);
ch3 = normc(ch3);
ch4 = normc(ch4);
ch5 = normc(ch5);

combined_matrix = [ch1;ch2;ch3;ch4;ch5];

group1 = [1 5 6 7 8 9 12 22 23 24 25 29 30 31 32 33];
group2 = [2 3 4 10 11 13 14 15 18 20 21];
group3 = [16 18 19];
group4 = [17 26 27 28 34];

channels = [1 2 3 4 5];
colours = {'b','r','g','y','m','c'};
markers = {'o','+','*','x','s','d'};
pnts = {colours,markers};
[x y] = ndgrid(pnts{:});
combos_pnts = [x(:) y(:)];
combos_chs = combntns(channels,2);
fig_cnt = 1;

for j = 1:length(combos_chs)
    temp_row = combos_chs(j,:);
    temp_chx = temp_row(1);
    temp_chy = temp_row(2);
    
    hold off;
    figure(fig_cnt);
    hold on;
    for i = 1:length(group1)
        temp_pnt = combos_pnts(i,:);
        scatter(combined_matrix(size(ch1,1)*(temp_chx-1)+1:size(ch1,1)*(temp_chx-1)+size(ch1,1),i),combined_matrix(size(ch1,1)*(temp_chy-1)+1:size(ch1,1)*(temp_chy-1)+size(ch1,1),group1(i)),temp_pnt{1},temp_pnt{2});
    end
    
    fig_cnt  = fig_cnt +1;
    
    hold off;
    figure(fig_cnt );
    hold on;
    for i = 1:length(group2)
        temp_pnt = combos_pnts(i,:);
        scatter(combined_matrix(size(ch1,1)*(temp_chx-1)+1:size(ch1,1)*(temp_chx-1)+size(ch1,1),i),combined_matrix(size(ch1,1)*(temp_chy-1)+1:size(ch1,1)*(temp_chy-1)+size(ch1,1),group2(i)),temp_pnt{1},temp_pnt{2});
    end
    
    fig_cnt  = fig_cnt +1;
    
    hold off;
    figure(fig_cnt);
    hold on;
    for i = 1:length(group3)
        temp_pnt = combos_pnts(i,:);
        scatter(combined_matrix(size(ch1,1)*(temp_chx-1)+1:size(ch1,1)*(temp_chx-1)+size(ch1,1),i),combined_matrix(size(ch1,1)*(temp_chy-1)+1:size(ch1,1)*(temp_chy-1)+size(ch1,1),group3(i)),temp_pnt{1},temp_pnt{2});
    end
    
    fig_cnt  = fig_cnt +1;
    
    hold off;
    figure(fig_cnt);
    hold on;
    for i = 1:length(group4)
        temp_pnt = combos_pnts(i,:);
        scatter(combined_matrix(size(ch1,1)*(temp_chx-1)+1:size(ch1,1)*(temp_chx-1)+size(ch1,1),i),combined_matrix(size(ch1,1)*(temp_chy-1)+1:size(ch1,1)*(temp_chy-1)+size(ch1,1),group4(i)),temp_pnt{1},temp_pnt{2});
    end
    
    fig_cnt  = fig_cnt +1;
end
 
%% try compare clustering of features for each data set - attempt 2

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'2.0 ext all 5' ,'2.0 flex 2,3,4,5' ,'2.0 flex 3,4,5' ,'2.0 flex 5' '2.0 flex 5,4', '2.0 flex all 5', '3.0 flex 4,5', '3.0 flex 5', 'ext 2 all digits submax', 'Extend all submax', 'flex. all digits max contsction', 'flex 1,2,3 max', 'flex 1,2,3 sub max', 'flex 1,2 max', 'flex 1,2 sub max', 'flex 1 max', 'flex 1 sub max', 'flex 2,3,4,5 max' ,'flex 2,3,4,5 submax' ,'Flex 2, all digits submax' ,'Flex all, submax 10 reps', 'flex dig 3,4,5 max', 'flex dig 3,4,5 submax', 'flex digit 4,5 max' ,'flex digit 4,5 submax' ,'flex digit 5 max' ,'flex digit 5 submax'};

D = 1; %gesture 

ch1 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch1_features.mat'));
ch2 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch2_features.mat'));
ch3 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch3_features.mat'));
ch4 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch4_features.mat'));
ch5 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch5_features.mat'));

ch1 = ch1.feature_matrix_ch1;
ch2 = ch2.feature_matrix_ch2;
ch3 = ch3.feature_matrix_ch3;
ch4 = ch4.feature_matrix_ch4;
ch5 = ch5.feature_matrix_ch5;

combined_matrix = [ch1;ch2;ch3;ch4;ch5];

group1 = [1 5 6 7 8 9 12 22 23 24 25 29 30 31 32 33];
group2 = [2 3 4 10 11 13 14 15 18 20 21];
group3 = [16 18 19];
group4 = [17 26 27 28 34];

fig_cnt = 1;

for ch = 1:5
   temp_mat = normc(combined_matrix(size(ch1,1)*(ch-1)+1:size(ch1,1)*(ch-1)+size(ch1,1),:));
    
   hold off
   figure(fig_cnt);
   hold on;
    
   for ft = 1:length(group1)
       plot(ft,temp_mat(:,group1(ft)),'o');
   end
   
   fig_cnt  = fig_cnt +1;
    
   hold off;
   figure(fig_cnt );
   hold on;
   
   for ft = 1:length(group2)
       plot(ft,temp_mat(:,group2(ft)),'o');
   end
   
   fig_cnt  = fig_cnt +1;
    
   hold off;
   figure(fig_cnt );
   hold on;
   
   for ft = 1:length(group3)
       plot(ft,temp_mat(:,group3(ft)),'o');
   end
   
   fig_cnt  = fig_cnt +1;
    
   hold off;
   figure(fig_cnt );
   hold on;
   
   for ft = 1:length(group4)
       plot(ft,temp_mat(:,group4(ft)),'o');
   end
   
   fig_cnt  = fig_cnt +1;
    
end

%% try compare clustering of features for each data set - attempt 3

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'2.0 ext all 5' ,'2.0 flex 2,3,4,5' ,'2.0 flex 3,4,5' ,'2.0 flex 5' '2.0 flex 5,4', '2.0 flex all 5', '3.0 flex 4,5', '3.0 flex 5', 'ext 2 all digits submax', 'Extend all submax', 'flex. all digits max contsction', 'flex 1,2,3 max', 'flex 1,2,3 sub max', 'flex 1,2 max', 'flex 1,2 sub max', 'flex 1 max', 'flex 1 sub max', 'flex 2,3,4,5 max' ,'flex 2,3,4,5 submax' ,'Flex 2, all digits submax' ,'Flex all, submax 10 reps', 'flex dig 3,4,5 max', 'flex dig 3,4,5 submax', 'flex digit 4,5 max' ,'flex digit 4,5 submax' ,'flex digit 5 max' ,'flex digit 5 submax'};

for D = 1:length(dirs)

    ch1 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch1_features.mat'));
    ch2 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch2_features.mat'));
    ch3 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch3_features.mat'));
    ch4 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch4_features.mat'));
    ch5 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch5_features.mat'));

    ch1 = ch1.feature_matrix_ch1;
    ch2 = ch2.feature_matrix_ch2;
    ch3 = ch3.feature_matrix_ch3;
    ch4 = ch4.feature_matrix_ch4;
    ch5 = ch5.feature_matrix_ch5;

    var_matrix = zeros(size(ch1,2),5);

    combined_matrix = [ch1;ch2;ch3;ch4;ch5];

    for ch = 1:5
       temp_mat = normc(combined_matrix(size(ch1,1)*(ch-1)+1:size(ch1,1)*(ch-1)+size(ch1,1),:));
       var_matrix(:,ch) = var(temp_mat);
    end
    
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\var_matrix'), 'var_matrix');
    
end

%% Variance compare

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'2.0 ext all 5' ,'2.0 flex 2,3,4,5' ,'2.0 flex 3,4,5' ,'2.0 flex 5' '2.0 flex 5,4', '2.0 flex all 5', '3.0 flex 4,5', '3.0 flex 5', 'ext 2 all digits submax', 'Extend all submax', 'flex. all digits max contsction', 'flex 1,2,3 max', 'flex 1,2,3 sub max', 'flex 1,2 max', 'flex 1,2 sub max', 'flex 1 max', 'flex 1 sub max', 'flex 2,3,4,5 max' ,'flex 2,3,4,5 submax' ,'Flex 2, all digits submax' ,'Flex all, submax 10 reps', 'flex dig 3,4,5 max', 'flex dig 3,4,5 submax', 'flex digit 4,5 max' ,'flex digit 4,5 submax' ,'flex digit 5 max' ,'flex digit 5 submax'};
mv_comp = zeros(length(dirs),1);

for D = 1:length(dirs)
    variance = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\var_matrix.mat'));
    variance = variance.var_matrix;
    mean_var = mean(mean(variance));
    mv_comp(D) = mean_var;
end

%% PCA on features

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'2.0 ext all 5' ,'2.0 flex 2,3,4,5' ,'2.0 flex 3,4,5' ,'2.0 flex 5' '2.0 flex 5,4', '2.0 flex all 5', '3.0 flex 4,5', '3.0 flex 5', 'ext 2 all digits submax', 'Extend all submax', 'flex. all digits max contsction', 'flex 1,2,3 max', 'flex 1,2,3 sub max', 'flex 1,2 max', 'flex 1,2 sub max', 'flex 1 max', 'flex 1 sub max', 'flex 2,3,4,5 max' ,'flex 2,3,4,5 submax' ,'Flex 2, all digits submax' ,'Flex all, submax 10 reps', 'flex dig 3,4,5 max', 'flex dig 3,4,5 submax', 'flex digit 4,5 max' ,'flex digit 4,5 submax' ,'flex digit 5 max' ,'flex digit 5 submax'};

D = 1; %gesture 

ch1 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch1_features.mat'));
ch2 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch2_features.mat'));
ch3 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch3_features.mat'));
ch4 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch4_features.mat'));
ch5 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\',dirs{D},'\ch5_features.mat'));

ch1 = ch1.feature_matrix_ch1;
ch2 = ch2.feature_matrix_ch2;
ch3 = ch3.feature_matrix_ch3;
ch4 = ch4.feature_matrix_ch4;
ch5 = ch5.feature_matrix_ch5;

ch1 = normc(ch1);
ch2 = normc(ch2);
ch3 = normc(ch3);
ch4 = normc(ch4);
ch5 = normc(ch5);

ch1_coeffs = zeros(34);
ch2_coeffs = zeros(34);
ch3_coeffs = zeros(34);
ch4_coeffs = zeros(34);
ch5_coeffs = zeros(34);

comb = combntns(1:size(ch1,1),2);

combined_matrix = [ch1;ch2;ch3;ch4;ch5];
combined_coeffs = [ch1_coeffs;ch2_coeffs;ch3_coeffs;ch4_coeffs;ch5_coeffs];

for ch = 1:5
    temp_mat = combined_matrix(size(ch1,1)*(ch-1)+1:size(ch1,1)*(ch-1)+size(ch1,1),:);
    temp_coeffs = pca(temp_mat);
    combined_coeffs(size(temp_coeffs,1)*(ch-1)+1:size(temp_coeffs,1)*(ch-1)+size(temp_coeffs,1),1:size(temp_coeffs,2)) = temp_coeffs; 
end

for ch = 1:5
    temp_mat = combined_coeffs(34*(ch-1)+1:34*(ch-1)+34,1:21);
    figure(ch)
    plot(temp_mat(:,1),temp_mat(:,2),'o')
end

%% hmm
C1_m1 = load('cyl_ch1_m1_features.mat');
C1_m2 = load('cyl_ch1_m2_features.mat');
C1_fm1 = load('cyl_ch1_fm1_features.mat');
C1_fm2 = load('cyl_ch1_fm2_features.mat');
C1_fm3 = load('cyl_ch1_fm3_features.mat');

C1_m1 = C1_m1.feature_matrix_m1;
C1_m2 = C1_m2.feature_matrix_m2;
C1_fm1 = C1_fm1.feature_matrix_fm1;
C1_fm2 = C1_fm2.feature_matrix_fm2;
C1_fm3 = C1_fm3.feature_matrix_fm3;

C2_m1 = load('cyl_ch2_m1_features.mat');
C2_m2 = load('cyl_ch2_m2_features.mat');
C2_fm1 = load('cyl_ch2_fm1_features.mat');
C2_fm2 = load('cyl_ch2_fm2_features.mat');
C2_fm3 = load('cyl_ch2_fm3_features.mat');

C2_m1 = C2_m1.feature_matrix_m1;
C2_m2 = C2_m2.feature_matrix_m2;
C2_fm1 = C2_fm1.feature_matrix_fm1;
C2_fm2 = C2_fm2.feature_matrix_fm2;
C2_fm3 = C2_fm3.feature_matrix_fm3;

H1_m1 = load('hook_ch1_m1_features.mat');
H1_m2 = load('hook_ch1_m2_features.mat');
H1_fm1 = load('hook_ch1_fm1_features.mat');
H1_fm2 = load('hook_ch1_fm2_features.mat');
H1_fm3 = load('hook_ch1_fm3_features.mat');

H1_m1 = H1_m1.feature_matrix_m1;
H1_m2 = H1_m2.feature_matrix_m2;
H1_fm1 = H1_fm1.feature_matrix_fm1;
H1_fm2 = H1_fm2.feature_matrix_fm2;
H1_fm3 = H1_fm3.feature_matrix_fm3;

H2_m1 = load('hook_ch2_m1_features.mat');
H2_m2 = load('hook_ch2_m2_features.mat');
H2_fm1 = load('hook_ch2_fm1_features.mat');
H2_fm2 = load('hook_ch2_fm2_features.mat');
H2_fm3 = load('hook_ch2_fm3_features.mat');

H2_m1 = H2_m1.feature_matrix_m1;
H2_m2 = H2_m2.feature_matrix_m2;
H2_fm1 = H2_fm1.feature_matrix_fm1;
H2_fm2 = H2_fm2.feature_matrix_fm2;
H2_fm3 = H2_fm3.feature_matrix_fm3;

L1_m1 = load('lat_ch1_m1_features.mat');
L1_m2 = load('lat_ch1_m2_features.mat');
L1_fm1 = load('lat_ch1_fm1_features.mat');
L1_fm2 = load('lat_ch1_fm2_features.mat');
L1_fm3 = load('lat_ch1_fm3_features.mat');

L1_m1 = L1_m1.feature_matrix_m1;
L1_m2 = L1_m2.feature_matrix_m2;
L1_fm1 = L1_fm1.feature_matrix_fm1;
L1_fm2 = L1_fm2.feature_matrix_fm2;
L1_fm3 = L1_fm3.feature_matrix_fm3;

L2_m1 = load('lat_ch2_m1_features.mat');
L2_m2 = load('lat_ch2_m2_features.mat');
L2_fm1 = load('lat_ch2_fm1_features.mat');
L2_fm2 = load('lat_ch2_fm2_features.mat');
L2_fm3 = load('lat_ch2_fm3_features.mat');

L2_m1 = L2_m1.feature_matrix_m1;
L2_m2 = L2_m2.feature_matrix_m2;
L2_fm1 = L2_fm1.feature_matrix_fm1;
L2_fm2 = L2_fm2.feature_matrix_fm2;
L2_fm3 = L2_fm3.feature_matrix_fm3;

P1_m1 = load('palm_ch1_m1_features.mat');
P1_m2 = load('palm_ch1_m2_features.mat');
P1_fm1 = load('palm_ch1_fm1_features.mat');
P1_fm2 = load('palm_ch1_fm2_features.mat');
P1_fm3 = load('palm_ch1_fm3_features.mat');

P1_m1 = P1_m1.feature_matrix_m1;
P1_m2 = P1_m2.feature_matrix_m2;
P1_fm1 = P1_fm1.feature_matrix_fm1;
P1_fm2 = P1_fm2.feature_matrix_fm2;
P1_fm3 = P1_fm3.feature_matrix_fm3;

P2_m1 = load('palm_ch2_m1_features.mat');
P2_m2 = load('palm_ch2_m2_features.mat');
P2_fm1 = load('palm_ch2_fm1_features.mat');
P2_fm2 = load('palm_ch2_fm2_features.mat');
P2_fm3 = load('palm_ch2_fm3_features.mat');

P2_m1 = P2_m1.feature_matrix_m1;
P2_m2 = P2_m2.feature_matrix_m2;
P2_fm1 = P2_fm1.feature_matrix_fm1;
P2_fm2 = P2_fm2.feature_matrix_fm2;
P2_fm3 = P2_fm3.feature_matrix_fm3;

S1_m1 = load('spher_ch1_m1_features.mat');
S1_m2 = load('spher_ch1_m2_features.mat');
S1_fm1 = load('spher_ch1_fm1_features.mat');
S1_fm2 = load('spher_ch1_fm2_features.mat');
S1_fm3 = load('spher_ch1_fm3_features.mat');

S1_m1 = S1_m1.feature_matrix_m1;
S1_m2 = S1_m2.feature_matrix_m2;
S1_fm1 = S1_fm1.feature_matrix_fm1;
S1_fm2 = S1_fm2.feature_matrix_fm2;
S1_fm3 = S1_fm3.feature_matrix_fm3;

S2_m1 = load('spher_ch2_m1_features.mat');
S2_m2 = load('spher_ch2_m2_features.mat');
S2_fm1 = load('spher_ch2_fm1_features.mat');
S2_fm2 = load('spher_ch2_fm2_features.mat');
S2_fm3 = load('spher_ch2_fm3_features.mat');

S2_m1 = S2_m1.feature_matrix_m1;
S2_m2 = S2_m2.feature_matrix_m2;
S2_fm1 = S2_fm1.feature_matrix_fm1;
S2_fm2 = S2_fm2.feature_matrix_fm2;
S2_fm3 = S2_fm3.feature_matrix_fm3;

T1_m1 = load('tip_ch1_m1_features.mat');
T1_m2 = load('tip_ch1_m2_features.mat');
T1_fm1 = load('tip_ch1_fm1_features.mat');
T1_fm2 = load('tip_ch1_fm2_features.mat');
T1_fm3 = load('tip_ch1_fm3_features.mat');

T1_m1 = T1_m1.feature_matrix_m1;
T1_m2 = T1_m2.feature_matrix_m2;
T1_fm1 = T1_fm1.feature_matrix_fm1;
T1_fm2 = T1_fm2.feature_matrix_fm2;
T1_fm3 = T1_fm3.feature_matrix_fm3;

T2_m1 = load('tip_ch2_m1_features.mat');
T2_m2 = load('tip_ch2_m2_features.mat');
T2_fm1 = load('tip_ch2_fm1_features.mat');
T2_fm2 = load('tip_ch2_fm2_features.mat');
T2_fm3 = load('tip_ch2_fm3_features.mat');

T2_m1 = T2_m1.feature_matrix_m1;
T2_m2 = T2_m2.feature_matrix_m2;
T2_fm1 = T2_fm1.feature_matrix_fm1;
T2_fm2 = T2_fm2.feature_matrix_fm2;
T2_fm3 = T2_fm3.feature_matrix_fm3;

%% plot male 1

for j = 1:30
    hold off;
    scatter(C1_m1(:,j),C2_m1(:,j),'b')
    hold on;
    scatter(H1_m1(:,j),H2_m1(:,j),'r')
    scatter(L1_m1(:,j),L2_m1(:,j),'g')
    scatter(P1_m1(:,j),P2_m1(:,j),'y')
    scatter(S1_m1(:,j),S2_m1(:,j),'m')
    scatter(T1_m1(:,j),T2_m1(:,j),'c')
    
    filename = sprintf('%s_%d','M1_',j);
    saveas(gcf,filename,'png');
end



%% plot male 2

for j = 1:31
    hold off;
    scatter(C1_m2(:,j),C2_m2(:,j),'b')
    hold on;
    scatter(H1_m2(:,j),H2_m2(:,j),'r')
    scatter(L1_m2(:,j),L2_m2(:,j),'g')
    scatter(P1_m2(:,j),P2_m2(:,j),'y')
    scatter(S1_m2(:,j),S2_m2(:,j),'m')
    scatter(T1_m2(:,j),T2_m2(:,j),'c')
    
    filename = sprintf('%s_%d','M2_',j);
    saveas(gcf,filename,'png');
end


%% plot female 1

for j = 1:31
    hold off;
    scatter(C1_fm1(:,1),C2_fm1(:,1),'b')
    hold on;
    scatter(H1_fm1(:,1),H2_fm1(:,1),'r')
    scatter(L1_fm1(:,1),L2_fm1(:,1),'g')
    scatter(P1_fm1(:,1),P2_fm1(:,1),'y')
    scatter(S1_fm1(:,1),S2_fm1(:,1),'m')
    scatter(T1_fm1(:,1),T2_fm1(:,1),'c')
    
    filename = sprintf('%s_%d','FM1_',j);
    saveas(gcf,filename,'png');
end


%% plot female 2

for j = 1:31
    hold off;
    scatter(C1_fm2(:,1),C2_fm2(:,1),'b')
    hold on;
    scatter(H1_fm2(:,1),H2_fm2(:,1),'r')
    scatter(L1_fm2(:,1),L2_fm2(:,1),'g')
    scatter(P1_fm2(:,1),P2_fm2(:,1),'y')
    scatter(S1_fm2(:,1),S2_fm2(:,1),'m')
    scatter(T1_fm2(:,1),T2_fm2(:,1),'c')
    
    filename = sprintf('%s_%d','FM2_',j);
    saveas(gcf,filename,'png');
end


%% plot female 3 - IEMG

for j = 1:31
    hold off;
    scatter(C1_fm3(:,1),C2_fm3(:,1),'b')
    hold on;
    scatter(H1_fm3(:,1),H2_fm3(:,1),'r')
    scatter(L1_fm3(:,1),L2_fm3(:,1),'g')
    scatter(P1_fm3(:,1),P2_fm3(:,1),'y')
    scatter(S1_fm3(:,1),S2_fm3(:,1),'m')
    scatter(T1_fm3(:,1),T2_fm3(:,1),'c')
    
    filename = sprintf('%s_%d','FM3_',j);
    saveas(gcf,filename,'png');
end


