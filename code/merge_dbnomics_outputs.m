function [output_mat] = merge_dbnomics_output(output1, output2)
    all_dates = sort(unique([output1(:,1); output2(:,1)]));
    output_mat = all_dates;

    for i = 2:size(output1,2)
        col = nan(size(all_dates));
        [~, loc] = ismember(output1(:,1), all_dates);
        col(loc(loc > 0)) = output1(:,i);
        output_mat = [output_mat col];
    end

    for i = 2:size(output2,2)
        col = nan(size(all_dates));
        [~, loc] = ismember(output2(:,1), all_dates);
        col(loc(loc > 0)) = output2(:,i);
        output_mat = [output_mat col];
    end
end