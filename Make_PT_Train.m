%=============================================================
% Patterns of Letters as Inputs for Artificial Neural Network
% P = 2-D Matrix 20 rows x 100 columns
% Row i-th = pattern of letter i-th
%=============================================================

P = [ ...  
    
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
    
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern F 1
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ; ...
   
   	0 0 1 1 1 1 1 1 1 1 ...    % Letter pattern G 1
    0 1 1 1 1 1 1 1 1 1 ...
	1 1 1 0 0 0 0 0 1 1 ...
   	1 1 0 0 0 0 0 0 0 0 ...
    1 1 0 0 0 0 0 0 0 0 ...
	1 1 0 0 0 1 1 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 0 1 1 ...
	0 1 1 1 1 1 1 1 1 1 ...
    0 0 1 1 1 1 1 1 1 1 ; ...
   
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern O 1
    0 1 1 1 1 1 1 1 1 0 ...
	1 1 1 0 0 0 0 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 0 0 0 0 0 0 1 1 ...
	1 1 0 0 0 0 0 0 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 1 1 1 ...
	0 1 1 1 1 1 1 1 1 0 ...
    0 0 1 1 1 1 1 1 0 0 ; ...
   
   	0 0 1 1 1 1 0 0 0 0 ...    % Letter pattern E 2
    0 0 1 1 1 1 0 0 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 1 1 1 1 0 0 ; ...
      
   	0 0 1 1 1 1 0 0 0 0 ...    % Letter pattern F 2
    0 0 1 1 1 1 0 0 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ; ...
      
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern G 2
    0 1 1 1 1 1 1 1 0 0 ...
	1 1 1 0 0 0 0 0 0 0 ...
   	1 1 0 0 0 0 0 0 0 0 ...
    1 1 0 0 0 0 0 0 0 0 ...
	1 1 0 0 0 1 1 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 0 1 1 ...
	0 1 1 1 1 1 1 1 1 1 ...
    0 0 1 1 1 1 1 1 1 1 ; ...
      
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern O 2
    0 1 1 1 1 1 1 1 1 0 ...
	1 1 1 0 0 0 0 1 1 1 ...
   	1 1 0 0 0 0 0 0 0 0 ...
    1 1 0 0 0 0 0 0 0 0 ...
	1 1 0 0 0 0 0 0 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 1 1 1 ...
	0 1 1 1 1 1 1 1 1 0 ...
    0 0 1 1 1 1 1 1 0 0 ; ...
   
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern E 3
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 0 0 0 0 ...
	0 0 1 1 1 1 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 1 1 1 1 0 0 ; ...
      
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern F 3
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 0 0 0 0 ...
	0 0 1 1 1 1 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ; ...

   	0 0 1 1 1 1 1 1 1 1 ...    % Letter pattern G 3
    0 1 1 1 1 1 1 1 1 1 ...
	1 1 1 0 0 0 0 0 1 1 ...
   	1 1 0 0 0 0 0 0 0 0 ...
    1 1 0 0 0 0 0 0 0 0 ...
	1 1 0 0 0 0 0 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 0 1 1 ...
	0 1 1 1 1 1 1 1 1 1 ...
    0 0 1 1 1 1 1 1 1 1 ; ...
         
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern O 3
    0 1 1 1 1 1 1 1 1 0 ...
	1 1 1 0 0 0 0 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 0 0 0 0 0 0 1 1 ...
	1 1 0 0 0 0 1 1 1 1 ...
   	1 1 0 0 0 0 1 1 1 1 ...
    1 1 1 0 0 0 0 1 1 1 ...
	0 1 1 1 1 1 1 1 1 0 ...
    0 0 1 1 1 1 1 1 0 0 ; ...
      
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern E 4
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 1 1 0 0 0 0 ...
   	0 0 1 1 1 1 0 0 0 0 ; ...
      
  	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern F 4
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 1 0 0 0 0 0 ...
   	0 0 1 1 1 0 0 0 0 0 ; ...
   
   	0 0 1 1 1 1 1 1 1 1 ...    % Letter pattern G 4
    0 1 1 1 1 1 1 1 1 1 ...
	1 1 1 0 0 0 0 0 1 1 ...
   	1 1 0 0 0 0 0 0 0 0 ...
    1 1 0 0 0 0 0 0 0 0 ...
	1 1 0 0 0 1 1 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 0 1 1 ...
	0 1 1 1 1 1 1 1 0 0 ...
    0 0 1 1 1 1 1 1 0 0 ; ...

   	0 0 1 1 1 1 1 1 1 1 ...    % Letter pattern O 4
    0 1 1 1 1 1 1 1 1 1 ...
	1 1 1 0 0 0 0 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 0 0 0 0 0 0 1 1 ...
	1 1 0 0 0 0 0 0 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 1 1 1 ...
	0 1 1 1 1 1 1 1 1 0 ...
    0 0 1 1 1 1 1 1 0 0 ; ...
   
   	0 0 1 1 1 1 0 0 0 0 ...    % Letter pattern E 5
    0 0 1 1 1 1 0 0 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 0 0 0 0 ...
	0 0 1 1 1 1 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 1 1 1 1 0 0 ...
   	0 0 1 1 1 1 1 1 0 0 ; ...
      
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern F 5
    0 0 1 1 1 1 1 1 0 0 ...
	0 0 1 1 0 0 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 1 1 0 0 0 0 ...
	0 0 1 1 1 1 0 0 0 0 ...
   	0 0 1 1 0 0 0 0 0 0 ...
    0 0 1 1 0 0 0 0 0 0 ...
	0 0 1 1 1 0 0 0 0 0 ...
   	0 0 1 1 1 0 0 0 0 0 ; ...
   
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern G 5
    0 1 1 1 1 1 1 1 1 0 ...
	1 1 1 0 0 0 0 0 1 1 ...
   	1 1 0 0 0 0 0 0 0 0 ...
    1 1 0 0 0 0 0 0 0 0 ...
	1 1 0 0 0 1 1 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 0 1 1 ...
	0 1 1 1 1 1 1 1 1 1 ...
    0 0 1 1 1 1 1 1 1 1 ; ...
      
   	0 0 1 1 1 1 1 1 0 0 ...    % Letter pattern O 5
    0 1 1 1 1 1 1 1 1 0 ...
	1 1 1 0 0 0 0 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 0 0 0 0 0 0 1 1 ...
	1 1 0 0 0 0 1 1 1 1 ...
   	1 1 0 0 0 0 0 0 1 1 ...
    1 1 1 0 0 0 0 0 1 1 ...
	0 1 1 1 1 1 1 1 1 0 ...
    0 0 1 1 1 1 1 1 0 0 ...
      
    ];
   
   
