%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	IntuiniotistFuzzyMatrix
%	
%	Authors: Andr� Pacheco and Andr� Siviero
%	Orienters: Renato Krohling and Rodolfo Lourenzutti
%
%	This file contains the class Intuiniotist Fuzzy Matrix. Most of the definitions
%	comes from Chen & Li paper "Dynamic multi-attribute decision making model based on triangular
%	intuitionistic fuzzy numbers", published on Scientia Iranica and available through www.sciencedirect.com
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


classdef IntuitionistFuzzyMatrix < handle % Handle proprierty assures that all copies of a object share the same data
	properties 
	        vector_cost_or_benefit
	        matrixD
	        vectorR
	                
	end % properties
	
	methods
        
        %Constructor
        function ifm = IntuitionistFuzzyMatrix(vector_cost_or_benefit,matrixD)
			if nargin == 0 
		            error('No input')			
            end
            ifm.vector_cost_or_benefit = vector_cost_or_benefit;
            ifm.matrixD = matrixD;
		end % Constructor  
        
        function vectoRj = calculateVectorRj (matrixFuzy)
            order = size(matrixFuzy.matrixD);
            m = order(1);
            n = order (2);
            
            for j=1:n
                for i=1:m
                    sumRjs = sumRjs + matrixFuzy.matrixD(i,j);
                end % for
                vectorRj(j) = (1/m)*(sumRjs);
            end % for            
        end % calculateRj
        
        function vectorMj = calculateVectorMj (vectorRj,matrixFuzy)
            order = size(matrixFuzy.matrixD);
            m = order(1);
            n = order (2);
            
            for j=1:n
                for i=1:m
                    vectorMj = matrixFuzy.matrixD(i,j).I4FN_fuzzyDistance(matrixFuzy.matrixD(i,j),vectorRj(j));
                end % for
            end % for               
            
        end %calculateVectorMj

        function vectorMj_normalized = calculateVectorMjNormalized (vectorMj)
            order = size(vectorMj);
            n = order (2);
            vectorAux = sort(vectorMj);
            max = vectorAux(n);
            
            for j=1:n
                vectorMj_normalized(j) = vectorMj(j)/max;
            end % for               
            
        end %calculateVectorMjNormalized  
        
        
        % Normalize Decision Matrix
        function normalizeDecisionMatrix(fuzzyMatrix)
            order = size(fuzzyMatrix.matrixD);
            m = order(1);
            n = order (2);
            
            for j = 1:n
            	d_values = zeros(m,1);

		% Getting d values
            	for i=1:m
            		d_values(i) = fuzzyMatrix.matrixD(i,j).valuesSet(4);
            	end % for i
		vectorAux = sort(d_values);
		max_d = vectorAux(m)
		min_d = vectorAux(1)

		% Normalization
		if fuzzyMatrix.vector_cost_or_benefit(j) == 1 % benefit
			for i = 1:m
				for k = 1:4 
					fuzzyMatrix.matrixD(i,j).valuesSet(k) = fuzzyMatrix.matrixD(i,j).valuesSet(k)/max_d;
				end % for k
			end % for i
		else % cost
			for i = 1:m
				buffer = fuzzyMatrix.matrixD(i,j).valuesSet; 
				for k = 1:4 

					fuzzyMatrix.matrixD(i,j).valuesSet(k) = min_d / buffer(5-k);

				end % for k
			end % for i
		
		end % if
            	
            end % for j
        
        end % Normalize Decision Matrix
        
    end %methods
    
end %classdef
    
