function A = cor1399
%cor1399  Invalid correlation matrix constructed from stock data.
%   COR1399 is an invalid correlation matrix of dimension 1399 constructed
%   from stock data.  The matrix was provided by investment company Orbis.

load cor1399
A = treshape(x,1);
A = A + triu(A,1)';    
