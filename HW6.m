%% 3b

[t,v] = ode45(@HW6_3B,[0,300],0);
figure(1);plot(t,v);grid on;
xlabel('Time (s)');ylabel('v');legend('t');


%% 5b

[t,x] = ode45(@HW6_5B,[0,0.1],[.1,0,0,0]);

figure(2);plot(t,x);grid on;
xlabel('Time (s)');ylabel('x');legend('x_1','x_2','xdot_1','xdot_2');



%% Functions
function [vdot] = HW6_3B(t,v)
    vdot = (((500*0.3)-(50*9.8*(0.3^2)))-(0.2*v))/(1.1+(50*(0.3^2)));
end

function [xdot] = HW6_5B(t,x)
    A = [0,0,1,0;0,0,0,1;-3.2*(10^4),1.6*(10^4),0,0;(1.6/3)*(10^4),0,0,0];
    xdot = A*x;
end
