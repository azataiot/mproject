%one matlab functional file for pattern recognition class
%Student: Yaakov Azat Email:yaakovazat@gmail.com ,Teacher: Гусманова Ф. Р.
clc;
clear;
N=20;

m_1=input('Введите значение m_1:')
sig_1=input('Введите значение sig_1:')
m_2=input('Введите значение m_2:')
sig_2=input('Введите значение sig_2:')

x1_min=m_1-3*sig_1
x1_max=m_1+3*sig_1
x2_min=m_2-3*sig_2
x2_max=m_2+3*sig_2

x_min=min(x1_min,x2_min)
x_max=max(x1_max,x2_max)

for i=1:N
    x(i)=x_min+(x_max-x_min)*(i-1)/(N-1)
end
fx1_i=(1/(sqrt(2*pi)))*exp((-1*(x-m_1).^2)/2*(sig_1^2))
fx2_i=(1/(sqrt(2*pi)))*exp((-1*(x-m_2).^2)/2*(sig_2^2))
