function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 22);

T(1) = y(18)^(-params(4));
T(2) = params(1)*y(53)/y(25);
T(3) = y(4)^params(3);
T(4) = params(26)*y(43)*T(3);
T(5) = y(19)^(1-params(3));
T(6) = params(15)/2;
T(7) = 1-T(6)*(y(24)/y(5)-1)^2;
T(8) = 1+y(24)*(3*y(24)/y(5)-4)/y(5);
T(9) = 1-y(52)/y(24);
T(10) = params(15)*y(55)*T(2)*y(59)*T(9);
T(11) = (y(52)/y(24))^2;
T(12) = y(51)*y(53)*params(1)*params(19)/y(25)/y(22);
T(13) = T(12)*y(54);
T(14) = y(22)^(-params(25));
T(15) = y(22)^(1-params(25));
T(16) = params(19)/2*(y(27)-(steady_state(11)))^2;
T(17) = params(11)/(1+params(8))*y(30)^(1+params(8));
T(18) = y(6)^params(16);
T(19) = (steady_state(12))*(y(27)/(steady_state(11)))^params(18);
T(20) = (y(22)/(steady_state(6)))^params(17);
T(21) = T(19)*T(20);
T(22) = T(21)^(1-params(16));

end
