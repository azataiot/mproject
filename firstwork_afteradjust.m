%irstwork_afteradjust
%cause have to adjust case then we have to calculate again :
% 2nd time calculation :
% the arrange qujian for x:
for i=1:N
    x(i)=xmin+(xmax-xmin)*(i-1)/(N-1);
end

for i=1:N
    x(i);
end

% 2nd time calculation :
% calculate the Probablity dentisy function of class 1 and class 2 ,as fx1i
% and fx2i

fx1i=PDF(x,m1,sig1);
fx2i=PDF(x,m2,sig2);
