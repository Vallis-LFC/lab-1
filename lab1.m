% %A.1
% 
% t = (-2:2);  %from -2 to 2
% f = @(t) exp(-t).*cos(2*pi*t);  %f(t)
% plot(t,f(t)); 
% xlabel('t');
% ylabel('f(t)');
% title("A.1 P1");
% grid;
% 
% t = (-2:0.01:2); %from -2 to 2 in increments of 0.01
% f = @(t) exp(-t).*cos(2*pi*t); %f(t)
% plot(t,f(t));
% xlabel('t');
% ylabel('f(t)');
% yticks([-5 0 5 10]);
% title("A.1 P2");
% grid;
% 
% %A.2
% 
% t = (-2:2);
% f = @(t) exp(-t);
% plot(t, f(t));
% xlabel('t');
% ylabel('f(t)');
% title("A.2");
% grid;
% 
% %A.3
% %they are identitcal due to the large step size that was set for these 2
% %graphs. All the graphs are decreasing exponentially.

% %B.1
% 
% t = (-1:0.01:2);  %from -1 to 2
% u = @(t) 1.0.*((-1<=t)&(t<=2)); %makes unit step function with restraints
% p = @(t) 1.0.*((t>=0)&(t<1));  %f(t)
% plot(t,p(t)); 
% xlabel('t');
% ylabel('p(t)');
% title("B.1");
% axis([-1 2 -.1 1.1])
% yticks([0 0.5 1]);
% grid;

% %B.2        TESTED
% t = (-2:0.01:2);  %from -2 to 2
% u = @(t) 1.0.*((-1<=t)&(t<=2)); %makes unit step function
% p = @(t) 1.0.*((t>=0)&(t<1));  %f(t)
% r = @(t) t.*p(t);
% n = @(t) r(t)+r(-t+2);
% 
% plot(t,r(t)); %plots r(t)
% plot(t,n(t)); %plots n(t)
% xlabel('t');
% ylabel('r(t)');
% ylabel('n(t)');
% title("B.2");
% axis([-1 2 -.1 1.1])
% yticks([0 0.5 1]);
% grid;

% %B.3
% t = (-2:0.01:2);  %from -2 to 2
% u = @(t) 1.0.*((-1<=t)&(t<=2)); %makes unit step function
% p = @(t) 1.0.*((t>=0)&(t<1));  %f(t)
% r = @(t) t.*p(t);
% n = @(t) r(t)+r(-t+2);
% 
% n1 = @(t) n(t.*0.5);
% n2 = @(t) n1(t+0.5);
% plot(t,n1(t)); hold on %plots n1(t) and n2(t)
% plot(t,n2(t));
% xlabel('t');
% ylabel('n1(t) & n2(t)');
% title("B.3");
% axis([-1 2 -.1 1.1])
% yticks([0 0.5 1]);
% grid;
% 
% %B.4
% t = (-2:0.01:2);  %from -2 to 2
% u = @(t) 1.0.*((-1<=t)&(t<=2)); %makes unit step function
% p = @(t) 1.0.*((t>=0)&(t<1));  %f(t)
% r = @(t) t.*p(t);
% n = @(t) r(t)+r(-t+2);
% 
% n3 = @(t) n(t+0.25);
% n4 = @(t) n3(0.5.*t);
% plot(t,n3(t)); hold on
% plot(t,n4(t)); %plots n3(t) and dotted n4(t)
% xlabel('t');
% ylabel('n3(t) & n4(t)');
% axis([-1 2 -.1 1.1])
% yticks([0 0.5 1]);
% grid;

%B.5
%they produce the same triangular function, supported on 
%[−0.5,3.5] and peaking at t=1.5. They look identical, even though they're obtained through different combinations of shifting and scaling.

