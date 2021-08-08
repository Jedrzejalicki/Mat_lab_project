function monte_carlo = monte_carlo(maxY, x1,N,fun)
%drawing points checking if point are in circle, dividing number of points
%that are in circle and all points times area of box
under_curve = 0;
for i = 1:N
    x = x1*rand();
    y = maxY*rand();
    if(feval(fun,x,y)  == 1 )
        under_curve = under_curve+1;
    end
end
monte_carlo = (under_curve/N)*maxY*x1;
end