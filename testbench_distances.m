%%%%%%
%
%   Distances Testbench
%
%%%%%%


f1 = IntuitionistFuzzyNumber([0 1 2 3]);
f2 = IntuitionistFuzzyNumber([7 8 9 10]);

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