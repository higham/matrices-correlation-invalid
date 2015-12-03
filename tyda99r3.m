function A = tyda99r3
%tyda99r3   Invalid correlation matrix from resource allocation modeling.
%   tyda99r3 is an 8-by-8 invalid correlation matrix from resource
%   allocation modeling.

%   Source:
%   Rajesh Tyagi and Chandrasekhar Das. Grouping customers for better
%   allocation of resources to serve correlated demands. Computers &
%   Operations Research, 26(10-11):1041-1058, 1999.

x = [-0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 ...
     0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5];
A = treshape(x,1);
A = A + triu(A,1)';    
end
