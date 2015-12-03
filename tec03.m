function A = tec03
%tec03    Invalid correlation matrix from stress testing.
%   tec03 is a 4-by-4 invalid correlation matrix from stress testing.

%   Source: $\widehat \Omega$ on p.~86 in
%   Saygun Turkay, Eduardo Epperlein, and Nicos Christofides. Correlation
%   stress testing for value-at-risk. Journal of Risk, 5(4):75-89, 2003

A = [1 -0.55 -0.15 -0.10;
    -0.55 1 0.90 0.90;
    -0.15 0.90 1 0.90;
    -0.10 0.90 0.90 1];
