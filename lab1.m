t = (-2:2);  %from -2 to 2
f = @(t) exp(-t).*cos(2*pi*t);  %f(t)
plot(t,f(t)); 

t = (-2:0.01:2); %from -2 to 2 in increments of 0.01
f = @(t) exp(-t).*cos(2*pi*t); %f(t)
plot(t,f(t));