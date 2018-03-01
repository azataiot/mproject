%пороги принятия решения 
function[xg1,xg2]=XG(a,b,c)
xg2=(-b-sqrt(b^2-4*a*c))/(2*a);
xg1=(-b+sqrt(b^2-4*a*c))/(2*a);
end