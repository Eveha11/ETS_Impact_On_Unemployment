function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = unemployment_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(34, 1);
    residual(1) = (y(25)) - (y(45)*T(1));
    residual(2) = (T(2)*y(17)) - (1);
    residual(3) = (y(31)) - (y(21)-params(10)-params(7)/y(25)+params(1)*(1-params(6))*y(56));
    residual(4) = (y(19)) - ((1-params(6))*y(1)+y(30)*y(20));
    residual(5) = (y(22)) - (T(4)*T(5));
    residual(6) = (y(24)*y(47)*T(7)) - (y(23)-y(4)*(1-params(2)));
    residual(7) = ((1-params(2))*y(55)+params(3)*y(58)*y(51)/y(23)) - (y(17)*y(29));
    residual(8) = (y(47)*y(29)) - (1+T(6)*y(47)*y(29)*T(8)+T(10)*T(11));
    residual(9) = (y(32)) - (y(22)*(1-params(3))*y(37)/y(19)-y(21)+T(2)*(1-params(6))*y(57));
    residual(10) = (params(11)*y(30)^params(8)) - (y(32));
residual(11) = 1-params(14)+params(14)*y(26)-params(19)*y(27)*(y(27)-(steady_state(11)))+T(13)*(y(54)-(steady_state(11)));
    residual(12) = (y(31)*(1-y(46)*params(12))) - (y(32)*y(46)*params(12));
    residual(13) = (y(37)) - (y(26)-params(23)*y(34)^params(24)-y(36)*(1-params(25))*params(22)*(1-y(34))*T(14));
    residual(14) = ((y(36)*params(22)*T(15)/(params(23)*params(24)))^(1/(params(24)-1))) - (y(34));
    residual(15) = (y(22)) - (y(18)+y(24)+y(35)+y(22)*T(16)+y(20)*T(17));
    residual(16) = (y(20)) - (1-y(19));
    residual(17) = (y(17)) - (y(28)/y(54));
    residual(18) = (y(33)) - (T(15)*params(22)*(1-y(34))*y(50));
    residual(19) = (y(28)) - (T(18)*T(22)*y(48));
    residual(20) = (y(35)) - ((steady_state(6))*params(9)*y(44));
    residual(21) = (y(36)) - (params(20)*y(49));
    residual(22) = (y(38)) - (log(y(22)/y(3)));
    residual(23) = (y(39)) - (y(27)-(steady_state(11)));
    residual(24) = (y(40)) - (log(y(20)/y(2)));
    residual(25) = (y(41)) - (log(y(33)/y(7)));
    residual(26) = (y(42)) - (log(y(36)/y(8)));
    residual(27) = (log(y(43))) - (params(28)*log(y(9))+x(it_, 1));
    residual(28) = (log(y(44))) - (params(29)*log(y(10))+x(it_, 2));
    residual(29) = (log(y(45))) - (params(30)*log(y(11))+x(it_, 3));
    residual(30) = (log(y(47))) - (params(32)*log(y(13))+x(it_, 5));
    residual(31) = (log(y(46))) - (params(31)*log(y(12))+x(it_, 4));
    residual(32) = (log(y(48))) - (params(33)*log(y(14))+x(it_, 6));
    residual(33) = (log(y(49))) - (params(34)*log(y(15))+x(it_, 7));
    residual(34) = (log(y(50))) - (params(35)*log(y(16))+x(it_, 8));

end
