function [x,k]=Newtondd(f,x0,e)
%% Using Newton method to get the root of functin f(x)=0 
%% f~f(x) ,x0 is the first estimated root of f(x)=0,e is the Iterative accuracy k is the circle time to calculate
x_a=x0;
x_b=x_a-subs(f,x_a)/subs(diff(f),x_a);
k=1;
while abs(x_a-x_b)>e,
    k=k+1;
    x_a=x_b;
    x_b=x_a-subs(f,x_a)/subs(diff(f),x_a);
end
x=x_b;
x=vpa(x,4);