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

D = [ IntuitionistFuzzyNumber(High,.7,.2) IntuitionistFuzzyNumber(Very_High)
	IntuitionistFuzzyNumber(Very_High) IntuitionistFuzzyNumber(Low)
	IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Medium)
	IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Very_Low) ];
	
CBVector = [1 0];

IFM = IntuitionistFuzzyMatrix(CBVector,D);
IFM.matrixD;
IFM.normalizeDecisionMatrix;
IFM.matrixD;

IFM.weights;

IFM.vectorW




	
