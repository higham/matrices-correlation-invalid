function A = high02
%high02  Invalid correlation matrix. 
%   high02 is a 3-by-3 invalid correlation matrix.

%   Source: p. 334 of
%   Nicholas J. Higham. Computing the nearest correlation matrix---A
%   problem from finance. IMA J. Numer. Anal., 22(3):329-343, 2002.

A = [1 1 0;
    1 1 1;
    0 1 1];
