function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = unemployment_NK.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 19
    T = [T; NaN(19 - size(T, 1), 1)];
end
T(17) = getPowerDeriv(y(6),1-params(25),1);
T(18) = getPowerDeriv(y(20)*params(22)*T(6)/(params(23)*params(24)),1/(params(24)-1),1);
T(19) = getPowerDeriv(T(15),1-params(16),1);
end
