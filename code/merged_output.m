function merged_output = merge_output(output1, output2)
    all_dates = sort(unique([output1(:,1); output2(:,1)]));
    merged_output = all_dates;

    % Align and merge data columns from output1
    for i = 2:size(output1,2)
        col = nan(size(all_dates));
        [~, loc] = ismember(output1(:,1), all_dates);
        col(loc(loc > 0)) = output1(:,i);
        merged_output = [merged_output col];
    end

    % Align and merge data columns from output2
    for i = 2:size(output2,2)
        col = nan(size(all_dates));
        [~, loc] = ismember(output2(:,1), all_dates);
        col(loc(loc > 0)) = output2(:,i);
        merged_output = [merged_output col];
    end
end
