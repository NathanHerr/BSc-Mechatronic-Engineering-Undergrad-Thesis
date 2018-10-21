% Load data

clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.

dirs = {'ext all new' ,'flex 1,2,3 new' ,'flex 1,2 new' ,'flex 1 new' 'flex 2,3,4,5 new', 'flex 3,4,5 new', 'flex 4,5 new', 'flex 4,5 new2', 'flex 5 new', 'flex all new', 'nothing'};
% dirs = {'2.0 flex all 5','2.0 ext all 5','3.0 flex 5','3.0 flex 4,5','2.0 flex 3,4,5','2.0 flex 2,3,4,5','flex 1,2,3 max','flex 1,2 max','flex 1 max','nothing'};


% for D = 1:length(dirs)

    ch1 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch1.mat'));
    ch2 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch2.mat'));
    ch3 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch3.mat'));
    ch4 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch4.mat'));
    ch5 = load(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\data_matrix_ch5.mat'));

    matrix_ch1 = ch1.X_1_div; 
    matrix_ch2 = ch2.X_2_div;
    matrix_ch3 = ch3.X_3_div;
    matrix_ch4 = ch4.X_4_div;
    matrix_ch5 = ch5.X_5_div;

    N = length(matrix_ch1);
    M = size(matrix_ch1,1);

    % Time-domain features -> IEMG

    IEMG_ch1 = zeros(M,1);
    IEMG_ch2 = zeros(M,1);
    IEMG_ch3 = zeros(M,1);
    IEMG_ch4 = zeros(M,1);
    IEMG_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        IEMG_ch1(j) = trapz(abs(temp_row));
    %     for i = 1:N
    %         temp_val = abs(temp_row(i));
    %         IEMG_ch1(j) = IEMG_ch1(j) + temp_val;
    %     end    
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        IEMG_ch2(j) = trapz(abs(temp_row));
    %     for i = 1:N
    %         temp_val = abs(temp_row(i));
    %         IEMG_ch2(j) = IEMG_ch2(j) + temp_val;
    %     end    
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        IEMG_ch3(j) = trapz(abs(temp_row));
    %     for i = 1:N
    %         temp_val = abs(temp_row(i));
    %         IEMG_ch3(j) = IEMG_ch3(j) + temp_val;
    %     end    
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        IEMG_ch4(j) = trapz(abs(temp_row));
    %     for i = 1:N
    %         temp_val = abs(temp_row(i));
    %         IEMG_ch4(j) = IEMG_ch4(j) + temp_val;
    %     end    
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        IEMG_ch5(j) = trapz(abs(temp_row));
    %     for i = 1:N
    %         temp_val = abs(temp_row(i));
    %         IEMG_ch5(j) = IEMG_ch5(j) + temp_val;
    %     end    
    end

    % MAV

    MAV_ch1 = IEMG_ch1/N;
    MAV_ch2 = IEMG_ch2/N;
    MAV_ch3 = IEMG_ch3/N;
    MAV_ch4 = IEMG_ch4/N;
    MAV_ch5 = IEMG_ch5/N;

    % MMAV1

    MMAV1_ch1 = zeros(M,1);
    MMAV1_ch2 = zeros(M,1);
    MMAV1_ch3 = zeros(M,1);
    MMAV1_ch4 = zeros(M,1);
    MMAV1_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            else
                w_n = 0.5;
            end    
            temp_val = w_n*abs(temp_row(i));
            MMAV1_ch1(j) = MMAV1_ch1(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            else
                w_n = 0.5;
            end    
            temp_val = w_n*abs(temp_row(i));
            MMAV1_ch2(j) = MMAV1_ch2(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            else
                w_n = 0.5;
            end    
            temp_val = w_n*abs(temp_row(i));
            MMAV1_ch3(j) = MMAV1_ch3(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            else
                w_n = 0.5;
            end    
            temp_val = w_n*abs(temp_row(i));
            MMAV1_ch4(j) = MMAV1_ch4(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            else
                w_n = 0.5;
            end    
            temp_val = w_n*abs(temp_row(i));
            MMAV1_ch5(j) = MMAV1_ch5(j)+temp_val;
        end
    end

    MMAV1_ch1 = MMAV1_ch1/N;
    MMAV1_ch2 = MMAV1_ch2/N;
    MMAV1_ch3 = MMAV1_ch3/N;
    MMAV1_ch4 = MMAV1_ch4/N;
    MMAV1_ch5 = MMAV1_ch5/N;

    % MMAV2 

    MMAV2_ch1 = zeros(M,1);
    MMAV2_ch2 = zeros(M,1);
    MMAV2_ch3 = zeros(M,1);
    MMAV2_ch4 = zeros(M,1);
    MMAV2_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            elseif(i<=0.25*N)
                w_n = 4*i/N;
            else
                w_n = 4*(i-N)/N;
            end    
        temp_val = w_n*abs(temp_row(i));
        MMAV2_ch1(j) = MMAV2_ch1(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            elseif(i<=0.25*N)
                w_n = 4*i/N;
            else
                w_n = 4*(i-N)/N;
            end     
        temp_val = w_n*abs(temp_row(i));
        MMAV2_ch2(j) = MMAV2_ch2(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            elseif(i<=0.25*N)
                w_n = 4*i/N;
            else
                w_n = 4*(i-N)/N;
            end    
        temp_val = w_n*abs(temp_row(i));
        MMAV2_ch3(j) = MMAV2_ch3(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            elseif(i<=0.25*N)
                w_n = 4*i/N;
            else
                w_n = 4*(i-N)/N;
            end     
        temp_val = w_n*abs(temp_row(i));
        MMAV2_ch4(j) = MMAV2_ch4(j)+temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            if(0.25*N<=i<=0.75*N)
                w_n = 1;
            elseif(i<=0.25*N)
                w_n = 4*i/N;
            else
                w_n = 4*(i-N)/N;
            end    
        temp_val = w_n*abs(temp_row(i));
        MMAV2_ch5(j) = MMAV2_ch5(j)+temp_val;
        end
    end

    MMAV2_ch1 = MMAV2_ch1/N;
    MMAV2_ch2 = MMAV2_ch2/N;
    MMAV2_ch3 = MMAV2_ch3/N;
    MMAV2_ch4 = MMAV2_ch4/N;
    MMAV2_ch5 = MMAV2_ch5/N;

    % SSI

    SSI_ch1 = zeros(M,1);
    SSI_ch2 = zeros(M,1);
    SSI_ch3 = zeros(M,1);
    SSI_ch4 = zeros(M,1);
    SSI_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^2;
            SSI_ch1(j) = SSI_ch1(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^2;
            SSI_ch2(j) = SSI_ch2(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^2;
            SSI_ch3(j) = SSI_ch3(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^2;
            SSI_ch4(j) = SSI_ch4(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^2;
            SSI_ch5(j) = SSI_ch5(j) + temp_val;
        end  
    end

    % VAR

    VAR_ch1 = SSI_ch1/(N-1);
    VAR_ch2 = SSI_ch2/(N-1);
    VAR_ch3 = SSI_ch3/(N-1);
    VAR_ch4 = SSI_ch4/(N-1);
    VAR_ch5 = SSI_ch5/(N-1);

    % TM3

    TM3_ch1 = zeros(M,1);
    TM3_ch2 = zeros(M,1);
    TM3_ch3 = zeros(M,1);
    TM3_ch4 = zeros(M,1);
    TM3_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^3;
            TM3_ch1(j) = TM3_ch1(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^3;
            TM3_ch2(j) = TM3_ch2(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^3;
            TM3_ch3(j) = TM3_ch3(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^3;
            TM3_ch4(j) = TM3_ch4(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^3;
            TM3_ch5(j) = TM3_ch5(j) + temp_val;
        end  
    end

    TM3_ch1 = abs(TM3_ch1/N);
    TM3_ch2 = abs(TM3_ch2/N);
    TM3_ch3 = abs(TM3_ch3/N);
    TM3_ch4 = abs(TM3_ch4/N);
    TM3_ch5 = abs(TM3_ch5/N);

    % TM4

    TM4_ch1 = zeros(M,1);
    TM4_ch2 = zeros(M,1);
    TM4_ch3 = zeros(M,1);
    TM4_ch4 = zeros(M,1);
    TM4_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^4;
            TM4_ch1(j) = TM4_ch1(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^4;
            TM4_ch2(j) = TM4_ch2(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^4;
            TM4_ch3(j) = TM4_ch3(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^4;
            TM4_ch4(j) = TM4_ch4(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^4;
            TM4_ch5(j) = TM4_ch5(j) + temp_val;
        end  
    end

    TM4_ch1 = abs(TM4_ch1/N);
    TM4_ch2 = abs(TM4_ch2/N);
    TM4_ch3 = abs(TM4_ch3/N);
    TM4_ch4 = abs(TM4_ch4/N);
    TM4_ch5 = abs(TM4_ch5/N);

    % TM5

    TM5_ch1 = zeros(M,1);
    TM5_ch2 = zeros(M,1);
    TM5_ch3 = zeros(M,1);
    TM5_ch4 = zeros(M,1);
    TM5_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^5;
            TM5_ch1(j) = TM5_ch1(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^5;
            TM5_ch2(j) = TM5_ch2(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^5;
            TM5_ch3(j) = TM5_ch3(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^5;
            TM5_ch4(j) = TM5_ch4(j) + temp_val;
        end  
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i))^5;
            TM5_ch5(j) = TM5_ch5(j) + temp_val;
        end  
    end

    TM5_ch1 = abs(TM5_ch1/N);
    TM5_ch2 = abs(TM5_ch2/N);
    TM5_ch3 = abs(TM5_ch3/N);
    TM5_ch4 = abs(TM5_ch4/N);
    TM5_ch5 = abs(TM5_ch5/N);

    % RMS

    RMS_ch1 = sqrt(SSI_ch1/N);
    RMS_ch2 = sqrt(SSI_ch2/N);
    RMS_ch3 = sqrt(SSI_ch3/N);
    RMS_ch4 = sqrt(SSI_ch4/N);
    RMS_ch5 = sqrt(SSI_ch5/N);

    %  Log

    LOG_ch1 = zeros(M,1);
    LOG_ch2 = zeros(M,1);
    LOG_ch3 = zeros(M,1);
    LOG_ch4 = zeros(M,1);
    LOG_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            temp_val = log(abs(temp_row(i))); 
            LOG_ch1(j) = LOG_ch1(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            temp_val = log(abs(temp_row(i))); 
            LOG_ch2(j) = LOG_ch2(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            temp_val = log(abs(temp_row(i))); 
            LOG_ch3(j) = LOG_ch3(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            temp_val = log(abs(temp_row(i))); 
            LOG_ch4(j) = LOG_ch4(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            temp_val = log(abs(temp_row(i))); 
            LOG_ch5(j) = LOG_ch5(j) + temp_val;
        end
    end


    LOG_ch1 = exp(LOG_ch1/N);
    LOG_ch2 = exp(LOG_ch2/N);
    LOG_ch3 = exp(LOG_ch3/N);
    LOG_ch4 = exp(LOG_ch4/N);
    LOG_ch5 = exp(LOG_ch5/N);

    % WL

    WL_ch1 = zeros(M,1);
    WL_ch2 = zeros(M,1);
    WL_ch3 = zeros(M,1);
    WL_ch4 = zeros(M,1);
    WL_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N-1
            temp_val = (abs(temp_row(i+1)-temp_row(i))); 
            WL_ch1(j) = WL_ch1(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N-1
            temp_val = (abs(temp_row(i+1)-temp_row(i))); 
            WL_ch2(j) = WL_ch2(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N-1
            temp_val = (abs(temp_row(i+1)-temp_row(i))); 
            WL_ch3(j) = WL_ch3(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N-1
            temp_val = (abs(temp_row(i+1)-temp_row(i))); 
            WL_ch4(j) = WL_ch4(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N-1
            temp_val = (abs(temp_row(i+1)-temp_row(i))); 
            WL_ch5(j) = WL_ch5(j) + temp_val;
        end
    end

    % AAC

    AAC_ch1 = WL_ch1/N;
    AAC_ch2 = WL_ch2/N;
    AAC_ch3 = WL_ch3/N;
    AAC_ch4 = WL_ch4/N;
    AAC_ch5 = WL_ch5/N;

    % DASDV ****

    DASDV_ch1 = zeros(M,1);
    DASDV_ch2 = zeros(M,1);
    DASDV_ch3 = zeros(M,1);
    DASDV_ch4 = zeros(M,1);
    DASDV_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N-1
            temp_val = (temp_row(i+1)-temp_row(i))^2; 
            DASDV_ch1(j) =DASDV_ch1(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N-1
            temp_val = (temp_row(i+1)-temp_row(i))^2; 
            DASDV_ch2(j) =DASDV_ch2(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N-1
            temp_val = (temp_row(i+1)-temp_row(i))^2; 
            DASDV_ch3(j) =DASDV_ch3(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N-1
            temp_val = (temp_row(i+1)-temp_row(i))^2; 
            DASDV_ch4(j) =DASDV_ch4(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N-1
            temp_val = (temp_row(i+1)-temp_row(i))^2; 
            DASDV_ch5(j) =DASDV_ch5(j) + temp_val;
        end
    end

    DASDV_ch1 = sqrt(DASDV_ch1/(N-1));
    DASDV_ch2 = sqrt(DASDV_ch2/(N-1));
    DASDV_ch3 = sqrt(DASDV_ch3/(N-1));
    DASDV_ch4 = sqrt(DASDV_ch4/(N-1));
    DASDV_ch5 = sqrt(DASDV_ch5/(N-1));

%     % AFB - This wont work....
    a = 1;
    order = 51; %not sure how to choose
    COF = 0.01; %not sure hwo to choose this ??
    b = fir1(order,COF); %fir1 uses hamming window as default

    AFB_ch1 = zeros(M,1);
    AFB_ch2 = zeros(M,1);
    AFB_ch3 = zeros(M,1);
    AFB_ch4 = zeros(M,1);
    AFB_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        filt_ch1 = filter(b,a,temp_row);
        [PKS_ch1,LOCS_ch1] = findpeaks(filt_ch1,'MinPeakHeight',0.0);
        AFB_ch1(j) = PKS_ch1(1);
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        filt_ch2 = filter(b,a,temp_row);
        [PKS_ch2,LOCS_ch2] = findpeaks(filt_ch2,'MinPeakHeight',0.0);
        AFB_ch2(j) = PKS_ch2(1);
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        filt_ch3 = filter(b,a,temp_row);
        [PKS_ch3,LOCS_ch3] = findpeaks(filt_ch3,'MinPeakHeight',0.0);
        AFB_ch3(j) = PKS_ch3(1);
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        filt_ch4 = filter(b,a,temp_row);
        [PKS_ch4,LOCS_ch4] = findpeaks(filt_ch4,'MinPeakHeight',0.0);
        AFB_ch4(j) = PKS_ch4(1);
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        filt_ch5 = filter(b,a,temp_row);
        [PKS_ch5,LOCS_ch5] = findpeaks(filt_ch5,'MinPeakHeight',0.0);
        AFB_ch5(j) = PKS_ch5(1);
    end

    % ZC

    thresh_ch1 = zeros(M,1);
    thresh_ch2 = zeros(M,1);
    thresh_ch3 = zeros(M,1);
    thresh_ch4 = zeros(M,1);
    thresh_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i));
            thresh_ch1(j) = thresh_ch1(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i));
            thresh_ch2(j) = thresh_ch2(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i));
            thresh_ch3(j) = thresh_ch3(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i));
            thresh_ch4(j) = thresh_ch4(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            temp_val = (temp_row(i));
            thresh_ch5(j) = thresh_ch5(j) + temp_val;
        end
    end

    thresh_ch1 = thresh_ch1/N;
    thresh_ch2 = thresh_ch2/N;
    thresh_ch3 = thresh_ch3/N;
    thresh_ch4 = thresh_ch4/N;
    thresh_ch5 = thresh_ch5/N;

    ZC_ch1 = zeros(M,1);
    ZC_ch2 = zeros(M,1);
    ZC_ch3 = zeros(M,1);
    ZC_ch4 = zeros(M,1);
    ZC_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N-1
            if((temp_row(i)>thresh_ch1(j) && temp_row(i+1)<thresh_ch1(j))||(temp_row(i)<thresh_ch1(j) && temp_row(i+1)>thresh_ch1(j)))
                %temp = (intersect(1,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
                temp_val = 1;
            else
                temp_val = 0;
                %temp = (intersect(0,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
            end
        ZC_ch1(j) = ZC_ch1(j) + temp_val;
        end 
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N-1
            if((temp_row(i)>thresh_ch2(j) && temp_row(i+1)<thresh_ch2(j))||(temp_row(i)<thresh_ch2(j) && temp_row(i+1)>thresh_ch2(j)))
                %temp = (intersect(1,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
                temp_val = 1;
            else
                temp_val = 0;
                %temp = (intersect(0,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
            end
        ZC_ch2(j) = ZC_ch2(j) + temp_val;
        end 
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N-1
            if((temp_row(i)>thresh_ch3(j) && temp_row(i+1)<thresh_ch3(j))||(temp_row(i)<thresh_ch3(j) && temp_row(i+1)>thresh_ch3(j)))
                %temp = (intersect(1,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
                temp_val = 1;
            else
                temp_val = 0;
                %temp = (intersect(0,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
            end
        ZC_ch3(j) = ZC_ch3(j) + temp_val;
        end 
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N-1
            if((temp_row(i)>thresh_ch4(j) && temp_row(i+1)<thresh_ch4(j))||(temp_row(i)<thresh_ch4(j) && temp_row(i+1)>thresh_ch4(j)))
                %temp = (intersect(1,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
                temp_val = 1;
            else
                temp_val = 0;
                %temp = (intersect(0,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
            end
        ZC_ch4(j) = ZC_ch4(j) + temp_val;
        end 
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N-1
            if((temp_row(i)>thresh_ch5(j) && temp_row(i+1)<thresh_ch5(j))||(temp_row(i)<thresh_ch5(j) && temp_row(i+1)>thresh_ch5(j)))
                %temp = (intersect(1,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
                temp_val = 1;
            else
                temp_val = 0;
                %temp = (intersect(0,abs(R1CC1ch1(i)-R1CC1ch1(i+1))))>= thresh_1;
            end
        ZC_ch5(j) = ZC_ch5(j) + temp_val;
        end 
    end

    % MYOP -> check thresholds!!!

    MYOP_ch1 = zeros(M,1);
    MYOP_ch2 = zeros(M,1);
    MYOP_ch3 = zeros(M,1);
    MYOP_ch4 = zeros(M,1);
    MYOP_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
            if abs(temp_row(i)) >= (thresh_ch1(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        MYOP_ch1(j) = MYOP_ch1(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
            if abs(temp_row(i)) >= (thresh_ch2(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        MYOP_ch2(j) = MYOP_ch2(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
            if abs(temp_row(i)) >= (thresh_ch3(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        MYOP_ch3(j) = MYOP_ch3(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
            if abs(temp_row(i)) >= (thresh_ch4(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        MYOP_ch4(j) = MYOP_ch4(j) + temp_val;
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
            if abs(temp_row(i)) >= (thresh_ch5(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        MYOP_ch5(j) = MYOP_ch5(j) + temp_val;
        end
    end

    MYOP_ch1 = MYOP_ch1/N;
    MYOP_ch2 = MYOP_ch2/N;
    MYOP_ch3 = MYOP_ch3/N;
    MYOP_ch4 = MYOP_ch4/N;
    MYOP_ch5 = MYOP_ch5/N;

    % WAMP 

    WAMP_ch1 = zeros(M,1);
    WAMP_ch2 = zeros(M,1);
    WAMP_ch3 = zeros(M,1);
    WAMP_ch4 = zeros(M,1);
    WAMP_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N-1
            if abs(temp_row(i)-temp_row(i+1)) >= (thresh_ch1(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        WAMP_ch1(j) = WAMP_ch1(j) + temp_val;    
        end
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N-1
            if abs(temp_row(i)-temp_row(i+1)) >= (thresh_ch2(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        WAMP_ch2(j) = WAMP_ch2(j) + temp_val;    
        end
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N-1
            if abs(temp_row(i)-temp_row(i+1)) >= (thresh_ch3(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        WAMP_ch3(j) = WAMP_ch3(j) + temp_val;    
        end
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N-1
            if abs(temp_row(i)-temp_row(i+1)) >= (thresh_ch4(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        WAMP_ch4(j) = WAMP_ch4(j) + temp_val;    
        end
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N-1
            if abs(temp_row(i)-temp_row(i+1)) >= (thresh_ch5(j))+50
                temp_val = 1;
            else
                temp_val = 0;
            end
        WAMP_ch5(j) = WAMP_ch5(j) + temp_val;    
        end
    end

    % SSC -> check discrepency (is it meant to be cross product)

    SSC_ch1 = zeros(M,1);
    SSC_ch2 = zeros(M,1);
    SSC_ch3 = zeros(M,1);
    SSC_ch4 = zeros(M,1);
    SSC_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        SSC_ch1(j) = sum(diff(sign(diff(temp_row)))~=0);

    %     for i = 2:N-1
    %         if ((temp_row(i)-temp_row(i-1))*(temp_row(i)-temp_row(i+1))) >= (thresh_ch1(j)) % cross((temp_row(i)-temp_row(i-1)),(temp_row(i)-temp_row(i+1)))
    %             temp_val = 1;
    %         else
    %             temp_val = 0;
    %         end
    %     SSC_ch1(j) = SSC_ch1(j) + temp_val;    
    %     end

    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        SSC_ch2(j) = sum(diff(sign(diff(temp_row)))~=0);

    %     for i = 2:N-1
    %         if ((temp_row(i)-temp_row(i-1))*(temp_row(i)-temp_row(i+1))) >= (thresh_ch1(j)) % cross((temp_row(i)-temp_row(i-1)),(temp_row(i)-temp_row(i+1)))
    %             temp_val = 1;
    %         else
    %             temp_val = 0;
    %         end
    %     SSC_ch1(j) = SSC_ch1(j) + temp_val;    
    %     end

    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        SSC_ch3(j) = sum(diff(sign(diff(temp_row)))~=0);

    %     for i = 2:N-1
    %         if ((temp_row(i)-temp_row(i-1))*(temp_row(i)-temp_row(i+1))) >= (thresh_ch1(j)) % cross((temp_row(i)-temp_row(i-1)),(temp_row(i)-temp_row(i+1)))
    %             temp_val = 1;
    %         else
    %             temp_val = 0;
    %         end
    %     SSC_ch1(j) = SSC_ch1(j) + temp_val;    
    %     end

    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        SSC_ch4(j) = sum(diff(sign(diff(temp_row)))~=0);

    %     for i = 2:N-1
    %         if ((temp_row(i)-temp_row(i-1))*(temp_row(i)-temp_row(i+1))) >= (thresh_ch1(j)) % cross((temp_row(i)-temp_row(i-1)),(temp_row(i)-temp_row(i+1)))
    %             temp_val = 1;
    %         else
    %             temp_val = 0;
    %         end
    %     SSC_ch1(j) = SSC_ch1(j) + temp_val;    
    %     end

    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        SSC_ch5(j) = sum(diff(sign(diff(temp_row)))~=0);

    %     for i = 2:N-1
    %         if ((temp_row(i)-temp_row(i-1))*(temp_row(i)-temp_row(i+1))) >= (thresh_ch1(j)) % cross((temp_row(i)-temp_row(i-1)),(temp_row(i)-temp_row(i+1)))
    %             temp_val = 1;
    %         else
    %             temp_val = 0;
    %         end
    %     SSC_ch1(j) = SSC_ch1(j) + temp_val;    
    %     end

    end

    % Frequency domain -> Mean Freq

    MNF_ch1 = zeros(M,1);
    MNF_ch2 = zeros(M,1);
    MNF_ch3 = zeros(M,1);
    MNF_ch4 = zeros(M,1);
    MNF_ch5 = zeros(M,1);

    for j = 1:M
        MNF_ch1(j) = meanfreq(matrix_ch1(j:j,:),500);
    end

    for j = 1:M
        MNF_ch2(j) = meanfreq(matrix_ch2(j:j,:),500);
    end

    for j = 1:M
        MNF_ch3(j) = meanfreq(matrix_ch3(j:j,:),500);
    end

    for j = 1:M
        MNF_ch4(j) = meanfreq(matrix_ch4(j:j,:),500);
    end

    for j = 1:M
        MNF_ch5(j) = meanfreq(matrix_ch5(j:j,:),500);
    end

    % Median freq

    MDF_ch1 = zeros(M,1);
    MDF_ch2 = zeros(M,1);
    MDF_ch3 = zeros(M,1);
    MDF_ch4 = zeros(M,1);
    MDF_ch5 = zeros(M,1);

    for j = 1:M
        MDF_ch1(j) = medfreq(matrix_ch1(j:j,:),500);
    end

    for j = 1:M
        MDF_ch2(j) = medfreq(matrix_ch2(j:j,:),500);
    end

    for j = 1:M
        MDF_ch3(j) = medfreq(matrix_ch3(j:j,:),500);
    end

    for j = 1:M
        MDF_ch4(j) = medfreq(matrix_ch4(j:j,:),500);
    end

    for j = 1:M
        MDF_ch5(j) = medfreq(matrix_ch5(j:j,:),500);
    end

    % Peak power **

    PP1_ch1 = zeros(M,1);
    PP1_ch2 = zeros(M,1);
    PP1_ch3 = zeros(M,1);
    PP1_ch4 = zeros(M,1);
    PP1_ch5 = zeros(M,1);

    PP2_ch1 = zeros(M,1);
    PP2_ch2 = zeros(M,1);
    PP2_ch3 = zeros(M,1);
    PP2_ch4 = zeros(M,1);
    PP2_ch5 = zeros(M,1);

    PP3_ch1 = zeros(M,1);
    PP3_ch2 = zeros(M,1);
    PP3_ch3 = zeros(M,1);
    PP3_ch4 = zeros(M,1);
    PP3_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');
        PP1_ch1(j) = pks_sorted(1);
        PP2_ch1(j) = pks_sorted(2);
        PP3_ch1(j) = pks_sorted(3);
        endWlehc

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');
        PP1_ch2(j) = pks_sorted(1);
        PP2_ch2(j) = pks_sorted(2);
        PP3_ch2(j) = pks_sorted(3);
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');
        PP1_ch3(j) = pks_sorted(1);
        PP2_ch3(j) = pks_sorted(2);
        PP3_ch3(j) = pks_sorted(3);
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');
        PP1_ch4(j) = pks_sorted(1);
        PP2_ch4(j) = pks_sorted(2);
        PP3_ch4(j) = pks_sorted(3);
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');
        PP1_ch5(j) = pks_sorted(1);
        PP2_ch5(j) = pks_sorted(2);
        PP3_ch5(j) = pks_sorted(3);
    end

    % Mean power - parsevals theorem

    MNP_ch1 = zeros(M,1);
    MNP_ch2 = zeros(M,1);
    MNP_ch3 = zeros(M,1);
    MNP_ch4 = zeros(M,1);
    MNP_ch5 = zeros(M,1);

    for j =1:M
        temp_row = matrix_ch1(j:j,:);
        for i = 1:N
           temp_val = abs(temp_row(i))^2;
           MNP_ch1(j) = MNP_ch1(j) + temp_val;
        end
        MNP_ch1(j) = MNP_ch1(j)/N;
    end

    for j =1:M
        temp_row = matrix_ch2(j:j,:);
        for i = 1:N
           temp_val = abs(temp_row(i))^2;
           MNP_ch2(j) = MNP_ch2(j) + temp_val;
        end
        MNP_ch2(j) = MNP_ch2(j)/N;
    end

    for j =1:M
        temp_row = matrix_ch3(j:j,:);
        for i = 1:N
           temp_val = abs(temp_row(i))^2;
           MNP_ch3(j) = MNP_ch3(j) + temp_val;
        end
        MNP_ch3(j) = MNP_ch3(j)/N;
    end

    for j =1:M
        temp_row = matrix_ch4(j:j,:);
        for i = 1:N
           temp_val = abs(temp_row(i))^2;
           MNP_ch4(j) = MNP_ch4(j) + temp_val;
        end
        MNP_ch4(j) = MNP_ch4(j)/N;
    end

    for j =1:M
        temp_row = matrix_ch5(j:j,:);
        for i = 1:N
           temp_val = abs(temp_row(i))^2;
           MNP_ch5(j) = MNP_ch5(j) + temp_val;
        end
        MNP_ch5(j) = MNP_ch5(j)/N;
    end



    % Peak freqs 1,2 and 3 ****

    PF1_ch1 = zeros(M,1);
    PF1_ch2 = zeros(M,1);
    PF1_ch3 = zeros(M,1);
    PF1_ch4 = zeros(M,1);
    PF1_ch5 = zeros(M,1);

    PF2_ch1 = zeros(M,1);
    PF2_ch2 = zeros(M,1);
    PF2_ch3 = zeros(M,1);
    PF2_ch4 = zeros(M,1);
    PF2_ch5 = zeros(M,1);

    PF3_ch1 = zeros(M,1);
    PF3_ch2 = zeros(M,1);
    PF3_ch3 = zeros(M,1);
    PF3_ch4 = zeros(M,1);
    PF3_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');

        PF1_ch1(j) = temp_freqs(temp_locs(pks_index(1)));
        PF2_ch1(j) = temp_freqs(temp_locs(pks_index(2)));
        PF3_ch1(j) = temp_freqs(temp_locs(pks_index(3)));
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');

        PF1_ch2(j) = temp_freqs(temp_locs(pks_index(1)));
        PF2_ch2(j) = temp_freqs(temp_locs(pks_index(2)));
        PF3_ch2(j) = temp_freqs(temp_locs(pks_index(3)));
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');

        PF1_ch3(j) = temp_freqs(temp_locs(pks_index(1)));
        PF2_ch3(j) = temp_freqs(temp_locs(pks_index(2)));
        PF3_ch3(j) = temp_freqs(temp_locs(pks_index(3)));
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');

        PF1_ch4(j) = temp_freqs(temp_locs(pks_index(1)));
        PF2_ch4(j) = temp_freqs(temp_locs(pks_index(2)));
        PF3_ch4(j) = temp_freqs(temp_locs(pks_index(3)));
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        [temp_pks,temp_locs] = findpeaks(temp_PSD);
        [pks_sorted, pks_index] = sort(temp_pks, 'descend');

        PF1_ch5(j) = temp_freqs(temp_locs(pks_index(1)));
        PF2_ch5(j) = temp_freqs(temp_locs(pks_index(2)));
        PF3_ch5(j) = temp_freqs(temp_locs(pks_index(3)));
    end

    % mean power attempt 2

    MNP2_ch1 = zeros(M,1);
    MNP2_ch2 = zeros(M,1);
    MNP2_ch3 = zeros(M,1);
    MNP2_ch4 = zeros(M,1);
    MNP2_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        MNP2_ch1(j) = mean(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        MNP2_ch2(j) = mean(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        MNP2_ch3(j) = mean(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        MNP2_ch4(j) = mean(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        MNP2_ch5(j) = mean(temp_PSD);
    end

    % Total power - SM0

    TP_ch1 = zeros(M,1);
    TP_ch2 = zeros(M,1);
    TP_ch3 = zeros(M,1);
    TP_ch4 = zeros(M,1);
    TP_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP_ch1(j) = sum(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP_ch2(j) = sum(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP_ch3(j) = sum(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP_ch4(j) = sum(temp_PSD);
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP_ch5(j) = sum(temp_PSD);
    end

    % Total power - Sch1

    TP1_ch1 = zeros(M,1);
    TP1_ch2 = zeros(M,1);
    TP1_ch3 = zeros(M,1);
    TP1_ch4 = zeros(M,1);
    TP1_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP1_ch1(j) = sum(temp_PSD.*temp_freqs);
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP1_ch2(j) = sum(temp_PSD.*temp_freqs);
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP1_ch3(j) = sum(temp_PSD.*temp_freqs);
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP1_ch4(j) = sum(temp_PSD.*temp_freqs);
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP1_ch5(j) = sum(temp_PSD.*temp_freqs);
    end

    % Total power - Sch2

    TP2_ch1 = zeros(M,1);
    TP2_ch2 = zeros(M,1);
    TP2_ch3 = zeros(M,1);
    TP2_ch4 = zeros(M,1);
    TP2_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP2_ch1(j) = sum(temp_PSD.*(temp_freqs.^2));
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP2_ch2(j) = sum(temp_PSD.*(temp_freqs.^2));
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP2_ch3(j) = sum(temp_PSD.*(temp_freqs.^2));
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP2_ch4(j) = sum(temp_PSD.*(temp_freqs.^2));
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP2_ch5(j) = sum(temp_PSD.*(temp_freqs.^2));
    end

    % Total power - SM3

    TP3_ch1 = zeros(M,1);
    TP3_ch2 = zeros(M,1);
    TP3_ch3 = zeros(M,1);
    TP3_ch4 = zeros(M,1);
    TP3_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP3_ch1(j) = sum(temp_PSD.*(temp_freqs.^3));
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP3_ch2(j) = sum(temp_PSD.*(temp_freqs.^3));
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP3_ch3(j) = sum(temp_PSD.*(temp_freqs.^3));
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP3_ch4(j) = sum(temp_PSD.*(temp_freqs.^3));
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        TP3_ch5(j) = sum(temp_PSD.*(temp_freqs.^3));
    end

    % frequency ratio

    FR_ch1 = zeros(M,1);
    FR_ch2 = zeros(M,1);
    FR_ch3 = zeros(M,1);
    FR_ch4 = zeros(M,1);
    FR_ch5 = zeros(M,1);

    for j = 1:M
        temp_row = matrix_ch1(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        lf_power = sum(temp_PSD(1:128));
        hf_power = sum(temp_PSD(129:end));
        FR_ch1(j) = lf_power/hf_power;
    end

    for j = 1:M
        temp_row = matrix_ch2(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        lf_power = sum(temp_PSD(1:128));
        hf_power = sum(temp_PSD(129:end));
        FR_ch2(j) = lf_power/hf_power;
    end

    for j = 1:M
        temp_row = matrix_ch3(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        lf_power = sum(temp_PSD(1:128));
        hf_power = sum(temp_PSD(129:end));
        FR_ch3(j) = lf_power/hf_power;
    end

    for j = 1:M
        temp_row = matrix_ch4(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        lf_power = sum(temp_PSD(1:128));
        hf_power = sum(temp_PSD(129:end));
        FR_ch4(j) = lf_power/hf_power;
    end

    for j = 1:M
        temp_row = matrix_ch5(j:j,:);
        [temp_PSD,temp_freqs] = pwelch(temp_row);
        lf_power = sum(temp_PSD(1:128));
        hf_power = sum(temp_PSD(129:end));
        FR_ch5(j) = lf_power/hf_power;
    end

    % feature sets

    feature_matrix_ch1 = zeros(M,34);
    feature_matrix_ch2 = zeros(M,34);
    feature_matrix_ch3 = zeros(M,34);
    feature_matrix_ch4 = zeros(M,34);
    feature_matrix_ch5 = zeros(M,34);

    feature_matrix_ch1(:,1) = IEMG_ch1;
    feature_matrix_ch1(:,2) = MAV_ch1;
    feature_matrix_ch1(:,3) = MMAV1_ch1;
    feature_matrix_ch1(:,4) = MMAV2_ch1;
    feature_matrix_ch1(:,5) = SSI_ch1;
    feature_matrix_ch1(:,6) = VAR_ch1;
    feature_matrix_ch1(:,7) = TM3_ch1;
    feature_matrix_ch1(:,8) = TM4_ch1;
    feature_matrix_ch1(:,9) = TM5_ch1;
    feature_matrix_ch1(:,10) = RMS_ch1;
    feature_matrix_ch1(:,11) = LOG_ch1;
    feature_matrix_ch1(:,12) = WL_ch1;
    feature_matrix_ch1(:,13) = AAC_ch1;
    feature_matrix_ch1(:,14) = DASDV_ch1;
    feature_matrix_ch1(:,15) = AFB_ch1;
    feature_matrix_ch1(:,16) = ZC_ch1;
    feature_matrix_ch1(:,17) = MYOP_ch1;
    feature_matrix_ch1(:,18) = WAMP_ch1;
    feature_matrix_ch1(:,19) = SSC_ch1;
    feature_matrix_ch1(:,20) = MNF_ch1;
    feature_matrix_ch1(:,21) = MDF_ch1;
    feature_matrix_ch1(:,22) = PP1_ch1;
    feature_matrix_ch1(:,23) = PP2_ch1;
    feature_matrix_ch1(:,24) = PP3_ch1;
    feature_matrix_ch1(:,25) = MNP_ch1;
    feature_matrix_ch1(:,26) = PF1_ch1;
    feature_matrix_ch1(:,27) = PF2_ch1;
    feature_matrix_ch1(:,28) = PF3_ch1;
    feature_matrix_ch1(:,29) = MNP2_ch1;
    feature_matrix_ch1(:,30) = TP_ch1;
    feature_matrix_ch1(:,31) = TP1_ch1;
    feature_matrix_ch1(:,32) = TP2_ch1;
    feature_matrix_ch1(:,33) = TP3_ch1;
    feature_matrix_ch1(:,34) = FR_ch1;

    feature_matrix_ch2(:,1) = IEMG_ch2;
    feature_matrix_ch2(:,2) = MAV_ch2;
    feature_matrix_ch2(:,3) = MMAV1_ch2;
    feature_matrix_ch2(:,4) = MMAV2_ch2;
    feature_matrix_ch2(:,5) = SSI_ch2;
    feature_matrix_ch2(:,6) = VAR_ch2;
    feature_matrix_ch2(:,7) = TM3_ch2;
    feature_matrix_ch2(:,8) = TM4_ch2;
    feature_matrix_ch2(:,9) = TM5_ch2;
    feature_matrix_ch2(:,10) = RMS_ch2;
    feature_matrix_ch2(:,11) = LOG_ch2;
    feature_matrix_ch2(:,12) = WL_ch2;
    feature_matrix_ch2(:,13) = AAC_ch2;
    feature_matrix_ch2(:,14) = DASDV_ch2;
    feature_matrix_ch2(:,15) = AFB_ch2;
    feature_matrix_ch2(:,16) = ZC_ch2;
    feature_matrix_ch2(:,17) = MYOP_ch2;
    feature_matrix_ch2(:,18) = WAMP_ch2;
    feature_matrix_ch2(:,19) = SSC_ch2;
    feature_matrix_ch2(:,20) = MNF_ch2;
    feature_matrix_ch2(:,21) = MDF_ch2;
    feature_matrix_ch2(:,22) = PP1_ch2;
    feature_matrix_ch2(:,23) = PP2_ch2;
    feature_matrix_ch2(:,24) = PP3_ch2;
    feature_matrix_ch2(:,25) = MNP_ch2;
    feature_matrix_ch2(:,26) = PF1_ch2;
    feature_matrix_ch2(:,27) = PF2_ch2;
    feature_matrix_ch2(:,28) = PF3_ch2;
    feature_matrix_ch2(:,29) = MNP2_ch2;
    feature_matrix_ch2(:,30) = TP_ch2;
    feature_matrix_ch2(:,31) = TP1_ch2;
    feature_matrix_ch2(:,32) = TP2_ch2;
    feature_matrix_ch2(:,33) = TP3_ch2;
    feature_matrix_ch2(:,34) = FR_ch2;

    feature_matrix_ch3(:,1) = IEMG_ch3;
    feature_matrix_ch3(:,2) = MAV_ch3;
    feature_matrix_ch3(:,3) = MMAV1_ch3;
    feature_matrix_ch3(:,4) = MMAV2_ch3;
    feature_matrix_ch3(:,5) = SSI_ch3;
    feature_matrix_ch3(:,6) = VAR_ch3;
    feature_matrix_ch3(:,7) = TM3_ch3;
    feature_matrix_ch3(:,8) = TM4_ch3;
    feature_matrix_ch3(:,9) = TM5_ch3;
    feature_matrix_ch3(:,10) = RMS_ch3;
    feature_matrix_ch3(:,11) = LOG_ch3;
    feature_matrix_ch3(:,12) = WL_ch3;
    feature_matrix_ch3(:,13) = AAC_ch3;
    feature_matrix_ch3(:,14) = DASDV_ch3;
    feature_matrix_ch3(:,15) = AFB_ch3;
    feature_matrix_ch3(:,16) = ZC_ch3;
    feature_matrix_ch3(:,17) = MYOP_ch3;
    feature_matrix_ch3(:,18) = WAMP_ch3;
    feature_matrix_ch3(:,19) = SSC_ch3;
    feature_matrix_ch3(:,20) = MNF_ch3;
    feature_matrix_ch3(:,21) = MDF_ch3;
    feature_matrix_ch3(:,22) = PP1_ch3;
    feature_matrix_ch3(:,23) = PP1_ch3;
    feature_matrix_ch3(:,24) = PP1_ch3;
    feature_matrix_ch3(:,25) = MNP_ch3;
    feature_matrix_ch3(:,26) = PF1_ch3;
    feature_matrix_ch3(:,27) = PF2_ch3;
    feature_matrix_ch3(:,28) = PF3_ch3;
    feature_matrix_ch3(:,29) = MNP2_ch3;
    feature_matrix_ch3(:,30) = TP_ch3;
    feature_matrix_ch3(:,31) = TP1_ch3;
    feature_matrix_ch3(:,32) = TP2_ch3;
    feature_matrix_ch3(:,33) = TP3_ch3;
    feature_matrix_ch3(:,34) = FR_ch3;

    feature_matrix_ch4(:,1) = IEMG_ch4;
    feature_matrix_ch4(:,2) = MAV_ch4;
    feature_matrix_ch4(:,3) = MMAV1_ch4;
    feature_matrix_ch4(:,4) = MMAV2_ch4;
    feature_matrix_ch4(:,5) = SSI_ch4;
    feature_matrix_ch4(:,6) = VAR_ch4;
    feature_matrix_ch4(:,7) = TM3_ch4;
    feature_matrix_ch4(:,8) = TM4_ch4;
    feature_matrix_ch4(:,9) = TM5_ch4;
    feature_matrix_ch4(:,10) = RMS_ch4;
    feature_matrix_ch4(:,11) = LOG_ch4;
    feature_matrix_ch4(:,12) = WL_ch4;
    feature_matrix_ch4(:,13) = AAC_ch4;
    feature_matrix_ch4(:,14) = DASDV_ch4;
    feature_matrix_ch4(:,15) = AFB_ch4;
    feature_matrix_ch4(:,16) = ZC_ch4;
    feature_matrix_ch4(:,17) = MYOP_ch4;
    feature_matrix_ch4(:,18) = WAMP_ch4;
    feature_matrix_ch4(:,19) = SSC_ch4;
    feature_matrix_ch4(:,20) = MNF_ch4;
    feature_matrix_ch4(:,21) = MDF_ch4;
    feature_matrix_ch4(:,22) = PP1_ch4;
    feature_matrix_ch4(:,23) = PP2_ch4;
    feature_matrix_ch4(:,24) = PP3_ch4;
    feature_matrix_ch4(:,25) = MNP_ch4;
    feature_matrix_ch4(:,26) = PF1_ch4;
    feature_matrix_ch4(:,27) = PF2_ch4;
    feature_matrix_ch4(:,28) = PF3_ch4;
    feature_matrix_ch4(:,29) = MNP2_ch4;
    feature_matrix_ch4(:,30) = TP_ch4;
    feature_matrix_ch4(:,31) = TP1_ch4;
    feature_matrix_ch4(:,32) = TP2_ch4;
    feature_matrix_ch4(:,33) = TP3_ch4;
    feature_matrix_ch4(:,34) = FR_ch4;

    feature_matrix_ch5(:,1) = IEMG_ch5;
    feature_matrix_ch5(:,2) = MAV_ch5;
    feature_matrix_ch5(:,3) = MMAV1_ch5;
    feature_matrix_ch5(:,4) = MMAV2_ch5;
    feature_matrix_ch5(:,5) = SSI_ch5;
    feature_matrix_ch5(:,6) = VAR_ch5;
    feature_matrix_ch5(:,7) = TM3_ch5;
    feature_matrix_ch5(:,8) = TM4_ch5;
    feature_matrix_ch5(:,9) = TM5_ch5;
    feature_matrix_ch5(:,10) = RMS_ch5;
    feature_matrix_ch5(:,11) = LOG_ch5;
    feature_matrix_ch5(:,12) = WL_ch5;
    feature_matrix_ch5(:,13) = AAC_ch5;
    feature_matrix_ch5(:,14) = DASDV_ch5;
    feature_matrix_ch5(:,15) = AFB_ch5;
    feature_matrix_ch5(:,16) = ZC_ch5;
    feature_matrix_ch5(:,17) = MYOP_ch5;
    feature_matrix_ch5(:,18) = WAMP_ch5;
    feature_matrix_ch5(:,19) = SSC_ch5;
    feature_matrix_ch5(:,20) = MNF_ch5;
    feature_matrix_ch5(:,21) = MDF_ch5;
    feature_matrix_ch5(:,22) = PP1_ch5;
    feature_matrix_ch5(:,23) = PP2_ch5;
    feature_matrix_ch5(:,24) = PP3_ch5;
    feature_matrix_ch5(:,25) = MNP_ch5;
    feature_matrix_ch5(:,26) = PF1_ch5;
    feature_matrix_ch5(:,27) = PF2_ch5;
    feature_matrix_ch5(:,28) = PF3_ch5;
    feature_matrix_ch5(:,29) = MNP2_ch5;
    feature_matrix_ch5(:,30) = TP_ch5;
    feature_matrix_ch5(:,31) = TP1_ch5;
    feature_matrix_ch5(:,32) = TP2_ch5;
    feature_matrix_ch5(:,33) = TP3_ch5;
    feature_matrix_ch5(:,34) = FR_ch5;

% Save features

    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\ch1_features'), 'feature_matrix_ch1');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\ch2_features'), 'feature_matrix_ch2');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\ch3_features'), 'feature_matrix_ch3');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\ch4_features'), 'feature_matrix_ch4');
    save(strcat('C:\Users\Nathan\Desktop\Thesis\My data\new data\sequence 3\orig\ch5_features'), 'feature_matrix_ch5');

% end
