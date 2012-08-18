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
		    elseif x >= I4FN.valuesSet(2) && x < I4FN.valuesSet(3)
		        pertinence = I4FN.informationConfidence;
		    elseif x >= I4FN.valuesSet(3) && x < I4FN.valuesSet(4)
		        pertinence = (I4FN.valuesSet(4)-x)*I4FN.informationConfidence / (I4FN.valuesSet(4) - I4FN.valuesSet(3));
		        else pertinence = 0;
		    end
		end % Pertinence function
		
		% Non-pertinence function - similar
		function non_pertinence = I4FN_non_pertinence(I4FN,x)
		    if x >= I4FN.valuesSet(1) && x < I4FN.valuesSet(2)
		        non_pertinence = (I4FN.valuesSet(2) - x + I4FN.informationNonConfidence*(x-I4FN.valuesSet(1))) / (I4FN.valuesSet(2) - I4FN.valuesSet(1));
		    elseif x >= I4FN.valuesSet(2) && x < I4FN.valuesSet(3)
		        non_pertinence = I4FN.informationNonConfidence;
		    elseif x >= I4FN.valuesSet(3) && x < I4FN.valuesSet(4)
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

	%%%		%%%
	
	end % methods			
end % classdef

