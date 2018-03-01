% deside that the descision with or without in the range

function[ok]=deside(xg1,xg2,xmin,xmax)

if xg1>=xmin
ok1=1;
else ok1=o;
end
if xg2<=xmax
ok2=1;
else ok2=0;
end
ok=ok1+ok2;
end