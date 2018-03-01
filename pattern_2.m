%one matlab functional file for pattern recognition class
%Student: Yaakov Azat Email:yaakovazat@gmail.com ,Teacher: Гусманова Ф. Р.

clc;
clear;

% лабораторной работе № 2 ,Вариант № 7
%число классов объектов – 2

m1=-1;
m2=0;
sig=1;
N=10;

D=sig^2;

xmin=m1-3*sig;
xmax=m2+3*sig;

%Разобьем интервал [xmin, xmax] на (N − 1) отрезков и опреде-
%лим массив координат точек разбиения:
for i=1:N
    x(i)=xmin+(xmax-xmin)*(i-1)/(N-1);
end

for i=1:N
   x(i);
end

%В точках xi вычислим значения условных плотностей распреде-
%ления вероятности величины параметра x для классов a1 и a2:

fx1i=fzmsig(x,m1,sig);
fx2i=fzmsig(x,m2,sig);

%Для визуализации границы между классами определим порог
%принятия решен
xg=(m1+m2)/2;

%объявим вспомогательный массив
for i=1:N
    xgg(i)=xg;
end

%объявим вспомогательный массив
for i=1:N
    if x(i)>xgg(i)
        xgi(i)=0.35;
    else
        xgi(i)=0;
    end
end

%Получим N данных наблюдений для классов a1 и a2:
x1i=Norm(m1,sig); 
x2i=Norm(m2,sig);



