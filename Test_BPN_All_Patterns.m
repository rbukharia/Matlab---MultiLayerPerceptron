%==========================================================================
% Test MLP
%==========================================================================

clc
clear

%--------------------------------------------------------------------------
% Load Training Results from TResult.mat and PT_Test
% TResult.mat consists of W1, W2, NHneuron, NOneuron
%--------------------------------------------------------------------------
load TResult.mat
load PT_Test_Seen.mat

NumPatterns = length(P(:,1));       % Number of all training patterns
DimPatterns = length(P(1,:));		% Dimension of training patterns1

NNOFF = 0;                          % Number of Neuron OFF

NHneuron = NHneuron - NNOFF;
W2 = W2(1:NHneuron,:);

JumBenar = 0;

for pp=1:NumPatterns,
    CP = P(pp,:);					% Current Pattern
    CT = StrPTest(pp);              % Current Target
    
    %----------------------------------------------------
    % Start recognizing the letter pattern CP
    %----------------------------------------------------
    A1=[];
    for ii=1:NHneuron,
        v  = CP*W1(:,ii);
        A1 = [A1 1/(1+exp(-v))];
    end
    
    A2=[];
    for jj=1:NOneuron,
        v  = A1*W2(:,jj);
        A2 = [A2 1/(1+exp(-v))];
    end
    
    %---------------------------------
    % Mapping A2 to Recognized Letter
    %---------------------------------
    for jj=1:NOneuron,
        if A2(jj) < 0.5,
            A2(jj) = 0;
        else
            A2(jj) = 1;
        end
    end
    
    Letter = 'U';   % U = Unknown letter
    
    if A2 == [1 0 0 0],
        Letter = 'E';
    elseif A2 == [0 1 0 0],
        Letter = 'F';
    elseif A2 == [0 0 1 0],
        Letter = 'G';
    elseif A2 == [0 0 0 1],
        Letter = 'O';
    end
    
    if CT==Letter,
        JumBenar = JumBenar + 1;
    else
        Pattern = [];
        for ii=1:10,
            for jj=1:10,
                if CP((ii-1)*10+jj) == 1,
                    RPattern(jj) = '#';
                else
                    RPattern(jj) = '.';
                end
            end
            Pattern = [Pattern ; RPattern];
        end
        display(Pattern);
        if Letter =='U',
            Letter = 'Unknown letter';
        end
        disp(['Recognized as = ' Letter]);
    end
end
Akurasi = (JumBenar/NumPatterns) * 100;
display(['Akurasi JST = ', num2str(Akurasi), ' %']);