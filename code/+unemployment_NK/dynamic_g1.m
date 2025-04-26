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
g1 = zeros(36, 68);
g1(1,17)=(-(y(46)*getPowerDeriv(y(17),(-params(4)),1)));
g1(1,24)=1;
g1(1,46)=(-T(1));
g1(2,16)=T(2);
g1(2,24)=y(16)*T(27);
g1(2,54)=y(16)*params(1)/y(24);
g1(3,20)=(-1);
g1(3,24)=(-params(7))/(y(24)*y(24));
g1(3,30)=1;
g1(3,57)=(-(params(1)*(1-params(6))));
g1(4,2)=(-(1-params(6)));
g1(4,18)=1;
g1(4,19)=(-y(29));
g1(4,29)=(-y(19));
g1(5,18)=(-(T(4)*getPowerDeriv(y(18),1-params(3),1)));
g1(5,21)=1;
g1(5,4)=(-(T(5)*params(26)*y(44)*getPowerDeriv(y(4),params(3),1)));
g1(5,44)=(-(T(5)*params(26)*T(3)));
g1(6,4)=1-params(2);
g1(6,22)=(-1);
g1(6,5)=y(23)*y(48)*(-(T(6)*(-y(23))/(y(5)*y(5))*2*(T(7)-1)));
g1(6,23)=y(48)*T(8)+y(23)*y(48)*(-(T(6)*2*(T(7)-1)*1/y(5)));
g1(6,48)=y(23)*T(8);
g1(7,16)=(-y(28));
g1(7,52)=params(3)*y(59)/y(22);
g1(7,22)=(-(params(3)*y(59)*y(52)))/(y(22)*y(22));
g1(7,28)=(-y(16));
g1(7,56)=1-params(2);
g1(7,59)=params(3)*y(52)/y(22);
g1(8,5)=(-(T(6)*y(48)*y(28)*(y(5)*y(23)*(-(3*y(23)))/(y(5)*y(5))-y(23)*(3*y(23)/y(5)-4))/(y(5)*y(5))));
g1(8,23)=(-(T(6)*y(48)*y(28)*(3*y(23)/y(5)-4+y(23)*3/y(5))/y(5)+T(12)*params(15)*y(56)*T(2)*y(60)*(-((-y(53))/(y(23)*y(23))))+T(11)*(-y(53))/(y(23)*y(23))*2*y(53)/y(23)));
g1(8,53)=(-(T(12)*params(15)*y(56)*T(2)*y(60)*(-(1/y(23)))+T(11)*2*y(53)/y(23)*1/y(23)));
g1(8,24)=(-(T(12)*T(10)*params(15)*y(56)*y(60)*T(27)));
g1(8,54)=(-(T(12)*T(10)*params(15)*y(56)*y(60)*params(1)/y(24)));
g1(8,28)=y(48)-T(9)*y(48)*T(6);
g1(8,56)=(-(T(12)*T(10)*params(15)*T(2)*y(60)));
g1(8,48)=y(28)-T(9)*T(6)*y(28);
g1(8,60)=(-(T(12)*T(10)*params(15)*T(2)*y(56)));
g1(9,18)=(-((-(y(21)*(1-params(3))*y(43)))/(y(18)*y(18))));
g1(9,20)=1;
g1(9,21)=(-((1-params(3))*y(43)/y(18)));
g1(9,24)=(-(y(58)*(1-params(6))*T(27)));
g1(9,54)=(-(y(58)*(1-params(6))*params(1)/y(24)));
g1(9,31)=1;
g1(9,58)=(-(T(2)*(1-params(6))));
g1(9,43)=(-(y(21)*(1-params(3))/y(18)));
g1(10,29)=params(11)*getPowerDeriv(y(29),params(8),1);
g1(10,31)=(-1);
g1(11,21)=(y(55)-(steady_state(11)))*y(55)*(-(y(52)*y(54)*params(1)*params(19)/y(24)))/(y(21)*y(21));
g1(11,52)=(y(55)-(steady_state(11)))*y(55)*y(54)*params(1)*params(19)/y(24)/y(21);
g1(11,24)=(y(55)-(steady_state(11)))*y(55)*y(52)*(-(y(54)*params(1)*params(19)))/(y(24)*y(24))/y(21);
g1(11,54)=(y(55)-(steady_state(11)))*y(55)*y(52)*params(1)*params(19)/y(24)/y(21);
g1(11,25)=params(14);
g1(11,26)=(-(params(19)*y(26)+params(19)*(y(26)-(steady_state(11)))));
g1(11,55)=T(14)+T(13)*(y(55)-(steady_state(11)));
g1(12,30)=1-y(47)*params(12);
g1(12,31)=(-(y(47)*params(12)));
g1(12,47)=y(30)*(-params(12))-y(31)*params(12);
g1(13,21)=y(35)*(1-params(25))*params(22)*(1-y(33))*getPowerDeriv(y(21),(-params(25)),1);
g1(13,25)=(-1);
g1(13,33)=(-((-(params(23)*getPowerDeriv(y(33),params(24),1)))-T(15)*(-(y(35)*(1-params(25))*params(22)))));
g1(13,35)=T(15)*(1-y(33))*(1-params(25))*params(22);
g1(13,43)=1;
g1(14,21)=y(35)*params(22)*T(24)/(params(23)*params(24))*T(25);
g1(14,33)=(-1);
g1(14,35)=T(25)*params(22)*T(16)/(params(23)*params(24));
g1(15,17)=(-1);
g1(15,19)=(-T(18));
g1(15,21)=1-T(17);
g1(15,23)=(-1);
g1(15,26)=(-(y(21)*params(19)/2*2*(y(26)-(steady_state(11)))));
g1(15,29)=(-(y(19)*params(11)/(1+params(8))*getPowerDeriv(y(29),1+params(8),1)));
g1(15,34)=(-1);
g1(16,18)=1;
g1(16,19)=1;
g1(17,16)=1;
g1(17,55)=(-((-y(27))/(y(55)*y(55))));
g1(17,27)=(-(1/y(55)));
g1(18,21)=(-(y(51)*params(22)*(1-y(33))*T(24)));
g1(18,32)=1;
g1(18,33)=(-(y(51)*T(16)*(-params(22))));
g1(18,51)=(-(T(16)*params(22)*(1-y(33))));
g1(19,21)=(-(y(49)*T(19)*T(20)*1/(steady_state(6))*getPowerDeriv(y(21)/(steady_state(6)),params(17),1)*T(26)));
g1(19,26)=(-(y(49)*T(19)*T(26)*T(21)*(steady_state(12))*1/(steady_state(11))*getPowerDeriv(y(26)/(steady_state(11)),params(18),1)));
g1(19,6)=(-(y(49)*T(23)*getPowerDeriv(y(6),params(16),1)));
g1(19,27)=1;
g1(19,49)=(-(T(19)*T(23)));
g1(20,34)=1;
g1(20,45)=(-((steady_state(6))*params(9)));
g1(21,35)=1;
g1(21,50)=(-params(20));
g1(22,3)=(-((-y(21))/(y(3)*y(3))/(y(21)/y(3))));
g1(22,21)=(-(1/y(3)/(y(21)/y(3))));
g1(22,36)=1;
g1(23,1)=(-((-y(17))/(y(1)*y(1))/(y(17)/y(1))));
g1(23,17)=(-(1/y(1)/(y(17)/y(1))));
g1(23,37)=1;
g1(24,5)=(-((-y(23))/(y(5)*y(5))/T(7)));
g1(24,23)=(-(1/y(5)/T(7)));
g1(24,38)=1;
g1(25,26)=(-1);
g1(25,39)=1;
g1(26,27)=(-1);
g1(26,40)=1;
g1(27,19)=(-1);
g1(27,41)=1;
g1(28,7)=(-((-y(32))/(y(7)*y(7))/(y(32)/y(7))));
g1(28,32)=(-(1/y(7)/(y(32)/y(7))));
g1(28,42)=1;
g1(29,8)=(-(params(28)*1/y(8)));
g1(29,44)=1/y(44);
g1(29,61)=(-1);
g1(30,9)=(-(params(29)*1/y(9)));
g1(30,45)=1/y(45);
g1(30,62)=(-1);
g1(31,10)=(-(params(30)*1/y(10)));
g1(31,46)=1/y(46);
g1(31,63)=(-1);
g1(32,12)=(-(params(32)*1/y(12)));
g1(32,48)=1/y(48);
g1(32,65)=(-1);
g1(33,11)=(-(params(31)*1/y(11)));
g1(33,47)=1/y(47);
g1(33,64)=(-1);
g1(34,13)=(-(params(33)*1/y(13)));
g1(34,49)=1/y(49);
g1(34,66)=(-1);
g1(35,14)=(-(params(34)*1/y(14)));
g1(35,50)=1/y(50);
g1(35,67)=(-1);
g1(36,15)=(-(params(35)*1/y(15)));
g1(36,51)=1/y(51);
g1(36,68)=(-1);

end
