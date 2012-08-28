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

D4 = [ IntuitionistFuzzyNumber([0.65 0.8 0.95],0.8183,0.126) IntuitionistFuzzyNumber([0.7 0.8667 0.9667],0.6366,0.2884) IntuitionistFuzzyNumber([0.3077 0.4 0.5714],0.7711,0.1587);
	IntuitionistFuzzyNumber([0.8 1 1],0.8413,0.126) IntuitionistFuzzyNumber([0.55 0.7 0.85],0.6443,0.252) IntuitionistFuzzyNumber([0.3333 0.4444 0.6667],0.6893,0.2);
	IntuitionistFuzzyNumber([0.7 0.8667 0.9667],0.7116,0.2) IntuitionistFuzzyNumber([0.8 1 1],0.8413,0.126) IntuitionistFuzzyNumber([0.4 0.5714 1],0.8413,0.126);
	IntuitionistFuzzyNumber([0.8 1 1],0.6366,0.2884) IntuitionistFuzzyNumber([0.65 0.8 0.95],0.7711,0.126) IntuitionistFuzzyNumber([0.3636 0.5 0.8],0.6085,0.2884);
    IntuitionistFuzzyNumber([0.7 0.8667 0.9667],0.6698,0.2621) IntuitionistFuzzyNumber([0.7 0.8667 0.9667],0.7379,0.1817) IntuitionistFuzzyNumber([0.2857 0.3636 0.5],0.7116,0.1817);
    ];


D5=[
IntuitionistFuzzyNumber([0.65, 0.8, 0.95], 0.8413, 0.126)            IntuitionistFuzzyNumber([0.7627, 0.9492, 1], 0.658, 0.2289)            IntuitionistFuzzyNumber([0.4167, 0.5556, 0.8333], 0.6893, 0.2)
IntuitionistFuzzyNumber([0.8, 1, 1], 0.8183, 0.126)                     IntuitionistFuzzyNumber([0.7119, 0.8814, 0.9831], 0.6893, 0.2)       IntuitionistFuzzyNumber([0.4545, 0.625, 1], 0.7846, 0.1587)
IntuitionistFuzzyNumber([0.7, 0.8667, 0.9667], 0.7846, 0.1587)   IntuitionistFuzzyNumber([0.661, 0.8136, 0.9661], 0.8183, 0.1587)    IntuitionistFuzzyNumber([0.4545, 0.625, 1], 0.6893, 0.252)
IntuitionistFuzzyNumber([0.7, 0.8667, 0.9667], 0.6893, 0.252)     IntuitionistFuzzyNumber([0.6102, 0.7627, 0.9153], 0.6085, 0.2621)   IntuitionistFuzzyNumber([0.3846, 0.5, 0.7143], 0.8413, 0.126)
IntuitionistFuzzyNumber([0.8, 1, 1], 0.7711, 0.1587)                   IntuitionistFuzzyNumber([0.7627, 0.9492, 1], 0.7286, 0.2)               IntuitionistFuzzyNumber([0.3333, 0.4167, 0.5556], 0.7379, 0.1587)
	];

D6 = [
IntuitionistFuzzyNumber([0.75, 0.9333, 0.9833], 0.748, 0.1442)     IntuitionistFuzzyNumber([0.7119, 0.8814, 0.9831], 0.6893, 0.1442)    IntuitionistFuzzyNumber([0.3333, 0.5, 1], 0.6443, 0.252)
IntuitionistFuzzyNumber([0.7, 0.8667, 0.9667], 0.6893, 0.252)       IntuitionistFuzzyNumber([0.7627, 0.9492, 1], 0.748, 0.1817)              IntuitionistFuzzyNumber([0.3, 0.4286, 0.75], 0.8, 0.1)
IntuitionistFuzzyNumber([0.8, 1, 1], 0.8413, 0.126)                       IntuitionistFuzzyNumber([0.661, 0.8136, 0.9661], 0.7711, 0.1587)      IntuitionistFuzzyNumber([0.25, 0.3333, 0.5], 0.6893, 0.252)
IntuitionistFuzzyNumber([0.75, 0.9333, 0.9833], 0.7286, 0.2)         IntuitionistFuzzyNumber([0.661, 0.8136, 0.9661], 0.8413, 0.126)        IntuitionistFuzzyNumber([0.25, 0.3333, 0.5], 0.7286, 0.1587)
IntuitionistFuzzyNumber([0.8, 1, 1], 0.8183, 0.1587)                     IntuitionistFuzzyNumber([0.7119, 0.8814, 0.9831], 0.7711, 0.126)       IntuitionistFuzzyNumber([0.2308, 0.3, 0.4286], 0.8, 0.1)
];

CBVector = [1 1];

IFM = IntuitionistFuzzyMatrix(CBVector,D6,[1 0]);
%IFM.matrixD
%IFM.normalizeDecisionMatrix;
%IFM.matrixD

%IFM.vectorW
IFM.weights;
IFM.vectorW

%v = TOPSIS (IFM);

IFM.matrixD

%IFM.applyWeights

%IFM.matrixD





	
