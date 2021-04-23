% calculates the error of a machine learning algorithm in a sample of data

% Authors: Miraj Patel
% Group Members: Jessica Shubin and Rachel Garner
% Course: BME 3053C Computer Applications for BME
% Term: Spring2021
% J. Crayton Pruitt Family Department of Biomedical Engineering
% University of Florida
% Email: mirajpatel@ufl.edu
% April 13, 2021

function [error] = algorithmerror(model,inputs,answers)
validation = predict(model,inputs);        % shows the prediction of tumor presence for the validation set
tumor_status = answers;                       % actual tumor presence
wrong = find(validation ~= tumor_status);        % compares to find the errors
error = length(wrong)/length(validation);            % calculates error rates in the validation/test set
end