%adjust xmin and xmax
function[xmin,xmax]=adjust(xmin,xmax,gx1,gx2)
xmin=min(min(xmin,xmax),min(gx1,gx2));
xmax=max(max(xmin,xmax),max(gx1,gx2));
end