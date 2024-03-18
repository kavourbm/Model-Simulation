%% Main Code

[t] = ode45(@L08c_ode_2nd_2m_free,[0,300],0);
figure(7);plot(t,x(:,1:2));grid on;
xlabel('Time (s)');ylabel('x');legend('x_1','x_2');


%% Function
function [v] = L08c_ode_2nd_2m_free(t)
    v = ((500*0.3)-(50*9.8*(0.3^2)))/(t*(1.1+(50*(0.3^2))+0.2));
end
