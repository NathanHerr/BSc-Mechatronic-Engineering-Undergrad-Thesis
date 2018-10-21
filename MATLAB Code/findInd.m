function [X_ind X_index] = findInd(X)

         X_index(1) = 1;
         X_ind = [];
         X_ind(:,1) = X(:,1);

         for i = 2:size(X,2)    
            temp_mat = [X_ind X(:,i)];
            temp_rank = rank(temp_mat);

            if temp_rank == size(temp_mat,2)
                X_ind = temp_mat;
                X_index(:,size(temp_mat,2)) = i;
            end    
         end