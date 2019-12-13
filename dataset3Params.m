function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%Best vals are C=1 and sigma 0.1.  Just return these for now.
C=1;
sigma=0.1;

%Following code commented out as has already been used to calculate best
% C and sigma for exercise (see above);

%% Values to be tested for C and sigma, as per ex6 instructions 
%vals = [0.01 0.03 0.1 0.3 1 3 10 30];
%% Subset for testing purpose
%%vals = [0.01 0.03];
%% Extract vectors of x values, required for model training
%x1=X(:,1);
%x2=X(:,2);
%% Loop through each combination of C and sigma test values
%for c = vals
%	for s = vals
%		fprintf('\nEvaluating C=%f and sigma=%f',c,s);
%       % Train model using X, y and current C/sigma test values
%		model= svmTrain(X, y, c, @(x1, x2) gaussianKernel(x1, x2, s));
%		% Test fit of trained model against cross validation set
%		predictions=svmPredict(model,Xval);
%		% Calculate Prediction Error by comparing predicted results against actual (yval)
%		pe_i=mean(double(predictions ~= yval));
%		% If Prediction Error (pe) doesn't yet exist, use current test vals.  If it does exist
		% but current vals give lower error, update, otherwise leave as is.
%		if ~exist('pe', 'var') || isempty(pe)
%    		pe=pe_i;
%			fprintf('\npe doesnt exist and/or is empty.  Setting C and sigma to current values\n');
%			C=c;
%			sigma=s;
%		elseif pe_i < pe
%			fprintf('\nCurrent prediction error %f less then existing. %f.  Updating C, sigma & prediction error...\n',pe_i,pe);			
%			pe=pe_i;
%			C=c;
%			sigma=s;
%		else
%			fprintf('\nCurrent prediction error %f worse then existing. %f.  Keep existing values (C=%f, sigma=%f)\n',pe_i,pe,C,sigma);						
%		end
%	end
%end

% =========================================================================

end
