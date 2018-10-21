clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

load ovariancancer; 

rng(8000,'twister');

grp_new = grp2idx(grp);
obs = double(obs);

data_set = [obs grp_new];

%%

holdoutCVP = cvpartition(grp_new,'holdout',56)
dataTrain = obs(holdoutCVP.training,:);
grpTrain = grp(holdoutCVP.training);
dataTrainG1 = dataTrain(grp2idx(grpTrain)==1,:);
dataTrainG2 = dataTrain(grp2idx(grpTrain)==2,:);
[h,p,ci,stat] = ttest2(dataTrainG1,dataTrainG2,'Vartype','unequal');

[~,featureIdxSortbyP] = sort(p,2); % sort the features

dataSet = [data_set(:,featureIdxSortbyP(1:150)) data_set(:,end)];

%%

FSSettings.ErrorEstMethod      = 'ProposedAB';
FSSettings.FSMethod            = 'SFS';
%------- Classifier Settings -------
FSSettings.GammaParam          = 0.015;
FSSettings.ConfMatSwitch       = 0; 
FSSettings.PercTest            = 10; 
%-- Sequential Selection Settings -----
FSSettings.MahalInfoLossMethod = 'on';
FSSettings.TotalNStepsThres    = 10;
FSSettings.LogViewOfIntStep    = 1;
%------------- ReliefF --------------
FSSettings.NCorePatterns  = 10;
FSSettings.NHits          = 10;
%-----------------------------------

[A, B, C, D, E] = ForwSel_main(dataSet,FSSettings);