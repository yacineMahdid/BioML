function [time_length] = get_length_data(data_matrix)
%GET_LENGTH_DATA Summary of this function goes here
%   Detailed explanation goes here
%% Return the length in seconds
    %May need to convert
    time_length = data_matrix(length(data_matrix),1) - data_matrix(1,1);

end

