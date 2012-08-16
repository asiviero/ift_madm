%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Intuitionist Fuzzy Number Class
%	
%	Authors: André Pacheco and André Siviero
%	Orienters: Renato Krohling and Rodolfo Lourenzutti
%
%	This file contains the Intuitionist Fuzzy Number class definition. Most of the definitions
%	comes from Chen & Li paper "Dynamic multi-attribute decision making model based on triangular
%	intuitionistic fuzzy numbers", published on Scientia Iranica and available through www.sciencedirect.com
%
%	An intuitionist fuzzy number is defined as a tuple of values defining its pertinence interval, and the confidence
%	and non-confidence of the information.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef IntuitionistFuzzyNumber < handle % Handle proprierty assures that all copies of a object share the same data
	properties (Private)
		valuesSet
		informationConfidence = 1;
		informationNonConfidence = 0;
	end % properties
	
	methods
		
		%Constructor
		function ifn = IntuitionistFuzzyNumber(valuesSet,informationConfidence,informationNonConfidence)
			if nargin == 0 
		            error('No input')			
			end
			
			if isequal(size(valuesSet),[1 4]) || isequal(size(valuesSet),[4 1]) % trapezoidal Intuitionistic Fuzzy Number (TIFN)
				ifn.valuesSet = valuesSet;	
			else	
				error('Values Set is not a 4-element array')
			end
			
			if nargin == 2 	
				ifn.informationConfidence = informationConfidence;
			end
			
			if nargin == 3
				ifn.informationNonConfidence = informationNonConfidence;
			end

			
		end % Constructor
		
		
		% Pertinence Function
		
	end % methods			
end % classdef
