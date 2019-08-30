%================================================================================
% Pengujian JST PB untuk satu pola
%
% Updated 21 November 1999
%
%================================================================================

clc
clear

%----------------------------------------------------
% Load Training Results from TResult.mat 
% TResult.mat consists of W1, W2, NHneuron, NOneuron
%----------------------------------------------------
load TResult.mat 

NNOFF = 0;                    % Number of Neuron OFF

NHneuron = NHneuron - NNOFF;
W2 = W2(1:NHneuron,:);

%----------------------------------------------------
% CP is a pattern as test data
%----------------------------------------------------
CP = [ ...
    
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern E 1
    0 0 1 1 1 1 1 1 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 1 1 1 1 0 0 ; ...

     ];
 

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
      Class(jj) = 0;
   else
      Class(jj) = 1;
   end   
end  


Letter = 'U';

if Class == [1 0 0 0],
   Letter = 'E';   
end  

if Class == [0 1 0 0],
   Letter = 'F';   
end  

if Class == [0 0 1 0],
   Letter = 'G';   
end  

if Class == [0 0 0 1],
   Letter = 'O';   
end  

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
display(['Recognized as: ' Letter]);