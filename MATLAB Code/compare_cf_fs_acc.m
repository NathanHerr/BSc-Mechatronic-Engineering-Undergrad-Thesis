clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

cf_CC_KNN = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\KNN tests\compare features\new\acc_CC_cf.mat');
cf_sep_KNN = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\KNN tests\compare features\new\acc_sep_cf.mat');
cf_CC_LDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\LDA tests\compare features\new\acc_CC_cf.mat');
cf_sep_LDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\LDA tests\compare features\new\acc_sep_cf.mat');
cf_CC_QDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\QDA tests\compare features\new\acc_CC_cf.mat');
cf_sep_QDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\QDA tests\compare features\new\acc_sep_cf.mat');
cf_CC_SVM1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\acc_CC_cf.mat');
cf_sep_SVM1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\acc_sep_cf.mat');
cf_CC_SVM2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_CC_cf.mat');
cf_sep_SVM2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_sep_cf.mat');
% cf_ch1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_ch1_cf.mat');
% cf_ch2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_ch2_cf.mat');
% cf_ch3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_ch3_cf.mat');
% cf_ch4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_ch4_cf.mat');
% cf_ch5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_ch5_cf.mat');

cf_CC_KNN = cf_CC_KNN.accuracy_CC;
cf_sep_KNN = cf_sep_KNN.accuracy_sep_cf;
cf_CC_LDA = cf_CC_LDA.accuracy_CC;
cf_sep_LDA = cf_sep_LDA.accuracy_sep_cf;
cf_CC_QDA = cf_CC_QDA.accuracy_CC;
cf_sep_QDA = cf_sep_QDA.accuracy_sep_cf;
cf_CC_SVM1 = cf_CC_SVM1.accuracy_CC;
cf_sep_SVM1 = cf_sep_SVM1.accuracy_sep_cf;
cf_CC_SVM2 = cf_CC_SVM2.accuracy_CC;
cf_sep_SVM2 = cf_sep_SVM2.accuracy_sep_cf;
% cf_ch1 = cf_ch1.accuracy_ch1;
% cf_ch2 = cf_ch2.accuracy_ch2;
% cf_ch3 = cf_ch3.accuracy_ch3;
% cf_ch4 = cf_ch4.accuracy_ch4;
% cf_ch5 = cf_ch5.accuracy_ch5;

fs_CC_KNN = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\KNN tests\CC single\acc_CC.mat');
fs_sep_KNN = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\KNN tests\compare features\new\acc_sep_fs.mat');
fs_CC_LDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\LDA tests\CC single\acc_CC.mat');
fs_sep_LDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\LDA tests\compare features\new\acc_sep_fs.mat');
fs_CC_QDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\QDA tests\CC single\acc_CC.mat');
fs_sep_QDA = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\QDA tests\compare features\new\acc_sep_fs.mat');
fs_CC_SVM1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\CC single\acc_CC.mat');
fs_sep_SVM1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\acc_sep_fs.mat');
fs_CC_SVM2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\CC single\changed_acc_CC.mat');
fs_sep_SVM2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\compare features\new\changed_acc_sep_fs.mat');
% fs_ch1 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep single\changed_acc_mat_ch1.mat');
% fs_ch2 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep single\changed_acc_mat_ch2.mat');
% fs_ch3 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep single\changed_acc_mat_ch3.mat');
% fs_ch4 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep single\changed_acc_mat_ch4.mat');
% fs_ch5 = load('C:\Users\Nathan\Google Drive\Thesis\My data\new data\SVM tests\mixed sep single\changed_acc_mat_ch5.mat');

fs_CC_KNN = fs_CC_KNN.sorted_acc_mat;
fs_sep_KNN = fs_sep_KNN.accuracy_sep_fs;
fs_CC_LDA = fs_CC_LDA.sorted_acc_mat;
fs_sep_LDA = fs_sep_LDA.accuracy_sep_fs;
fs_CC_QDA = fs_CC_QDA.sorted_acc_mat;
fs_sep_QDA = fs_sep_QDA.accuracy_sep_fs;
fs_CC_SVM1 = fs_CC_SVM1.sorted_acc_mat;
fs_sep_SVM1 = fs_sep_SVM1.accuracy_sep_fs;
fs_CC_SVM2 = fs_CC_SVM2.sorted_acc_mat;
fs_sep_SVM2 = fs_sep_SVM2.accuracy_sep_fs;
% fs_ch1 = fs_ch1.sorted_acc_mat;
% fs_ch2 = fs_ch2.sorted_acc_mat;
% fs_ch3 = fs_ch3.sorted_acc_mat;
% fs_ch4 = fs_ch4.sorted_acc_mat;
% fs_ch5 = fs_ch5.sorted_acc_mat;

accs = [cf_CC_KNN fs_CC_KNN ; cf_sep_KNN fs_sep_KNN ; cf_CC_LDA fs_CC_LDA ; cf_sep_LDA fs_sep_LDA ; cf_CC_QDA fs_CC_QDA ; cf_sep_QDA fs_sep_QDA ; cf_CC_SVM1 fs_CC_SVM1 ; cf_sep_SVM1 fs_sep_SVM1 ; cf_CC_SVM2 fs_CC_SVM2 ; cf_sep_SVM2 fs_sep_SVM2 ]; %cf_ch1 fs_ch1 ; cf_ch2 fs_ch2 ; cf_ch3 fs_ch3 ; cf_ch4 fs_ch4 ; cf_ch5 fs_ch5];

figure('units','normalized','outerposition',[0 0 1 1])
b = bar(accs);
set(b(1),'FaceColor','r');
set(b(2),'FaceColor','b');
title('Bar Graph Comparing Accuracies Using Data Set 2','fontsize',16)
xticklabels({'CC KNN','Sep KNN','CC LDA','Sep LDA','CC QDA','Sep QDA','CC SVM1','Sep SVM1','CC SVM2','SepSVM2'});%,'Ch1','Ch2','Ch3','Ch4','Ch5'})
ylabel('Accuracy','fontsize',12) 
xlabel('Tests','fontsize',12)
legend('cf','fs')
saveas(gcf,'data_set2_compare_acc.png')
