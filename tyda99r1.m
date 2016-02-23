function A = tyda99r1
%TYDA99R1   Invalid correlation matrix from resource allocation modeling.
%   TYDA99R1 is an 8-by-8 invalid correlation matrix from resource
%   allocation modeling.

%   Source:
%   Rajesh Tyagi and Chandrasekhar Das. Grouping customers for better
%   allocation of resources to serve correlated demands. Computers &
%   Operations Research, 26(10-11):1041-1058, 1999.

x = [0.1 -1 0.4 0.8 -0.1 -0.2 0.7 0.4 -0.3 0.8 -0.1 0.4 0.8 -0.3 0 0.3 ...
     0.2 0.9 -0.3 -0.5 -0.4 0.3 0.6 0.8 0.1 1 -0.2 0.6];
A = treshape(x,1);
A = A + triu(A,1)';    