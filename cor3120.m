function A = cor3120
%cor3120  Invalid correlation matrix constructed from stock data.
%   COR3120 is an invalid correlation matrix of dimension 3120 constructed
%   from stock data.  The matrix was provided by investment company Orbis.

load cor3120
A = treshape(x,1);
A = A + triu(A,1)';