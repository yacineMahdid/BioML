function [participants_cluster,percentages_aggrement] = assign_cluster(sample_cluster,samples_id)
%ASSIGN_CLUSTER Summary of this function goes here
%   Detailed explanation goes here

    %% Variables Assignment
    participants_cluster = [];
    percentages_aggrement = [];
        
    for participant_index=1:max(samples_id)
        participant_cluster = sample_cluster(samples_id==participant_index);
        most_occuring_cluster = mode(participant_cluster);
        percentage_aggrement = length(participant_cluster(participant_cluster==most_occuring_cluster))/length(participant_cluster); 
        
        participants_cluster = [participants_cluster;most_occuring_cluster];
        percentages_aggrement = [percentages_aggrement;percentage_aggrement];
    end

end