%===================================================
% Targets as teacher in Supervised Learning
% 2-D Matrix 20 rows x 4 columns
% Row i-th = Target for pattern i-th
%===================================================

T = [ ...
   
	   1 0 0 0 ; ...		% Target for pattern E 1
	   0 1 0 0 ; ...		% Target for pattern F 1
	   0 0 1 0 ; ...		% Target for pattern G 1
	   0 0 0 1 ; ...		% Target for pattern O 1
         
	   1 0 0 0 ; ...		% Target for pattern E 2
	   0 1 0 0 ; ...		% Target for pattern F 2
	   0 0 1 0 ; ...		% Target for pattern G 2
	   0 0 0 1 ; ...		% Target for pattern O 2
  
	   1 0 0 0 ; ...		% Target for pattern E 3
	   0 1 0 0 ; ...		% Target for pattern F 3
	   0 0 1 0 ; ...		% Target for pattern G 3
	   0 0 0 1 ; ...		% Target for pattern O 3
      
	   1 0 0 0 ; ...		% Target for pattern E 4
	   0 1 0 0 ; ...		% Target for pattern F 4
	   0 0 1 0 ; ...		% Target for pattern G 4
	   0 0 0 1 ; ...		% Target for pattern O 4
      
	   1 0 0 0 ; ...		% Target for pattern E 5
	   0 1 0 0 ; ...		% Target for pattern F 5
	   0 0 1 0 ; ...		% Target for pattern G 5
	   0 0 0 1 ; ...		% Target for pattern O 5
   
    ];							
    
    
save PT_Train.mat P T