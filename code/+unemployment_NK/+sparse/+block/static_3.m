function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1)=log(y(31));
  residual(1)=(T(1))-(T(1)*params(28)+x(1));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(31)-params(28)*1/y(31);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
