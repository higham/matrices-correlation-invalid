function A = usgs13
%USGS13   Invalid correlation matrix from US Geological Survey.
%   [A,pattern] = USGS13 returns a 94-by-94 invalid correlation matrix A
%   and pattern, a matrix of positions that must remain fixed in
%   transforming A to a correlation matrix: the (i,j) element of
%   pattern is 1 if the corresponding element of A is to remain fixed, else
%   zero.   
%   The matrix is for carbon dioxide storage assessment units for the Rocky
%   Mountains region of the USA and was generated during the
%   national assessment of carbon dioxide storage resources.

%   Source:
%   U.S. Geological Survey Geologic Carbon Dioxide Storage
%   Resources Assessment Team. National Assessment of Geologic Carbon
%   Dioxide Storage Resources---Results (Ver. 1.1, September 2013),
%   September 2013. Provided by Madalyn Blondes of the U.S. Geological
%   Survey, email correspondence; permission to use given.

load rocky_mountain_region_corr;  % Load the matrix A.

block_sizes = [12 5 1 14 12 1 10 4 5 9 13 8];
T = [];
for i = 1:12
    from = 1 + sum(block_sizes(1:i-1));
    to = from + block_sizes(i)-1;
    B = A(from:to,from:to);
    T = blkdiag(T,B);
end
pattern = T;
F = find(pattern ~= 0);  % There are no zeros in A within the pattern.
pattern(F) = 1;
