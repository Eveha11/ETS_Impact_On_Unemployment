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

assert(length(T) >= 23);

T(1) = y(17)^(-params(4));
T(2) = params(1)*y(54)/y(24);
T(3) = y(4)^params(3);
T(4) = params(26)*y(44)*T(3);
T(5) = y(18)^(1-params(3));
T(6) = params(15)/2;
T(7) = y(23)/y(5);
T(8) = 1-T(6)*(T(7)-1)^2;
T(9) = 1+y(23)*(3*y(23)/y(5)-4)/y(5);
T(10) = 1-y(53)/y(23);
T(11) = params(15)*y(56)*T(2)*y(60)*T(10);
T(12) = (y(53)/y(23))^2;
T(13) = y(52)*y(54)*params(1)*params(19)/y(24)/y(21);
T(14) = T(13)*y(55);
T(15) = y(21)^(-params(25));
T(16) = y(21)^(1-params(25));
T(17) = params(19)/2*(y(26)-(steady_state(11)))^2;
T(18) = params(11)/(1+params(8))*y(29)^(1+params(8));
T(19) = y(6)^params(16);
T(20) = (steady_state(12))*(y(26)/(steady_state(11)))^params(18);
T(21) = (y(21)/(steady_state(6)))^params(17);
T(22) = T(20)*T(21);
T(23) = T(22)^(1-params(16));

end
