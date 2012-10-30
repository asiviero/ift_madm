%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Test TODIM	
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MatrixD = [
    IntuitionistFuzzyNumber([7.7643 8.1957 9.05840 9.48970])    IntuitionistFuzzyNumber([4.7007 4.9619 5.4841 5.7453])
    IntuitionistFuzzyNumber([8.8542 9.3461 10.3299 10.8218])    IntuitionistFuzzyNumber([3.6207 3.8218 4.2241 4.4253])
    IntuitionistFuzzyNumber([9.3366 9.8553 10.8927 11.4114])    IntuitionistFuzzyNumber([3.1455 3.3203 3.6698 3.8445])
    IntuitionistFuzzyNumber([7.3800 7.7900 8.61000 9.02000])    IntuitionistFuzzyNumber([5.0931 5.3761 5.9419 6.2249])
    IntuitionistFuzzyNumber([5.2686 5.5613 6.14670 6.43940])    IntuitionistFuzzyNumber([7.1901 7.5896 8.3885 8.7879])
    IntuitionistFuzzyNumber([7.2972 7.7026 8.51340 8.91880])    IntuitionistFuzzyNumber([5.2110 5.5005 6.0795 6.3690])
    IntuitionistFuzzyNumber([6.1605 6.5027 7.18720 7.52950])    IntuitionistFuzzyNumber([6.3747 6.7289 7.4371 7.7913])
    IntuitionistFuzzyNumber([5.1642 5.4511 6.02490 6.31180])    IntuitionistFuzzyNumber([7.4142 7.8261 8.6499 9.0618])
    IntuitionistFuzzyNumber([4.1366 4.7104 6.14490 6.43180])    IntuitionistFuzzyNumber([5.7176 6.5414 8.6009 9.0128])
    IntuitionistFuzzyNumber([5.6421 5.9556 6.58240 6.89590])    IntuitionistFuzzyNumber([7.0272 7.4176 8.1984 8.5888])
    ];

MatrixD2 = [
    IntuitionistFuzzyNumber([7.7643 8.1957 9.05840 9.48970])    IntuitionistFuzzyNumber([4.7007 4.9619 5.4841 5.7453])
    IntuitionistFuzzyNumber([8.8542 9.3461 10.3299 10.8218])    IntuitionistFuzzyNumber([3.6207 3.8218 4.2241 4.4253])
    IntuitionistFuzzyNumber([9.3366 9.8553 10.8927 11.4114])    IntuitionistFuzzyNumber([3.1455 3.3203 3.6698 3.8445])
    IntuitionistFuzzyNumber([7.3800 7.7900 8.61000 9.02000])    IntuitionistFuzzyNumber([5.0931 5.3761 5.9419 6.2249])
    IntuitionistFuzzyNumber([5.2686 5.5613 6.14670 6.43940])    IntuitionistFuzzyNumber([7.1901 7.5896 8.3885 8.7879])
    IntuitionistFuzzyNumber([7.2972 7.7026 8.51340 8.91880])    IntuitionistFuzzyNumber([5.2110 5.5005 6.0795 6.3690])
    IntuitionistFuzzyNumber([6.1605 6.5027 7.18720 7.52950])    IntuitionistFuzzyNumber([6.3747 6.7289 7.4371 7.7913])
    IntuitionistFuzzyNumber([5.1642 5.4511 6.02490 6.31180])    IntuitionistFuzzyNumber([7.4142 7.8261 8.6499 9.0618])
    IntuitionistFuzzyNumber([4.1366 4.7104 6.14490 6.43180])    IntuitionistFuzzyNumber([5.7176 6.5414 8.6009 9.0128])
    IntuitionistFuzzyNumber([5.6421 5.9556 6.58240 6.89590])    IntuitionistFuzzyNumber([7.0272 7.4176 8.1984 8.5888])
    ];
	
MatrixD_DEF = [
    IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.5,0.4) IntuitionistFuzzyNumber([0.1 0.2 0.3 0.4],0.6,0.3) IntuitionistFuzzyNumber([0.5 0.6 0.8 0.9],0.3,0.6) IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.2,0.7)
    IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.7,0.3) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.7,0.2) IntuitionistFuzzyNumber([0.4 0.5 0.7 0.8],0.7,0.2) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.9],0.4,0.5)
    IntuitionistFuzzyNumber([0.1 0.2 0.4 0.5],0.6,0.7) IntuitionistFuzzyNumber([0.2 0.3 0.5 0.6],0.5,0.4) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.5,0.3) IntuitionistFuzzyNumber([0.3 0.5 0.7 0.9],0.2,0.3)
    IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.8,0.1) IntuitionistFuzzyNumber([0.1,0.3,0.4,0.5],0.6,0.3) IntuitionistFuzzyNumber([0.1 0.3 0.5 0.7],0.3,0.4) IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.2,0.6)
    IntuitionistFuzzyNumber([0.2 0.3 0.4 0.5],0.6,0.2) IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.4,0.3) IntuitionistFuzzyNumber([0.2 0.3 0.4 0.5],0.7,0.1) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.1,0.3)    
];
	

%MatrixD_DEF
CBVector = [1 1 1 0];
Weights = [0.3500 0.2333 0.3000 0.1167];

%CBVector2 = [0 1];
%Weights2 = [0.6107 0.3893];

