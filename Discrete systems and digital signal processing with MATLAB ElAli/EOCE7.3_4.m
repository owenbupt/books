function zdot=eoce3(t,z)
global A
global B
zdot=A*z+B


clf % to clear the graph area
global A % declaring the dynamic matrix A as global
global B
t0=0;
tf=10;
z0=[0;0]; % vector of initial conditions
A=[0 1;-12 0];
B=[1;1];
[t,z]=ode23('eoce3',t0,tf,z0); % a call to the ode23
y1=z(:,1);
plot(t,y1);
xlabel('Time in seconds')
ylabel('The output y(t) for the derived model')
