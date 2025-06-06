function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = unemployment_NK.static_resid_tt(T, y, x, params);
end
residual = zeros(38, 1);
    residual(1) = (y(9)) - (y(33)*T(1));
    residual(2) = (params(1)*y(1)) - (1);
    residual(3) = (y(15)) - (y(5)-params(10)-params(7)/y(9)+y(15)*params(1)*(1-params(6)));
    residual(4) = (y(3)) - ((1-params(6))*y(3)+y(14)*y(4));
    residual(5) = (y(6)) - (T(3)*T(4));
    residual(6) = (y(8)*y(35)) - (y(7)-y(7)*(1-params(2)));
    residual(7) = ((1-params(2))*y(13)+y(6)*params(3)*y(21)/y(7)) - (y(1)*y(13));
    residual(8) = (y(35)*y(13)) - (1+params(15)/2*y(35)*y(13)*(1+(-y(8))/y(8)));
    residual(9) = (y(16)) - (y(6)*(1-params(3))*y(21)/y(3)-y(5)+params(1)*(1-params(6))*y(16));
    residual(10) = (params(11)*y(14)^params(8)) - (y(16));
residual(11) = 1-params(14)+params(14)*y(10)-params(19)*y(11)*(y(11)-(y(11)))+(y(11)-(y(11)))*y(11)*params(1)*params(19);
    residual(12) = (y(15)*(1-y(34)*params(12))) - (y(16)*y(34)*params(12));
    residual(13) = (y(21)) - (y(10)-params(23)*y(18)^params(24)-y(20)*(1-params(25))*params(22)*(1-y(18))*T(5));
    residual(14) = ((y(20)*params(22)*T(6)/(params(23)*params(24)))^(1/(params(24)-1))) - (y(18));
    residual(15) = (y(6)) - (y(2)+y(8)+y(19)+y(6)*T(7)+y(4)*T(8));
    residual(16) = (y(4)) - (1-y(3));
    residual(17) = (y(1)) - (y(12)/y(11));
    residual(18) = (y(17)) - (T(6)*params(22)*(1-y(18))*y(38));
    residual(19) = (y(12)) - (T(9)*T(16)*y(36));
    residual(20) = (y(19)) - ((y(6))*params(9)*y(32));
    residual(21) = (y(20)) - (params(20)*y(37));
residual(22) = y(22);
    residual(23) = (y(23)) - (y(11)-(y(11)));
residual(24) = y(24);
residual(25) = y(25);
residual(26) = y(26);
    residual(27) = (y(27)) - (log(T(13)));
    residual(28) = (y(28)) - (log(T(10)));
    residual(29) = (y(29)) - (log(y(4)/(y(4))));
    residual(30) = (y(30)) - (log(y(17)/(y(17))));
    residual(31) = (log(y(31))) - (log(y(31))*params(28)+x(1));
    residual(32) = (log(y(32))) - (log(y(32))*params(29)+x(2));
    residual(33) = (log(y(33))) - (log(y(33))*params(30)+x(3));
    residual(34) = (log(y(35))) - (log(y(35))*params(32)+x(5));
    residual(35) = (log(y(34))) - (log(y(34))*params(31)+x(4));
    residual(36) = (log(y(36))) - (log(y(36))*params(33)+x(6));
    residual(37) = (log(y(37))) - (log(y(37))*params(34)+x(7));
    residual(38) = (log(y(38))) - (log(y(38))*params(35)+x(8));

end
