% HW2 Computational Solutions
% 1.1
syms t;

X1_1 = laplace(0.5*(5*exp(-3*t)-3*exp(-5*t)));

disp("1.1 Solution")
pretty(X1_1)
disp("")

% 1.2

X1_2 = laplace(exp(2*t)*sin(t));

disp("1.2 Solution")
pretty(X1_2)
disp("")

% 2.1

syms s;

X2_1 = ilaplace((3*s-2)/((s+1)*(s-1)));

disp("2.1 Solution")
pretty(X2_1)
disp("")

% 2.2

X2_2 = ilaplace(1/(4*(s^2)*(s-3)));

disp("2.2 Solution")
pretty(X2_2)
disp("")

% 4.1

X4_1 = laplace(