%IFM2 = IntuitionistFuzzyMatrix(CBVector2,MatrixD2,Weights2);

%CBVector = [0 1];
%Weights = [0.5107 0.4893];

IFM = IntuitionistFuzzyMatrix(CBVector,MatrixD_DEF,Weights);


teta = 1;

%IFM.normalizeDecisionMatrixTODIM;
%IFM2.normalizeDecisionMatrixTODIM;

TODIM (IFM,teta,[0 0])

% Matrizes do teste de grupo

R1 = [
        IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.5,0.4) IntuitionistFuzzyNumber([0.1 0.2 0.3 0.4],0.6,0.3) IntuitionistFuzzyNumber([0.5 0.6 0.8 0.9],0.3,0.6) IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.2,0.7)
        IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.7,0.3) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.7,0.2) IntuitionistFuzzyNumber([0.4 0.5 0.7 0.8],0.7,0.2) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.9],0.4,0.5)
        IntuitionistFuzzyNumber([0.1 0.2 0.4 0.5],0.6,0.4) IntuitionistFuzzyNumber([0.2 0.3 0.5 0.6],0.5,0.4) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.5,0.3) IntuitionistFuzzyNumber([0.3 0.5 0.7 0.9],0.2,0.3)
        IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.8,0.1) IntuitionistFuzzyNumber([0.1 0.3 0.4 0.5],0.6,0.3) IntuitionistFuzzyNumber([0.1 0.3 0.5 0.7],0.3,0.4) IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.2,0.6)
        IntuitionistFuzzyNumber([0.2 0.3 0.4 0.5],0.6,0.2) IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.4,0.3) IntuitionistFuzzyNumber([0.2 0.3 0.4 0.5],0.7,0.1) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.1,0.3)
    ];

R2 = [
        IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.4,0.3) IntuitionistFuzzyNumber([0.1 0.2 0.3 0.4],0.6,0.2) IntuitionistFuzzyNumber([0.4 0.5 0.7 0.8],0.2,0.5) IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.1,0.6)
        IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.6,0.2) IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.6,0.1) IntuitionistFuzzyNumber([0.3 0.4 0.6 0.7],0.6,0.1) IntuitionistFuzzyNumber([0.4 0.5 0.6 0.8],0.3,0.4)
        IntuitionistFuzzyNumber([0.1 0.2 0.3 0.4],0.5,0.3) IntuitionistFuzzyNumber([0.1 0.2 0.4 0.5],0.4,0.3) IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.4,0.2) IntuitionistFuzzyNumber([0.2 0.4 0.6 0.6],0.5,0.2)
        IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.8,0.1) IntuitionistFuzzyNumber([0.1 0.2 0.3 0.5],0.5,0.2) IntuitionistFuzzyNumber([0.1 0.2 0.4 0.6],0.2,0.3) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.1,0.5)
        IntuitionistFuzzyNumber([0.1 0.2 0.3 0.4],0.5,0.1) IntuitionistFuzzyNumber([0.2 0.3 0.4 0.5],0.3,0.2) IntuitionistFuzzyNumber([0.1 0.2 0.3 0.4],0.6,0.2) IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.4,0.2)
    ];

R3 = [
        IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.4,0.5) IntuitionistFuzzyNumber([0.2 0.3 0.4 0.5],0.5,0.4) IntuitionistFuzzyNumber([0.6 0.7 0.9 1.0],0.2,0.7) IntuitionistFuzzyNumber([0.5 0.6 0.7 0.8],0.1,0.8)
        IntuitionistFuzzyNumber([0.7 0.8 0.9 1.0],0.6,0.4) IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.6,0.3) IntuitionistFuzzyNumber([0.5 0.6 0.8 0.9],0.6,0.3) IntuitionistFuzzyNumber([0.6 0.7 0.8 1.0],0.3,0.6)
        IntuitionistFuzzyNumber([0.2 0.3 0.5 0.6],0.5,0.5) IntuitionistFuzzyNumber([0.3 0.4 0.6 0.7],0.4,0.5) IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.4,0.4) IntuitionistFuzzyNumber([0.4 0.6 0.8 1.0],0.5,0.4)
        IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.7,0.2) IntuitionistFuzzyNumber([0.2 0.4 0.5 0.6],0.5,0.4) IntuitionistFuzzyNumber([0.2 0.4 0.6 0.8],0.2,0.5) IntuitionistFuzzyNumber([0.7 0.8 0.9 1.0],0.1,0.7)
        IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.5,0.3) IntuitionistFuzzyNumber([0.4 0.5 0.6 0.7],0.3,0.4) IntuitionistFuzzyNumber([0.3 0.4 0.5 0.6],0.6,0.2) IntuitionistFuzzyNumber([0.6 0.7 0.8 0.9],0.4,0.4)
    ];

CBVector = [1 1 1 0];
Weights = [0.3500 0.2333 0.3000 0.1167];

IFM_1 = IntuitionistFuzzyMatrix(CBVector,R1,Weights);
IFM_2 = IntuitionistFuzzyMatrix(CBVector,R2,Weights);
IFM_3 = IntuitionistFuzzyMatrix(CBVector,R3,Weights);


Matrixes = [IFM_1 IFM_2 IFM_3];

%TODIM_group (Matrixes,teta,[0.2 0.5 0.3])

