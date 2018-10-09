function [running_avg] = running_mean(type,data_matrix,length_mean,overlap)
%RUNNING_MEAN Summary of this function goes here
%   Detailed explanation goes here
    
    
    if(strcmp(type,"bvp"))
        index_type = 2;
    elseif(strcmp(type,"sc"))
        index_type = 3;
    elseif(strcmp(type,"temp"))
        index_type = 4;
    elseif(strcmp(type,"hr"))
        index_type = 5;
    end
    
    data = data_matrix(:,index_type);
    time_length = get_length_data(data_matrix);
    data_length = length(data);
    number_window = floor(time_length/length_mean);
    points_per_window = floor(data_length/number_window);
    for i = 1:number_window-1
        disp(i);
       start_index = (i-1)*points_per_window + 1;
       end_index = (i)*points_per_window;
       
       running_avg(i) = mean(data(start_index:end_index));
    end
    
    %% TODO check what to do with the remainder of the data (as we floor down)
    
end

