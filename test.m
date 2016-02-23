%test     Test the invalid correlation matrices.
%   Generate matrices, test for symmetry and unit diagonal and
%   compute smallest eigenvalue.

x = {'beyu11', 'bhwi01', 'cor1399', 'cor3120', 'fing97', 'high02', ...
     'mmb13', 'tec03',  'tyda99r1','tyda99r2', 'tyda99r3', 'usgs13'};

fprintf('Matrix name   Dim.  Smallest eigenvalue\n')
for i = 1:length(x)
    mname = str2func(x{i});
    A = mname(); % Read in the matrix whose name is mname.
    fname = sprintf('%s',x{i});
    if ~ishermitian(A)
       fprintf('%8s is not symmetric!', fname)
    end
    if any(diag(A) ~= 1)
        fprintf('%8s does not have unit diagonal!', fname)
    end
    fprintf('%8s:    %4.0f     %9.2e\n', fname, length(A), min(eig(A)) )
end

