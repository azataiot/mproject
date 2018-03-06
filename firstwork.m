%one matlab functional file for pattern recognition class
%Student: Yaakov Azat Email:yaakovazat@gmail.com ,Teacher: Гусманова Ф. Р.
clc;
clear;

m1=input('please input a number:m1:')
% given parameters:
%m1=-3;
sig1=input('please input a number:sig1:')
%sig1=1;
%m2=-1;
m2=input('please input a number:m2:')
%sig2=0.5;
sig2=input('please input a number:sig2:')
%p1=0.9;
p1=input('please input a number:p1:')
%p2=0.1
p2=input('please input a number:p2:')
N=200;
-2
% calculate the coordinates of x :

[xmin,xmax]=threesigma(m1,sig1,m2,sig2);

% the arrange qujian for x:
for i=1:N
    x(i)=xmin+(xmax-xmin)*(i-1)/(N-1);
end

for i=1:N
    x(i);
end

% calculate the Probablity dentisy function of class 1 and class 2 ,as fx1i
% and fx2i

fx1i=PDF(x,m1,sig1);
fx2i=PDF(x,m2,sig2);

ymin=min(min(fx1i),min(fx2i));
ymax=max(max(fx1i),max(fx2i));

% draw pictures of fx1i and fx2i :
figure
subplot(2,2,1)
plot(x,fx1i,x,fx2i);
title('Subplot 1')
hold on
title('fig for fx1i and fx2i @ x')
xlabel('x')
ylabel('fx1i,fx2i')

% пороги принятия решения:
d1=(sig1)^2;
d2=(sig2)^2;
a=d2-d1;
b=2*m2*d1-2*m1*d2;
c=(m1)^2*d2-(m2)^2*d1-2*d1*d2*log(sig2/sig1);
[xg1,xg2]=XG(a,b,c);

%deside that xg1 and xg2 are or not inside the [xmin,xmax]
ok=deside(xg1,xg2,xmin,xmax);

if ok<2
disp('Have to adjust ~!')
else
disp('Normal Case ~!')
end
plot([xg1 xg1],[0 1])
plot([xg2 xg2],[0 1])
hold on
legend('fx1i','fx2i','xg1','xg2')

% adjust xmin and xmax:
[xmin,xmax]=adjust(xmin,xmax,xg1,xg2);
%cause have to adjust case then we have to calculate again :
% 2nd time calculation :
% the arrange qujian for x:
for i=1:N
    x_a(i)=xmin+(xmax-xmin)*(i-1)/(N-1);
end

for i=1:N
    x_a(i);
end

% 2nd time calculation :
% calculate the Probablity dentisy function of class 1 and class 2 ,as fx1i
% and fx2i

fx1i_a=PDF(x_a,m1,sig1);
fx2i_a=PDF(x_a,m2,sig2);
%q1i=(PDF(x_a,m1,sig1))/(PDF(x_a,m1,sig1)+PDF(x_a,m2,sig2));
%q2i=(PDF(x_a,m2,sig2))/(PDF(x_a,m1,sig1)+PDF(x_a,m2,sig2));
% 2nd time calculation :
% draw pictures of fx1i and fx2i :
subplot(2,2,2)
plot(x_a,fx1i_a,x_a,fx2i_a);
hold on
title('fig for fx1i_a and fx2i_a @ x')
xlabel('x')
ylabel('fx1i_a,fx2i_a')

% 2nd time calculation :
% пороги принятия решения:
d1=(sig1)^2;
d2=(sig2)^2;
a=d2-d1;
b=2*m2*d1-2*m1*d2;
c=(m1)^2*d2-(m2)^2*d1-2*d1*d2*log(sig2/sig1);
[xg1_a,xg2_a]=XG(a,b,c);

%deside that xg1 and xg2 are or not inside the [xmin,xmax]
ok_a=deside(xg1,xg2,xmin,xmax);

if ok_a<2
disp('Have to adjust ~!')
else
disp('Normal Case ~!')
end
plot([xg1 xg1],[0 1])
plot([xg2 xg2],[0 1])
hold on
legend('fx1i','fx2i','xg1','xg2')

% finished normal
% juece hanshu
fg=juese(x_a,xg1_a,xg2_a);
a_a=find(fg==0);
b_b=find(fg==0.5);
fg(a_a)=0.5;
fg(b_b)=0;

% desided already 
%division 
syms z pdf1 pdf2;
pdf21_1_1=int((1/(sqrt(2*pi)*sig2))*exp((-1*(z-m2).^2)/2*(sig2^2)),z,xmin,xg1_a);
pdf21_1=vpa(pdf21_1_1);

pdf21_2_1=int((1/(sqrt(2*pi)*sig2))*exp((-1*(z-m2).^2)/2*(sig2^2)),z,xg1_a,xmax);
pdf21_2=vpa(pdf21_2_1);

P21=pdf21_1+pdf21_2;

pdf1=int((1/(sqrt(2*pi)*sig1))*exp((-1*(z-m1).^2)/2*(sig1^2)),z,xg1_a,xg2_a);
P12=vpa(pdf1);


% calculating P 
P=1-0.5*(P21+P12)

%plot again 
subplot(2,2,3)
plot(x_a,p1*fx1i_a,x_a,p2*fx2i_a,x_a,fg);
hold on
title('fig for fx1i_a and fx2i_a and fg @ x')
xlabel('x')
ylabel('fx1i_a,fx2i_a,fg')
plot([xg1 xg1],[0 1])
plot([xg2 xg2],[0 1])
hold on
legend('fx1i_a','fx2i_a','xg1_a','xg2_a','fg')

%p1+p2=1
% Q
for i=1:N
    q1(i)=fx1i_a(i)/(fx1i_a(i)+fx2i_a(i));
    q2(i)=fx2i_a(i)/(fx1i_a(i)+fx2i_a(i));
end

% plot Q 
subplot(2,2,4)
plot(x_a,q1,x_a,q2);
hold on
title('fig for fx1i_a and fx2i_a and fg @ x')
xlabel('x')
ylabel('fx1i_a,fx2i_a,fg')
legend('q1','q2')
disp('successful!')