%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Intuitionist Fuzzy Number Class
%	
%	Authors: André Pacheco and André Siviero
%	Orienters: Renato Krohling and Rodolfo Lourenzutti
%
%	This file contains the Intuitionist Fuzzy Number class definition. Most of the definitions
%	come from Chen & Li paper "Dynamic multi-attribute decision making model based on triangular
%	intuitionistic fuzzy numbers", published on Scientia Iranica and available through www.sciencedirect.com, however
%	we are expanding to trapezoidal numbers.
%
%	An intuitionist fuzzy number is defined as a tuple of values defining its pertinence interval, and the confidence
%	and non-confidence of the information, defined as crisp values.
%
%	In this file we define the IntuitionistFuzzyNumberClass, its constructor, pertinence and non-pertinence,fuzzy addition, 
%	multiplication, distance and TFN_WAA (an operator defined by Chen & Li).
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef IntuitionistFuzzyNumber < handle % Handle proprierty assures that all copies of a object share the same data
	properties 
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
			
			if isequal(size(valuesSet),[1 4]) || isequal(size(valuesSet),[4 1]) % trapezoidal Intuitionistic Fuzzy Number (I4FN)
				ifn.valuesSet = valuesSet;	
			elseif	isequal(size(valuesSet),[1 3]) || isequal(size(valuesSet),[3 1]) % triangular Intuitionistic Fuzzy Number (I3FN)
				auxValuesSet = zeros(1,4);
				auxValuesSet(1) = valuesSet(1);
				auxValuesSet(2) = valuesSet(2);
				auxValuesSet(3) = valuesSet(2);
				auxValuesSet(4) = valuesSet(3);												
				ifn.valuesSet = auxValuesSet;	
			else	
				error('Values Set is not a 4-element array')
			end
			
			
			if nargin >= 2 	
				ifn.informationConfidence = informationConfidence;
			end
			
			if nargin >= 3
				ifn.informationNonConfidence = informationNonConfidence;
			end

			
		end % Constructor
		
		
		% Pertinence Function - as defined in Chen & Li
		function pertinence = I4FN_pertinence(I4FN,x)
		    if x >= I4FN.valuesSet(1) && x < I4FN.valuesSet(2)
		        pertinence = (x-I4FN.valuesSet(1))*I4FN.informationConfidence / (I4FN.valuesSet(2) - I4FN.valuesSet(1));
		    elseif x >= I4FN.valuesSet(2) && x <= I4FN.valuesSet(3)
		        pertinence = I4FN.informationConfidence;
		    elseif x > I4FN.valuesSet(3) && x < I4FN.valuesSet(4)
		        pertinence = (I4FN.valuesSet(4)-x)*I4FN.informationConfidence / (I4FN.valuesSet(4) - I4FN.valuesSet(3));
		        else pertinence = 0;
		    end
		end % Pertinence function
		
		% Non-pertinence function - similar
		function non_pertinence = I4FN_non_pertinence(I4FN,x)
		    if x >= I4FN.valuesSet(1) && x < I4FN.valuesSet(2)
		        non_pertinence = (I4FN.valuesSet(2) - x + I4FN.informationNonConfidence*(x-I4FN.valuesSet(1))) / (I4FN.valuesSet(2) - I4FN.valuesSet(1));
		    elseif x >= I4FN.valuesSet(2) && x <= I4FN.valuesSet(3)
		        non_pertinence = I4FN.informationNonConfidence;
		    elseif x > I4FN.valuesSet(3) && x < I4FN.valuesSet(4)
		        non_pertinence = (x - I4FN.valuesSet(3) + I4FN.informationNonConfidence*(I4FN.valuesSet(4))) / (I4FN.valuesSet(4) - I4FN.valuesSet(3));
		        else non_pertinence = 1;
		    end
		end % Pertinence function

		
		% Sum
		function ifn_result = plus(ifn_a, ifn_b)
		  for j=1:4
		    ifn_result.valuesSet(j) = ifn_a.valuesSet(j) + ifn_b.valuesSet(j);
		  end
		  ifn_result.informationConfidence = ifn_a.informationConfidence + ifn_b.informationConfidence -(ifn_a.informationConfidence*ifn_b.informationConfidence);
		  ifn_result.informationNonConfidence = ifn_a.informationNonConfidence*ifn_b.informationNonConfidence
		end % sum
		
		% Product By Scalar
		function ifn_result = mtimes(I4FN, lambda)
			if lambda >= 0
				for j=1:4
				    ifn_result.valuesSet(j) = I4FN.valuesSet(j) * lambda;
				end
			else
				for j=1:4
				    ifn_result.valuesSet(5-j) = I4FN.valuesSet(j) * lambda;
				end
			end
			ifn_result.informationConfidence = 1 - (1-I4FN.informationConfidence)^lambda;
			ifn_result.informationNonConfidence = (I4FN.informationNonConfidence)^lambda;
		end % product by scalar
		
		% Operator TFN-WAA for I4FN 
	        function ifn_result = TIFN_WAA (vector_I4FN, vector_weight)
	            size_vector_I4FN = size(vector_I4FN);
	            size_vector_weight = size(vector_weight);
	            
	            if size_vector_I4FN ~= size_vector_weight
	                error('The vector I4FN must be equal the vector weight')
	            end % if
	            
	            nColumns = size_vector_I4FN(2);            
	            
	            for i=1:4
	                ifn_result.valuesSet(i) = 0; % prevent garbage                 
	                for j=1:nColumns
	                    ifn_result.valuesSet(i) = ifn_result.valuesSet(i) + (vector_I4FN(j).valuesSet(i))*(vector_weight(j)); 
	                end % for
	            end % for
	            
	            ifn_result.informationConfidence = 1; % prevent garbage 
	            ifn_result.informationNonConfidence = 1; % prevent garbage 
	            for j=1:nColumns
	               ifn_result.informationConfidence = (ifn_result.informationConfidence)*((1-vector_I4FN(j).informationConfidence)^(vector_weight(j)));
	               ifn_result.informationNonConfidence = (ifn_result.informationNonConfidence)*((vector_I4FN(j).informationNonConfidence)^(vector_weight(j)));
	            end % for
	                ifn_result.informationConfidence = 1 - ifn_result.informationConfidence;
	                
	        end % TFN_WAA

		% Fuzzy Distance - As defined in Chen & Li

		function distance = I4FN_fuzzyDistance(I4FN_A,I4FN_B)
			distance = sqrt(0.5 * ((I4FN_A.informationConfidence - I4FN_B.informationConfidence)^2 + (I4FN_A.informationNonConfidence - I4FN_B.informationNonConfidence)^2 + (I4FN_A.informationConfidence + I4FN_A.informationNonConfidence - I4FN_B.informationConfidence - I4FN_B.informationNonConfidence)^2	)) + sqrt(I4FN_auxIntegral(I4FN_A,I4FN_B));
		end % distance
		
			% Auxiliary functions to fuzzy distance
			% Most users will never need to touch these. For details on why they're here, refer to the pdf "distance integral calculus"
			
			% alpha function
			function auxAlpha = I4FN_auxAlpha(I4FN_A,I4FN_B)
				auxAlpha = (I4FN_A.valuesSet(2) - I4FN_A.valuesSet(1)) - (I4FN_B.valuesSet(2) - I4FN_B.valuesSet(1));
			end % alfa
			
			% beta function
			function auxBeta = I4FN_auxBeta(I4FN_A,I4FN_B)
				auxBeta = (I4FN_B.valuesSet(4) - I4FN_B.valuesSet(3)) - (I4FN_A.valuesSet(4) - I4FN_A.valuesSet(3));
			end % beta
			
			% integral function
			function integral = I4FN_auxIntegral(I4FN_A,I4FN_B)
				% auxiliary vars
				alpha = I4FN_auxAlpha(I4FN_A,I4FN_B);
				beta = I4FN_auxBeta(I4FN_A,I4FN_B);
				aa_minus_ab = I4FN_A.valuesSet(1) - I4FN_B.valuesSet(1);
				da_minus_db = I4FN_A.valuesSet(4) - I4FN_B.valuesSet(4);
				
				integral = (alpha^2 + beta^2)/3 + alpha*aa_minus_ab + beta*da_minus_db + (aa_minus_ab)^2 + (da_minus_db)^2;
			
			end % integral
	end % methods			
end % classdef

