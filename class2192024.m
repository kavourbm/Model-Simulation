[t,y] = ode45(@ydot_ex, [0,15],1);
y_exact = 1./(2-cos(t));
figure(1); plot(t,y,t,y_exact,'o'); grid on;
xlabel('Time (s)'); ylabel('y'); legend('ode','exact');