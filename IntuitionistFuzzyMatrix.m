%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	IntuiniotistFuzzyMatrix
%	
%	Authors: André Pacheco and André Siviero
%	Orienters: Renato Krohling and Rodolfo Lourenzutti
%
%	This file contains the class Intuiniotist Fuzzy Matrix. Most of the definitions
%	comes from Chen & Li paper "Dynamic multi-attribute decision making model based on triangular
%	intuitionistic fuzzy numbers", published on Scientia Iranica and available through www.sciencedirect.com
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


classdef IntuiniotistFuzzyMatrix < handle % Handle proprierty assures that all copies of a object share the same data
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
        
        function vectoRj = calculateVectorRj ()
            order = size(matrixD);
            m = order(1);
            n = order (2);
            
            for j=1:n
                for i=1:m
                    sumRjs = sumRjs + matrixD(i,j);
                end % for
                vectorRj(j) = (1/m)*(sumRjs);
            end % for            
        end % calculateRj
        
        function vectorMj = calculateVectorMj ()
            order = size(matrixD);
            m = order(1);
            n = order (2);
            
            
        end %calculateVectorMj
        
    end %methods
    
end %classdef
    
