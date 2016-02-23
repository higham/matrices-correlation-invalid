function [A,pattern] = fing97
%FING97   Invalid correlation matrix from stress testing.
%   [A,pattern] = FING97 returns a 7-by-7 invalid correlation matrix A 
%   from stress testing. The output pattern defines positions that must
%   remain fixed in transforming A to a valid correlation matrix. The (i,j)
%   element of pattern is 1 if the corresponding element of A is to remain
%   fixed, else zero.

%   Source: Table 4 of
%   Christopher C. Finger. A methodology to stress correlations.
%   RiskMetrics Monitor, Fourth Quarter:3-11, 1997

A = [1 0.18 -0.13 -0.26 0.19 -0.25 -0.12;
    0.18 1 0.22 -0.14 0.31 0.16 0.09;
   -0.13 0.22 1 0.06 -0.08 0.04 0.04;
   -0.26 -0.14 0.06 1 0.85 0.85 0.85;
    0.19 0.31 -0.08 0.85 1 0.85 0.85;
   -0.25 0.16 0.04 0.85 0.85 1 0.85;
   -0.12 0.09 0.04 0.85 0.85 0.85 1];

% Pattern to keep fixed.
pattern = blkdiag(ones(3,3),eye(4));
