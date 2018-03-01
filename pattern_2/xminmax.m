%one matlab functional file for pattern recognition class
%Student: Yaakov Azat Email:yaakovazat@gmail.com ,Teacher: Gusmanova F.R.% 
function[xmin,xmax]=xminmax(miu1,miu2,sigma)
xmin=min(miu1-3*sigma,miu2-3*sigma);
xmax=max(miu1+3*sigma,miu2+3*sigma);
