% Produced by CVXGEN, 2019-04-16 07:32:27 -0400.
% CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2017 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: cvxsolve.m.
% Description: Solution file, via cvx, for use with sample.m.
function [vars, status] = cvxsolve(params, settings)
A = params.A;
B = params.B;
Q = params.Q;
Q_final = params.Q_final;
R = params.R;
deltau_max = params.deltau_max;
dist = params.dist;
r_0 = params.r_0;
if isfield(params, 'r_1')
  r_1 = params.r_1;
elseif isfield(params, 'r')
  r_1 = params.r{1};
else
  error 'could not find r_1'
end
if isfield(params, 'r_2')
  r_2 = params.r_2;
elseif isfield(params, 'r')
  r_2 = params.r{2};
else
  error 'could not find r_2'
end
if isfield(params, 'r_3')
  r_3 = params.r_3;
elseif isfield(params, 'r')
  r_3 = params.r{3};
else
  error 'could not find r_3'
end
if isfield(params, 'r_4')
  r_4 = params.r_4;
elseif isfield(params, 'r')
  r_4 = params.r{4};
else
  error 'could not find r_4'
end
if isfield(params, 'r_5')
  r_5 = params.r_5;
elseif isfield(params, 'r')
  r_5 = params.r{5};
else
  error 'could not find r_5'
end
if isfield(params, 'r_6')
  r_6 = params.r_6;
elseif isfield(params, 'r')
  r_6 = params.r{6};
else
  error 'could not find r_6'
end
if isfield(params, 'r_7')
  r_7 = params.r_7;
elseif isfield(params, 'r')
  r_7 = params.r{7};
else
  error 'could not find r_7'
end
if isfield(params, 'r_8')
  r_8 = params.r_8;
elseif isfield(params, 'r')
  r_8 = params.r{8};
else
  error 'could not find r_8'
end
if isfield(params, 'r_9')
  r_9 = params.r_9;
elseif isfield(params, 'r')
  r_9 = params.r{9};
else
  error 'could not find r_9'
end
if isfield(params, 'r_10')
  r_10 = params.r_10;
elseif isfield(params, 'r')
  r_10 = params.r{10};
else
  error 'could not find r_10'
end
if isfield(params, 'r_11')
  r_11 = params.r_11;
elseif isfield(params, 'r')
  r_11 = params.r{11};
else
  error 'could not find r_11'
