%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	Algorithm TODIM
%	
%	Authors: Andre Pacheco and Andre Siviero
%	Orienters: Renato Krohling and Rodolfo Lourenzutti
%
%	This file is implemented the method of decision making TODIM. Here,
%   it is assumed that the intuitionistic fuzzy decision matrix is already
%   normalized. It is also supposes that the weight vector is known or has 
%   been previously calculated.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function TODIM (IFM,weights)
%define teta
teta = 1;

order = size(IFM);
nLin = order(1); %number lines
nCol = order(2);% number coluns

c_ref = reference (weights); %reference


valueGlobal (IFM,nLin,nCol,teta,c_ref,weights)
end

function ref = reference (weights)
    order = size(weights);
    nCol = order(2);
    max = 0;
    ref = 1;
    for j=1:nCol
        if max < weights(j)
            max = weights(j);
            ref = j;
        end %if
    end% for
end %reference

function d = distance (IFM,alt_i,alt_j,c)
    d = IFM(alt_i,c) - IFM(alt_j,c);
end %distance

function a = arc (weights,c,ref)
    a = weights(c)/weights(ref);
end %arcs

function sa = sum_arc (weights,nCol,ref)
    sa = 0;
    for c=1:nCol
        sa = sa + arc(weights,c,ref);
    end %for    
end %sum_arc

function matrixPhi = phi (IFM,nLin,nCol,teta,ref,weights)
    matrixPhi = zeros(nCol,nLin,nLin);    
    for c = 1:nCol    
        for i = 1:nLin
            for j = 1:nLin    
                d_ij = distance(IFM,i,j,c);
                if d_ij == 0
                    matrixPhi(c,i,j) = 0;

                elseif d_ij > 0
                    matrixPhi(c,i,j) = sqrt(arc(weights,c,ref)*(d_ij)/(sum_arc (weights,nCol,ref)));
        
                elseif d_ij < 0
                    matrixPhi(c,i,j) = ((-1)/teta)*sqrt(sum_arc(weights,nCol,ref)*(d_ij*(-1))/(arc(weights,c,ref)));
                end %if
            end %for
        end %for
    end %for
end %phi


function matrixDelta = delta (IFM,nLin,nCol,teta,ref,weights)
    matrixPhi = phi(IFM,nLin,nCol,teta,ref,weights);
    matrixDelta = zeros(nLin,nLin);
    for i = 1:nLin
        for j = 1:nLin
            for c = 1:nCol
                matrixDelta(i,j) = matrixDelta(i,j) + matrixPhi(c,i,j);
            end %for
        end %for
    end %for    
end %delta


function valueGlobal (IFM,nLin,nCol,teta,ref,weights)
    matrixDelta = delta (IFM,nLin,nCol,teta,ref,weights);

    min = zeros(nLin,1);
    max = zeros(nLin,1);
    
    for j = 1:nLin
        for i = 1:nLin
            if matrixDelta(i,j) < min(i)
                min(i) = matrixDelta(i,j);
            elseif matrixDelta(i,j) > max(i)
                max(i) = matrixDelta(i,j);
            end %for
        end% for
    end% for   
    
    finalValue = zeros(nLin,1);
    for i=1:nLin
        a=0; %aux
        b=0; %aux
        c=0; %aux
        
        for j = 1:nLin
            a = a + matrixDelta(i,j);
        end %for
        
        for j = 1:nLin
            b = b + min(j);
        end %for
        
        for j = 1:nLin
            c = c + max(j);
        end
        finalValue(i) = (a + b) / (c - b);
    end% for    
    
    valueMin = finalValue(1);
    for i = 1:nLin
        if finalValue(i) < valueMin
            valueMin = finalValue(i);
        end
    end

    finalValuePositive = zeros(nLin,1);
    for i = 1:nLin
        finalValuePositive(i) = finalValue(i) - valueMin;
    end

    valueMax = finalValuePositive(i);
    for i = 1:nLin
        if finalValuePositive(i) > valueMax
            valueMax = finalValuePositive(i);
        end
    end

    finalValueNormalized = zeros(nLin,1);
    
    for i = 1:nLin
        finalValueNormalized(i) = finalValuePositive(i) / valueMax;
    end

    bar(finalValueNormalized);    
end %valueGlobal














