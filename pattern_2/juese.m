%juese.m
% juesehanshu
 
function[fg]=juese(x,xg)
 



M1=x-XG;
a1=find(M1<0);
M1(a1)=0;
b1=find(M1>0);
M1(b1)=0.35;
end