% 3.5

A = [0,1;-2,-3];
B = [0;1];
C = [1,0;-3/2,-1/2];
D = [0;1/2];

sys3 = ss(A,B,C,D);

x0 = [1;1];

initial(sys3,x0)

% 3.6

[t,x] = ode45(@hw3p6,[0,7],[1,1]);

plot(t,x)

function xdot=hw3p6(t,x)
xdot(1) = x(2);
xdot(2) = sin(t)-2*x(1)-3*x(2);
xdot = [xdot(1);xdot(2)];
end
