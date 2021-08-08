clc % clear command window
clear all % clear the workspace
close all % close figure windows
% 
A = [2 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2];
b = [1;1;1;1];
x1=[1;1;1;1];

% 
%task 1, 2, 3
realValue = A\b;
L=tril(A,-1);%dividing matrix in to lower and upper part and finding
%diagonal matrix
U=triu(A,1);
D=diag(diag(A));
eps=10^-10;%max error
[value_jacobi,res_jacobi,nres_jacobi,rerr_jacobi,nerr_jacobi] = Jacobi_method(A,L,U,D,x1,b,4,realValue,eps);
[value_gauss,res_gauss,nres_gauss,rerr_gauss,nerr_gauss] = Gauss_method(A,L,U,D,x1,b,4,realValue,eps);

% Exact value is x = A\b gauss method is slightly more precise if it comes to 4 iterations which
% means that this method needs less number of iterations to reach value that
% doesnt mean however that this method is faster because eqation in this mehtod
% can be more time consuming. However 4 inerations is definitly not enough
% to comute this equation. Error in Gauss method is smaller from the
% beggining and by the error i mean both the residual error and real error
% but what is pretty funny with each iteration Jacobi error is getting
% smaller by much bigger interval than gauss method. Unfortueantly it is not enough
% becasue jacobi value is far from real value at the end

% %taks 4
%clear all;
close all;
clc;
r = 1;
d = 2*r;


mc_value = monte_carlo(d,d,10000,@circle_function);

% I set the center of the circle in poit (1,1) becasue I will draw numbers
% from range 0 - 2 so from the box that is equal to 2* radius in that way
% area outside circle is small and I can compute much more precisly. Monte carlo method is not very
% accurate but some times It can give pretty good result, I noticed that the
% bigger number of drawn points the better and more precise integration,
% unfortuenalty if we want to have very precise outcome we need to have
% siginficatly big number of drawn points and it is pretty time consi=uming
% to check if they are in circle 


%taks 5
%clear all
close all
clc
syms x3% setting masked variables as symbolic one's
syms z3
x = [3 1 x3 2]';
y = [-2 1 -3 -2]';
z = [9 3 z3 6]';

eqn = x'*y == 0;
x3 = solve(eqn);
x = [3 1 x3 2]';
%x3 = -3
b = 3;
eqn2 = x*b == z;

z3 = solve(eqn2);
z = [9 3 z3 6]';
%z3 = -9

%in euclidean space if two vectors are orthogonal it means that their dot
%product is zzero so angle between them is 90o or in matlab we can also say that A^T * B = 0;
%checking for which x3 dot product of orthogonal vectors wil give,
%then I found linear dpendency between vector z and x which is x * 3= z
% I made equation that will solve my z3, Im using fuction solve which
% will give me the result of syms variables

% 
% 
%task 6
%clear all
close all
clc

p = 3;
x = rand(1,10000)*2-1;
y = rand(1,10000)*2-1;


number_of_points = 0;

figure (2)
axis equal
hold all
for i = 1:10000
   if ((abs(x(i))^p + abs(y(i))^p)^(1/p) <= 1)
       number_of_points = number_of_points + 1;
       plot(x(i),y(i),'.')
   end
end
saveas(figure(2),'TASK6_184287.png');

% 
%        
%  % Im checking if the p-norm of vector from center to specific point is less
%  % than 1 becasue in unit ball every point belonging to this ball with p - norm must 
%  %satisfy equation (|X1|^p + |y1|^p)^1/p <= 1
%  %if so then the point belong to unit ball out of 1000 points almost 800 points satysfy this conditions
%  %
%  % everything appers to be working when I will change the norm to p = 2, I get a circle, and norm =
%  % 1 then it is dimond, I tried to do spherical unit but obtaining z out of
%  % coordinates appears to be more complex than I thought
%       
% %task 7


a1 = [1.0;4.0;3.0;4.0]';
a2 = [4.0;16.0;12.0;16.0]';
a3 = [3;1;3;2]';
M = [a1(:),a2(:),a3(:)];


[U Sigma V] = svd(M,'econ');
Singualr_Values = diag(Sigma);
%second vector is fierst vector multiplied by 4 and third vector is
 
 
 
 
