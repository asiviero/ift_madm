%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Intuitionist Fuzzy Number Class
%	
%	Authors: Andre Pacheco and Andre Siviero
%	Orienters: Renato Krohling and Rodolfo Lourenzutti
%
%	This file is used mostly as a draft space, for testing purposes on how to structure snippets of code. Most users
%	don't need to refer to this file
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the ratings on Ratings.m
Ratings

D = [ IntuitionistFuzzyNumber(Very_Low,0.7,.2) IntuitionistFuzzyNumber(Medium);
	IntuitionistFuzzyNumber(Very_High,.8,.5) IntuitionistFuzzyNumber(Extremely_High);
	IntuitionistFuzzyNumber(High,.9,.1) IntuitionistFuzzyNumber(Medium);
	IntuitionistFuzzyNumber(Very_High,.6,.4) IntuitionistFuzzyNumber(Medium);];
    %IntuitionistFuzzyNumber(Extremely_High) IntuitionistFuzzyNumber(Medium);
    %IntuitionistFuzzyNumber(Extremely_Low) IntuitionistFuzzyNumber(Medium);
    %IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium);
    %IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Medium) ];
	
CBVector = [1 1];

IFM = IntuitionistFuzzyMatrix(CBVector,D,[1 0]);
IFM.matrixD
IFM.normalizeDecisionMatrix;
IFM.matrixD

IFM.vectorW;
IFM.weights;
IFM.vectorW

%v = TOPSIS (IFM);

IFM.matrixD(:,1)

C = TIFN_WAA(IFM.matrixD(:,1)',[0.1 0.2 0.3 0.4])
%C = TIFN_WAA(IFM.matrixD(:,1)',[0.1 0.2 0.3 0.4])
C = TIFN_WAA([.2 .3 .4 .5],[0.1 0.2 0.3 0.4])

%IFM.matrixD(:,1)






	
