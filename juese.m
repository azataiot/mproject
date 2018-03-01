% juesehanshu

function[fg]=juese(x,xg1,xg2)

% 先看差值 1 
[m,n]=size(x);
fg=zeros(1,200);
XG1=fg+xg1;
XG2=fg+xg2;
M1=x-XG1;
M2=XG2-x;
a1=find(M1<0);
M1(a1)=0;
b1=find(M1>0);
M1(b1)=0.5;
a2=find(M2<0);
M1(a2)=0;
b2=find(M2>0);
M2(b2)=1;

MM=M2-M1;
c=find(MM==0.5);
MM(c)=0.5;
c1=find(MM<0.5);
MM(c1)=0;
c2=find(MM>0.5);
MM(c2)=0;
fg=MM;
end

