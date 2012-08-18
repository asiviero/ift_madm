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
        
    end %methods
    
end %classdef
    
