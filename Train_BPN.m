%================================================================================
% Train MLP using Back Propagation
%
%================================================================================

clc
clear

%-------------------------------------------------------------------------------
% Load Input Patterns (P) and Targets (T) from PT_Train.mat 
% PT_Train.mat consists of: P and T
%-------------------------------------------------------------------------------
load PT_Train.mat

NumPatterns = length(P(:,1));			% Number of all training patterns
DimPatterns = length(P(1,:));			% Dimension of training patterns

NHneuron   = 10; 						% Number of neurons in Hidden layer
NOneuron   = 4;							% Number of neurons in Output layer
LR         = 0.9;						% Learning Rate
Epoch      = 10;						% Number of Training cycle
DesiredMSE = 10^-5;						% Desired MSE as one of stop conditions

%-------------------------------------------------------------------------------
% Random sinaptic weights between Input and Hidden (store in W1)
% In general, elements of W1 are in range -0.1 through 0.1
%-------------------------------------------------------------------------------
W1 = [];									
for ii=1:NHneuron,
   W1 = [W1 ; (rand(1,DimPatterns)*2-1)/10];	
end
W1 = W1';

%-------------------------------------------------------------------------------
% Random sinaptic weights between Hidden and Output (store in W2)
% In general, elements of W2 are in range -0.1 through 0.1
%-------------------------------------------------------------------------------
W2 = [];									
for jj=1:NOneuron,
   W2 = [W2 ; (rand(1,NHneuron)*2-1)/10];	
end
W2 = W2';									

MSEepoch    = 100;  					% Sum Square Error for 1 epoch
SSE 		= [];						% Sum Square Error
MSE 		= [];						% Mean Square Error
ee  		= 1;						% Epoch index

while (ee <= Epoch) && (MSEepoch > DesiredMSE)
   SSEepoch = 0;
   MSEepoch = 0;
   for pp=1:NumPatterns,
      CP = P(pp,:);						% Current Pattern
      CT = T(pp,:);						% Current Target
      
      %-------------------------------------------------------------
      % Forward computation to get output, Error, and MSE
      %-------------------------------------------------------------
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
      
      Error = CT - A2;
      
      for kk=1:length(Error),
         SSEepoch = SSEepoch + Error(kk)^2;
      end
      MSEepoch = SSEepoch/NumPatterns;
      
      %-----------------------------------------------------------
      % Backward computation to update Synaptic Weights, W1 and W2
      %-----------------------------------------------------------
      for kk=1:NOneuron,
         D2(kk) = A2(kk) * (1-A2(kk)) * Error(kk);
      end
      
      dW2 = [];
      for jj=1:NHneuron,
			for kk=1:NOneuron,
            delta2(kk) = LR * D2(kk) * A1(jj);
         end
      	dW2 = [dW2 ; delta2];       
      end
      
      for jj=1:NHneuron,
         D1(jj) = A1 * (1-A1)' * D2 * W2(jj,:)';
      end
      
      dW1 = [];
      for ii=1:DimPatterns,
			for jj=1:NHneuron,
            delta1(jj) = LR * D1(jj) * CP(ii);
         end
      	dW1 = [dW1 ; delta1];       
      end
      
      W1 = W1 + dW1;			% New W1
      W2 = W2 + dW2;			% New W2
 
   end 							% endfor for a next pattern
   MSE = [MSE MSEepoch];
   ee  = ee + 1;
end 							% endwhile for next training cycle

plot(MSE);
title(['Pelatihan Propagasi Balik dengan Learning Rate = ', num2str(LR)]);
xlabel('Epoch');
ylabel('MSE');

save TResult.mat W1 W2 NHneuron NOneuron