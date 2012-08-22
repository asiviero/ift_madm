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

D = [ IntuitionistFuzzyNumber(Very_Low) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Very_High) IntuitionistFuzzyNumber(Low)
	IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Extremely_Low) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Extremely_High) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Extremely_Low) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Very_Low) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Medium) ];
	
CBVector = [1 1];

IFM = IntuitionistFuzzyMatrix(CBVector,D);

IFM.matrixD
IFM.normalizeDecisionMatrix
IFM.matrixD

IFM.weights;

IFM.vectorW

	
