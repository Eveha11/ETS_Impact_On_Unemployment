function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = unemployment_NK.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(38, 71);
g1(1,18)=(-(y(49)*getPowerDeriv(y(18),(-params(4)),1)));
g1(1,25)=1;
g1(1,49)=(-T(1));
g1(2,17)=T(2);
g1(2,25)=y(17)*T(28);
g1(2,57)=y(17)*params(1)/y(25);
g1(3,21)=(-1);
g1(3,25)=(-params(7))/(y(25)*y(25));
g1(3,31)=1;
g1(3,60)=(-(params(1)*(1-params(6))));
g1(4,1)=(-(1-params(6)));
g1(4,19)=1;
g1(4,20)=(-y(30));
g1(4,30)=(-y(20));
g1(5,19)=(-(T(4)*getPowerDeriv(y(19),1-params(3),1)));
g1(5,22)=1;
g1(5,4)=(-(T(5)*params(26)*y(47)*getPowerDeriv(y(4),params(3),1)));
g1(5,47)=(-(T(5)*params(26)*T(3)));
g1(6,4)=1-params(2);
g1(6,23)=(-1);
g1(6,5)=y(24)*y(51)*(-(T(6)*(-y(24))/(y(5)*y(5))*2*(y(24)/y(5)-1)));
g1(6,24)=y(51)*T(7)+y(24)*y(51)*(-(T(6)*2*(y(24)/y(5)-1)*1/y(5)));
g1(6,51)=y(24)*T(7);
g1(7,17)=(-y(29));
g1(7,55)=params(3)*y(62)/y(23);
g1(7,23)=(-(params(3)*y(62)*y(55)))/(y(23)*y(23));
g1(7,29)=(-y(17));
g1(7,59)=1-params(2);
g1(7,62)=params(3)*y(55)/y(23);
g1(8,5)=(-(T(6)*y(51)*y(29)*(y(5)*y(24)*(-(3*y(24)))/(y(5)*y(5))-y(24)*(3*y(24)/y(5)-4))/(y(5)*y(5))));
g1(8,24)=(-(T(6)*y(51)*y(29)*(3*y(24)/y(5)-4+y(24)*3/y(5))/y(5)+T(11)*params(15)*y(59)*T(2)*y(63)*(-((-y(56))/(y(24)*y(24))))+T(10)*(-y(56))/(y(24)*y(24))*2*y(56)/y(24)));
g1(8,56)=(-(T(11)*params(15)*y(59)*T(2)*y(63)*(-(1/y(24)))+T(10)*2*y(56)/y(24)*1/y(24)));
g1(8,25)=(-(T(11)*T(9)*params(15)*y(59)*y(63)*T(28)));
g1(8,57)=(-(T(11)*T(9)*params(15)*y(59)*y(63)*params(1)/y(25)));
g1(8,29)=y(51)-T(8)*y(51)*T(6);
g1(8,59)=(-(T(11)*T(9)*params(15)*T(2)*y(63)));
g1(8,51)=y(29)-T(8)*T(6)*y(29);
g1(8,63)=(-(T(11)*T(9)*params(15)*T(2)*y(59)));
g1(9,19)=(-((-(y(22)*(1-params(3))*y(37)))/(y(19)*y(19))));
g1(9,21)=1;
g1(9,22)=(-((1-params(3))*y(37)/y(19)));
g1(9,25)=(-(y(61)*(1-params(6))*T(28)));
g1(9,57)=(-(y(61)*(1-params(6))*params(1)/y(25)));
g1(9,32)=1;
g1(9,61)=(-(T(2)*(1-params(6))));
g1(9,37)=(-(y(22)*(1-params(3))/y(19)));
g1(10,30)=params(11)*getPowerDeriv(y(30),params(8),1);
g1(10,32)=(-1);
g1(11,22)=(y(58)-(steady_state(11)))*y(58)*(-(y(55)*y(57)*params(1)*params(19)/y(25)))/(y(22)*y(22));
g1(11,55)=(y(58)-(steady_state(11)))*y(58)*y(57)*params(1)*params(19)/y(25)/y(22);
g1(11,25)=(y(58)-(steady_state(11)))*y(58)*y(55)*(-(y(57)*params(1)*params(19)))/(y(25)*y(25))/y(22);
g1(11,57)=(y(58)-(steady_state(11)))*y(58)*y(55)*params(1)*params(19)/y(25)/y(22);
g1(11,26)=params(14);
g1(11,27)=(-(params(19)*y(27)+params(19)*(y(27)-(steady_state(11)))));
g1(11,58)=T(13)+T(12)*(y(58)-(steady_state(11)));
g1(12,31)=1-y(50)*params(12);
g1(12,32)=(-(y(50)*params(12)));
g1(12,50)=y(31)*(-params(12))-y(32)*params(12);
g1(13,22)=y(36)*(1-params(25))*params(22)*(1-y(34))*getPowerDeriv(y(22),(-params(25)),1);
g1(13,26)=(-1);
g1(13,34)=(-((-(params(23)*getPowerDeriv(y(34),params(24),1)))-T(14)*(-(y(36)*(1-params(25))*params(22)))));
g1(13,36)=T(14)*(1-y(34))*(1-params(25))*params(22);
g1(13,37)=1;
g1(14,22)=y(36)*params(22)*T(25)/(params(23)*params(24))*T(26);
g1(14,34)=(-1);
g1(14,36)=T(26)*params(22)*T(15)/(params(23)*params(24));
g1(15,18)=(-1);
g1(15,20)=(-T(17));
g1(15,22)=1-T(16);
g1(15,24)=(-1);
g1(15,27)=(-(y(22)*params(19)/2*2*(y(27)-(steady_state(11)))));
g1(15,30)=(-(y(20)*params(11)/(1+params(8))*getPowerDeriv(y(30),1+params(8),1)));
g1(15,35)=(-1);
g1(16,19)=1;
g1(16,20)=1;
g1(17,17)=1;
g1(17,58)=(-((-y(28))/(y(58)*y(58))));
g1(17,28)=(-(1/y(58)));
g1(18,22)=(-(y(54)*params(22)*(1-y(34))*T(25)));
g1(18,33)=1;
g1(18,34)=(-(y(54)*T(15)*(-params(22))));
g1(18,54)=(-(T(15)*params(22)*(1-y(34))));
g1(19,22)=(-(y(52)*T(18)*T(20)*1/(steady_state(6))*getPowerDeriv(T(21),params(17),1)*T(27)));
g1(19,27)=(-(y(52)*T(18)*T(27)*T(22)*(steady_state(12))*1/(steady_state(11))*getPowerDeriv(T(19),params(18),1)));
g1(19,6)=(-(y(52)*T(24)*getPowerDeriv(y(6),params(16),1)));
g1(19,28)=1;
g1(19,52)=(-(T(18)*T(24)));
g1(20,35)=1;
g1(20,48)=(-((steady_state(6))*params(9)));
g1(21,36)=1;
g1(21,53)=(-params(20));
g1(22,3)=(-((-y(22))/(y(3)*y(3))/(y(22)/y(3))));
g1(22,22)=(-(1/y(3)/(y(22)/y(3))));
g1(22,38)=1;
g1(23,27)=(-1);
g1(23,39)=1;
g1(24,2)=(-((-y(20))/(y(2)*y(2))/(y(20)/y(2))));
g1(24,20)=(-(1/y(2)/(y(20)/y(2))));
g1(24,40)=1;
g1(25,7)=(-((-y(33))/(y(7)*y(7))/(y(33)/y(7))));
g1(25,33)=(-(1/y(7)/(y(33)/y(7))));
g1(25,41)=1;
g1(26,8)=(-((-y(36))/(y(8)*y(8))/(y(36)/y(8))));
g1(26,36)=(-(1/y(8)/(y(36)/y(8))));
g1(26,42)=1;
g1(27,22)=(-(1/(steady_state(6))/T(21)));
g1(27,43)=1;
g1(28,27)=(-(1/(steady_state(11))/T(19)));
g1(28,44)=1;
g1(29,20)=(-(1/(steady_state(4))/(y(20)/(steady_state(4)))));
g1(29,45)=1;
g1(30,33)=(-(1/(steady_state(17))/(y(33)/(steady_state(17)))));
g1(30,46)=1;
g1(31,9)=(-(params(28)*1/y(9)));
g1(31,47)=1/y(47);
g1(31,64)=(-1);
g1(32,10)=(-(params(29)*1/y(10)));
g1(32,48)=1/y(48);
g1(32,65)=(-1);
g1(33,11)=(-(params(30)*1/y(11)));
g1(33,49)=1/y(49);
g1(33,66)=(-1);
g1(34,13)=(-(params(32)*1/y(13)));
g1(34,51)=1/y(51);
g1(34,68)=(-1);
g1(35,12)=(-(params(31)*1/y(12)));
g1(35,50)=1/y(50);
g1(35,67)=(-1);
g1(36,14)=(-(params(33)*1/y(14)));
g1(36,52)=1/y(52);
g1(36,69)=(-1);
g1(37,15)=(-(params(34)*1/y(15)));
g1(37,53)=1/y(53);
g1(37,70)=(-1);
g1(38,16)=(-(params(35)*1/y(16)));
g1(38,54)=1/y(54);
g1(38,71)=(-1);

end