%%C.1
% t = (-2:0.01:2);  %from -2 to 2
% u = @(t) 1.0.*((-1<=t)&(t<=2)); %makes unit step function
% f = @(t) exp(-2*t).*cos(4*pi*t);
% g = @(t) f(t).*u(t);
% plot(t, g(2*t+1));
% xlabel('t');
% ylabel('g(t)=f(t)*u(t)');
% grid;

%%C.2
%t = (0:0.01:4);  %from 0 to 4
%u = @(t) 1.0.*((0<=t)&(t<=4)); %makes unit step function
%f = @(t) exp(-2*t).*cos(4*pi*t);
%g = @(t) f(t).*u(t);
%s=@(t) g(t+1);
%plot(t, g(t+1));
%xlabel('t');
%ylabel('s(t)');
%grid;

%C.3
%t = (0:0.01:4); 
%u = @(t) 1.0.*((0<=t)&(t<=4)); %makes unit step function
%matrix = zeros(401,4);

%for i=1:2:7     %i acts as a placeholder for alpha
%    %create function
%    s=@(t)exp(-2).*exp(-i.*t).*cos(4*pi*t).*u(t);
%    plot(t,s(t));
%    xlabel('t');
%    ylabel('s(t)');
%
%    hold on;    %hold off on plotting it on the figure
%end

%%Create legends
%legend('i=1','i=3','i=5','i=7');
%hold off;

%%C.4

%the size of the array generated in C.3 for s(t) is 1604

%%D.1

%A = [0.5377 -1.3077 -1.3499 -0.2050; 
%      1.8339 -0.4336 3.0349 -0.1241;
%       -2.2588 0.3426 0.7254 1.4897;
%       0.8622 3.5784 -0.0631 1.4090;
%        0.3188 2.7694 0.7147 1.4172];

%% D1.(a)
%A_col = A(:); %This operation will make a single coloum vector. MATLAB uses column-major ordering(down each coloum, then move right)
%disp(A_col);

%% D1.(b)
%A_row = A([2 4 7]); % This operation will index using linear indexing. MATLAB uses column-major ordering to order the arrays. The given indexes correspond to the nth element of the new matrix(after operation)
%disp(A_row);

%% D1.(c)
%A_greater = A >=0.2;
%disp(A_greater);   %Applying logical condition to produce same sized matrix(logical). Which ever values in matrix A that are greater than 0.2 will have a value of 1, indicating true.


%% D1.(d)
%A_onlycol = A(A >= 0.2);
%disp(A_onlycol);
%% Displays A matrix in coloumn vector form only values that are 0.2

%% D1.(e)

%A_change = A;
%A_change(A_greater) = 0;
%disp(A_change); 
%%Essentially this code will store the matrix A in another variable. Thereafter,
%% it will be compared to see which values are greater than OR equal to 2 then
%% it will set those values in the matrix to 0. 

%% D2 (a) code
%B_loop = B; 
%tic; 

%for j = 1:size(B_loop,2) %loops through column in B
%    for i = 1:size(B_loop,1) %loops through rows B
%        if abs(B_loop(i,j)) < 0.01 %if the value in that row and coloum is less than 0.01, we will set it to 0.
%            B_loop(i,j) = 0;
%        end
%    end
%end
%t_loop = toc;

%% D2 (b) code

%B_index = B;
%tic;
%B_index(abs(B_index) < 0.01) = 0;
%t_index = toc;

%% D2 (c) code
%fprintf("The time taken for nested loop is %f s, and the time taken for indexing is %f s", t_loop, t_index);


%% D3 CODE

%x_working = x_audio;  

%thres = 0.03;

%% Apply compression
%x_working(abs(x_working) < thres) = 0;

%% Count number of zeroed samples (vectorized way)
%count = sum(abs(x_audio) < thres);

%fprintf("The number of zeroed samples is %f\n", count);

%sound(x_audio,8000);

%% When the prompt sound(x_audio,8000) is entered, the following sound is
%% heard: "Members of the public service alliance of Canada"
