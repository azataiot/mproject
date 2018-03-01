%one matlab functional file for pattern recognition class
%Student: Yaakov Azat Email:yaakovazat@gmail.com ,Teacher: Гусманова Ф. Р.
clc;
clear;
N=20;

m_1=-1
sig_1=0.3
m_2=1
sig_2=0.9
p1=0.7
p2=0.3

x1_min=m_1-3*sig_1
x1_max=m_1+3*sig_1
x2_min=m_2-3*sig_2
x2_max=m_2+3*sig_2

x_min=min(x1_min,x2_min)
x_max=max(x1_max,x2_max)

for i=1:N
    x(i)=x_min+(x_max-x_min)*(i-1)/(N-1)
end

for i=1:N
    x(i)
end
fx1_i=(1/(sqrt(2*pi)))*exp((-1*(x-m_1).^2)/2*(sig_1^2))
fx2_i=(1/(sqrt(2*pi)))*exp((-1*(x-m_2).^2)/2*(sig_2^2))

d1=sig_1^2
d2=sig_2^2
a=d2-d1
b=2*m_2*d1-2*m_1*d2
c=m_1^2*d2-m_2^2*d1-2*d1*d2*log(sig_2/sig_1)

xg1=(-b+(sqrt(b^2-4*a*c)))/2*a
xg2=(-b-(sqrt(b^2-4*a*c)))/2*a

for i=1:N
    while xg2<x(i)<xg1
        fg(i)=0.5
    end
end

