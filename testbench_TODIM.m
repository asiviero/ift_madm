%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Test TODIM	
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MatrixD = [IntuitionistFuzzyNumber([7.7643 8.1957 9.0584 9.4897])    IntuitionistFuzzyNumber([4.7007 4.9619 5.4841 5.7453])
    IntuitionistFuzzyNumber([8.8542 9.3461 10.3299 10.8218])    IntuitionistFuzzyNumber([3.6207 3.8218 4.2241 4.4253])
    IntuitionistFuzzyNumber([9.3366 9.8553 10.8927 11.4114])    IntuitionistFuzzyNumber([3.1455 3.3203 3.6698 3.8445])
    IntuitionistFuzzyNumber([7.3800 7.7900 8.6100 9.0200])    IntuitionistFuzzyNumber([5.0931 5.3761 5.9419 6.2249])
    IntuitionistFuzzyNumber([5.2686 5.5613 6.1467 6.4394])    IntuitionistFuzzyNumber([7.1901 7.5896 8.3885 8.7879])
    IntuitionistFuzzyNumber([7.2972 7.7026 8.5134 8.9188])    IntuitionistFuzzyNumber([5.2110 5.5005 6.0795 6.3690])
    IntuitionistFuzzyNumber([6.1605 6.5027 7.1872 7.5295])    IntuitionistFuzzyNumber([6.3747 6.7289 7.4371 7.7913])
    IntuitionistFuzzyNumber([5.1642 5.4511 6.0249 6.3118])    IntuitionistFuzzyNumber([7.4142 7.8261 8.6499 9.0618])
    IntuitionistFuzzyNumber([4.1366 4.7104 6.1449 6.4318])    IntuitionistFuzzyNumber([5.7176 6.5414 8.6009 9.0128])
    IntuitionistFuzzyNumber([5.6421 5.9556 6.5824 6.8959])    IntuitionistFuzzyNumber([7.0272 7.4176 8.1984 8.5888])
    ];
	
MatrixD_Normalized = [
	IntuitionistFuzzyNumber([0.5013 0.4420 0.3235 0.2642])    IntuitionistFuzzyNumber([0.2629 0.3070 0.3953 0.4394])
    IntuitionistFuzzyNumber([0.3515 0.2839 0.1487 0.0810])    IntuitionistFuzzyNumber([0.0803 0.1143 0.1823 0.2163])
    IntuitionistFuzzyNumber([0.2852 0.2139 0.0713 0.0000])    IntuitionistFuzzyNumber([0.0000 0.0295 0.0886 0.1181])
    IntuitionistFuzzyNumber([0.5542 0.4978 0.3851 0.3287])    IntuitionistFuzzyNumber([0.3292 0.3770 0.4727 0.5205])
    IntuitionistFuzzyNumber([0.8444 0.8042 0.7237 0.6835])    IntuitionistFuzzyNumber([0.6836 0.7512 0.8862 0.9537])
    IntuitionistFuzzyNumber([0.5655 0.5098 0.3984 0.3426])    IntuitionistFuzzyNumber([0.3491 0.3981 0.4959 0.5449])
    IntuitionistFuzzyNumber([0.7218 0.6747 0.5807 0.5336])    IntuitionistFuzzyNumber([0.5458 0.6057 0.7254 0.7853])
    IntuitionistFuzzyNumber([0.8587 0.8193 0.7404 0.7010])    IntuitionistFuzzyNumber([0.7215 0.7911 0.9304 1.0000])
    IntuitionistFuzzyNumber([1.0000 0.9211 0.7239 0.6845])    IntuitionistFuzzyNumber([0.4347 0.5740 0.9221 0.9917])
    IntuitionistFuzzyNumber([0.7931 0.7500 0.6638 0.6207])    IntuitionistFuzzyNumber([0.6561 0.7221 0.8541 0.9201])
	];
	

CBVector = [0 1];
Weights = [0.5107 0.4893];

IFM = IntuitionistFuzzyMatrix(CBVector,MatrixD,Weights);


teta = 1;

%IFM.normalizeDecisionMatrixTODIM;


Ratings
f = IntuitionistFuzzyNumber(High,0.7,0.2)
I4FN_defuzzificationCOADiscrete(f)

%TODIM (IFM,teta);



