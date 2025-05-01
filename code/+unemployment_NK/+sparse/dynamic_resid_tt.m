function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 24
    T = [T; NaN(24 - size(T, 1), 1)];
end
T(1) = y(40)^(-params(4));
T(2) = params(1)*y(85)/y(47);
T(3) = y(7)^params(3);
T(4) = params(26)*y(69)*T(3);
T(5) = y(41)^(1-params(3));
T(6) = params(15)/2;
T(7) = 1-T(6)*(y(46)/y(8)-1)^2;
T(8) = 1+y(46)*(3*y(46)/y(8)-4)/y(8);
T(9) = 1-y(84)/y(46);
T(10) = params(15)*y(89)*T(2)*y(111)*T(9);
T(11) = (y(84)/y(46))^2;
T(12) = y(82)*y(85)*params(1)*params(19)/y(47)/y(44);
T(13) = T(12)*y(87);
T(14) = y(44)^(-params(25));
T(15) = y(44)^(1-params(25));
T(16) = params(19)/2*(y(49)-(steady_state(11)))^2;
T(17) = params(11)/(1+params(8))*y(52)^(1+params(8));
T(18) = y(12)^params(16);
T(19) = y(49)/(steady_state(11));
T(20) = (steady_state(12))*T(19)^params(18);
T(21) = y(44)/(steady_state(6));
T(22) = T(21)^params(17);
T(23) = T(20)*T(22);
T(24) = T(23)^(1-params(16));
end