end
u_max = params.u_max;
u_prev = params.u_prev;
x_0 = params.x_0;
cvx_begin
  % Caution: automatically generated by cvxgen. May be incorrect.
  variable x_1(5, 1);
  variable u_1(2, 1);
  variable u_0(2, 1);
  variable x_2(5, 1);
  variable u_2(2, 1);
  variable x_3(5, 1);
  variable u_3(2, 1);
  variable x_4(5, 1);
  variable u_4(2, 1);
  variable x_5(5, 1);
  variable u_5(2, 1);
  variable x_6(5, 1);
  variable u_6(2, 1);
  variable x_7(5, 1);
  variable u_7(2, 1);
  variable x_8(5, 1);
  variable u_8(2, 1);
  variable x_9(5, 1);
  variable u_9(2, 1);
  variable x_10(5, 1);
  variable u_10(2, 1);
  variable x_11(5, 1);

  minimize(quad_form(x_1 - r_1, Q) + quad_form(u_1 - u_0, R) + quad_form(x_2 - r_2, Q) + quad_form(u_2 - u_1, R) + quad_form(x_3 - r_3, Q) + quad_form(u_3 - u_2, R) + quad_form(x_4 - r_4, Q) + quad_form(u_4 - u_3, R) + quad_form(x_5 - r_5, Q) + quad_form(u_5 - u_4, R) + quad_form(x_6 - r_6, Q) + quad_form(u_6 - u_5, R) + quad_form(x_7 - r_7, Q) + quad_form(u_7 - u_6, R) + quad_form(x_8 - r_8, Q) + quad_form(u_8 - u_7, R) + quad_form(x_9 - r_9, Q) + quad_form(u_9 - u_8, R) + quad_form(x_10 - r_10, Q) + quad_form(u_10 - u_9, R) + quad_form(x_11 - r_11, Q_final) + quad_form(x_0 - r_0, Q) + quad_form(u_0 - u_prev, eye(2)));
  subject to
    x_1 == A*x_0 + B*u_0;
    x_2 == A*x_1 + B*u_1;
    x_3 == A*x_2 + B*u_2;
    x_4 == A*x_3 + B*u_3;
    x_5 == A*x_4 + B*u_4;
    x_6 == A*x_5 + B*u_5;
    x_7 == A*x_6 + B*u_6;
    x_8 == A*x_7 + B*u_7;
    x_9 == A*x_8 + B*u_8;
    x_10 == A*x_9 + B*u_9;
    x_11 == A*x_10 + B*u_10;
    abs(u_0(1)) <= u_max(1);
    abs(u_1(1)) <= u_max(1);
    abs(u_2(1)) <= u_max(1);
    abs(u_3(1)) <= u_max(1);
    abs(u_4(1)) <= u_max(1);
    abs(u_5(1)) <= u_max(1);
    abs(u_6(1)) <= u_max(1);
    abs(u_7(1)) <= u_max(1);
    abs(u_8(1)) <= u_max(1);
    abs(u_9(1)) <= u_max(1);
    abs(u_10(1)) <= u_max(1);
    abs(u_0(2)) <= u_max(2);
    abs(u_1(2)) <= u_max(2);
    abs(u_2(2)) <= u_max(2);
    abs(u_3(2)) <= u_max(2);
    abs(u_4(2)) <= u_max(2);
    abs(u_5(2)) <= u_max(2);
    abs(u_6(2)) <= u_max(2);
    abs(u_7(2)) <= u_max(2);
    abs(u_8(2)) <= u_max(2);
    abs(u_9(2)) <= u_max(2);
    abs(u_10(2)) <= u_max(2);
    abs(u_1(1) - u_0(1)) <= deltau_max(1);
    abs(u_2(1) - u_1(1)) <= deltau_max(1);
    abs(u_3(1) - u_2(1)) <= deltau_max(1);
    abs(u_4(1) - u_3(1)) <= deltau_max(1);
    abs(u_5(1) - u_4(1)) <= deltau_max(1);
    abs(u_6(1) - u_5(1)) <= deltau_max(1);
    abs(u_7(1) - u_6(1)) <= deltau_max(1);
    abs(u_8(1) - u_7(1)) <= deltau_max(1);
    abs(u_9(1) - u_8(1)) <= deltau_max(1);
    abs(u_10(1) - u_9(1)) <= deltau_max(1);
    abs(u_0(1) - u_prev(1)) <= deltau_max(1);
    abs(u_1(2) - u_0(2)) <= deltau_max(2);
    abs(u_2(2) - u_1(2)) <= deltau_max(2);
    abs(u_3(2) - u_2(2)) <= deltau_max(2);
    abs(u_4(2) - u_3(2)) <= deltau_max(2);
    abs(u_5(2) - u_4(2)) <= deltau_max(2);
    abs(u_6(2) - u_5(2)) <= deltau_max(2);
    abs(u_7(2) - u_6(2)) <= deltau_max(2);
    abs(u_8(2) - u_7(2)) <= deltau_max(2);
    abs(u_9(2) - u_8(2)) <= deltau_max(2);
    abs(u_10(2) - u_9(2)) <= deltau_max(2);
    abs(u_0(2) - u_prev(2)) <= deltau_max(2);
    abs(x_1(4)) <= dist(1);
    abs(x_2(4)) <= dist(1);
    abs(x_3(4)) <= dist(1);
    abs(x_4(4)) <= dist(1);
    abs(x_5(4)) <= dist(1);
    abs(x_6(4)) <= dist(1);
    abs(x_7(4)) <= dist(1);
    abs(x_8(4)) <= dist(1);
    abs(x_9(4)) <= dist(1);
    abs(x_10(4)) <= dist(1);
    abs(x_1(5)) <= dist(2);
    abs(x_2(5)) <= dist(2);
    abs(x_3(5)) <= dist(2);
    abs(x_4(5)) <= dist(2);
    abs(x_5(5)) <= dist(2);
    abs(x_6(5)) <= dist(2);
    abs(x_7(5)) <= dist(2);
    abs(x_8(5)) <= dist(2);
    abs(x_9(5)) <= dist(2);
    abs(x_10(5)) <= dist(2);
cvx_end
vars.u_0 = u_0;
vars.u_1 = u_1;
vars.u{1} = u_1;
vars.u_2 = u_2;
vars.u{2} = u_2;
vars.u_3 = u_3;
vars.u{3} = u_3;
vars.u_4 = u_4;
vars.u{4} = u_4;
vars.u_5 = u_5;
vars.u{5} = u_5;
vars.u_6 = u_6;
vars.u{6} = u_6;
vars.u_7 = u_7;
vars.u{7} = u_7;
vars.u_8 = u_8;
vars.u{8} = u_8;
vars.u_9 = u_9;
vars.u{9} = u_9;
vars.u_10 = u_10;
vars.u{10} = u_10;
vars.x_1 = x_1;
vars.x{1} = x_1;
vars.x_2 = x_2;
vars.x{2} = x_2;
vars.x_3 = x_3;
vars.x{3} = x_3;
vars.x_4 = x_4;
vars.x{4} = x_4;
vars.x_5 = x_5;
vars.x{5} = x_5;
vars.x_6 = x_6;
vars.x{6} = x_6;
vars.x_7 = x_7;
vars.x{7} = x_7;
vars.x_8 = x_8;
vars.x{8} = x_8;
vars.x_9 = x_9;
vars.x{9} = x_9;
vars.x_10 = x_10;
vars.x{10} = x_10;
vars.x_11 = x_11;
vars.x{11} = x_11;
status.cvx_status = cvx_status;
% Provide a drop-in replacement for csolve.
status.optval = cvx_optval;
status.converged = strcmp(cvx_status, 'Solved');
