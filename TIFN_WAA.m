function ifn_result = TIFN_WAA (vector_I4FN, vector_weight)
            % Validation
            
            % Checks if inputs are arrays
            I4FN_size = size(vector_I4FN);
            weight_size = size(vector_weight);
            if (I4FN_size(1) ~= 1 && I4FN_size(2) ~= 1) || ...
                (weight_size(1) ~=1 && weight_size(2) ~=1) || ...    
                (max(I4FN_size) ~= max(weight_size))
                
                error('Input arguments are inconsistent');
            end % if
            
            % this is done to prevent type problems
            % it will get more elegant eventually
            %ifn_result = vector_I4FN(1)%% + (-1*vector_I4FN(1))
            
            for i = 1:max(I4FN_size)
                buffer(i) = vector_I4FN(i)*vector_weight(i);
            end % for
            
            ifn_result = buffer(1);
            for i=2:max(I4FN_size)
                ifn_result = ifn_result + buffer(i);
            end % for
            
        end % TIFN_WAA