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

D = [ IntuitionistFuzzyNumber(Very_Low) IntuitionistFuzzyNumber(Medium);
	IntuitionistFuzzyNumber(Very_High) IntuitionistFuzzyNumber(Extremely_High);
	IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Medium);
	IntuitionistFuzzyNumber(Very_High) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Extremely_High) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Extremely_Low) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Medium) ];
	
CBVector = [1 1];

IFM = IntuitionistFuzzyMatrix(CBVector,D,[0.9 0.1]);

%{
IFM.matrixD
IFM.normalizeDecisionMatrix;
IFM.matrixD

IFM.vectorW
IFM.weights;
IFM.vectorW

v = TOPSIS (IFM);

IFM.matrixD

IFM.applyWeights

IFM.matrixD

v = TOPSIS (IFM);


%}
F1 = IntuitionistFuzzyNumber(Extremely_Low);
F2 = IntuitionistFuzzyNumber(Extremely_High,0.8,0.1);

F1
F2

fprintf ('Distancia Euclideana');
F1.I4FN_discreteEuclideanDistance(F2)
fprintf ('Distancia Hamming');
F1.I4FN_discreteHammingDistance(F2)
fprintf ('Distancia da Integral');
F1.I4FN_fuzzyDistance (F2)
fprintf ('Distancia Fuzzy Discreta 1');
F1.I4FN_discreteFuzzyDistance(F2)
fprintf ('Distancia Fuzzy Discreta 2');
F1.I4FN_discreteFuzzyDistance2(F2)






	
