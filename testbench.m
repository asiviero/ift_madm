%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Intuitionist Fuzzy Number Class
%	
%	Authors: André Pacheco and André Siviero
%	Orienters: Renato Krohling and Rodolfo Lourenzutti
%
%	This file is used mostly as a draft space, for testing purposes on how to structure snippets of code. Most users
%	don't need to refer to this file
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the ratings on Ratings.m
Ratings

vectorW = [IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Low)];
vectorW2 = [IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Very_Low)];


D = [ IntuitionistFuzzyNumber(Very_Low) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Very_High) IntuitionistFuzzyNumber(Low)
	IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Extremely_Low) IntuitionistFuzzyNumber(Medium)];

D2 = [
	IntuitionistFuzzyNumber(Extremely_High) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Medium)];
	%IntuitionistFuzzyNumber(Extremely_Low) IntuitionistFuzzyNumber(Medium)
	%IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	%IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Medium)
	%IntuitionistFuzzyNumber(Very_Low) IntuitionistFuzzyNumber(Medium)
	%IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	%IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Medium) ];
	
CBVector = [1 1];

IFM = IntuitionistFuzzyMatrix(CBVector,D,vectorW);
IFM2 = IntuitionistFuzzyMatrix(CBVector,D2,vectorW2);


IFM.normalizeDecisionMatrix
IFM2.normalizeDecisionMatrix

IFM_V = [IFM IFM2]

agg = aggregateFuzzyMatrixes(IFM_V,[.4 .6])
agg.matrixD

D(1,1)

D(1,1).I4FN_defuzzificationCOA

%IFM.vectorW = [IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Low)];

	
