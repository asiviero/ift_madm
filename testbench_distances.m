%%%%%%
%
%   Distances Testbench
%
%%%%%%
%Load Ratings.m
Ratings
D = [ IntuitionistFuzzyNumber(Very_Low) IntuitionistFuzzyNumber(Medium);
	IntuitionistFuzzyNumber(Very_High) IntuitionistFuzzyNumber(Extremely_High);
	IntuitionistFuzzyNumber(High) IntuitionistFuzzyNumber(Medium);
	IntuitionistFuzzyNumber(Very_High) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Extremely_High) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Extremely_Low) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Medium) IntuitionistFuzzyNumber(Medium);
    IntuitionistFuzzyNumber(Low) IntuitionistFuzzyNumber(Medium) ];


f1 = IntuitionistFuzzyNumber(Very_High)
f2 = IntuitionistFuzzyNumber(Extremely_Low)


fprintf ('Integral Fuzzy Distance');
% Integral Fuzzy Distance
I4FN_fuzzyDistance(f1,f2)

fprintf ('Discrete Fuzzy Distance');
% Discrete Fuzzy Distance
I4FN_discreteFuzzyDistance(f1,f2)

fprintf ('Discrete Euclidean Distance');
% Euclidean Distace - As defined in Guha & Chakraborty
I4FN_discreteEuclideanDistance(f1,f2)

fprintf ('Discrete Hamming Distance');
% Hamming Distace - As defined in Guha & Chakraborty
I4FN_discreteHammingDistance(f1,f2)

fprintf ('Discrete Fuzzy Distance 2');
% Discrete Fuzzy Distance 2 - As defined in Fei Ye in Definition 2.3
I4FN_discreteFuzzyDistance2(f1,f2)

fprintf ('Discrete Euclidean Distance 2');
% Euclidean Distace 2
I4FN_discreteEuclideanDistance2(f1,f2)

fprintf ('Discrete Hamming Distance 2');
% defined in Guiwu Wei, definition 3
I4FN_discreteHammingDistace2 (f1,f2)