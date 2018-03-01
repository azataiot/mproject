N=200
x = 0:N-1
x_min=-5.5
x_max=2.6
for i = 1:N
    x(i)=x_min+((x_max-x_min)*i)/(N-1)
end
x(i)
m_1=-4
sig_1=0.5
m_2=-1
sig_2=1.2

