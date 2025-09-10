%A.1

t = (-2:2);  %from -2 to 2
f = @(t) exp(-t).*cos(2*pi*t);  %f(t)
plot(t,f(t)); 
xlabel('t');
ylabel('f(t)');
grid;

t = (-2:0.01:2); %from -2 to 2 in increments of 0.01
f = @(t) exp(-t).*cos(2*pi*t); %f(t)
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
yticks([-5 0 5 10]);
grid;

%A.2

t = (-2:2);
f = @(t) exp(-t);
plot(t, f(t));
xlabel('t');
ylabel('f(t)');
grid;

%A.3
%they are identitcal due to the large step size that was set for these 2
%graphs. All the graphs are decreasing exponentially.

%B.1

t = (-1:0.01:2);  %from -2 to 2
u = @(t) 1.0.*((-1<=t)&(t<=2)); %makes unit step function
p = @(t) 1.0.*((t>=0)&(t<1));  %f(t)
plot(t,p(t)); 
xlabel('t');
ylabel('p(t)');
axis([-1 2 -.1 1.1])
yticks([0 0.5 1]);
grid;

%B.2        not tested yet
t = (-1:0.01:2);  %from -2 to 2
u = @(t) 1.0.*((-1<=t)&(t<=2)); %makes unit step function
p = @(t) 1.0.*((t>=0)&(t<1));  %f(t)
r = @(t) t.*p(t);
n = @(t) r(t)+r(-t+2);

plot(t,p(t)); 
xlabel('t');
ylabel('r(t)');
axis([-1 2 -.1 1.1])
yticks([0 0.5 1]);
grid;

%B.3
n1 = @(t) n(t+0.25);