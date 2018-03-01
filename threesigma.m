%one matlab functional file for pattern recognition class
%Student: Yaakov Azat Email:yaakovazat@gmail.com ,Teacher: Гусманова Ф. Р.
function[xmin,xmax]=threesigma(miu1,sigma1,miu2,sigma2)
xmin=min(miu1-3*sigma1,miu2-3*sigma2);
xmax=max(miu1+3*sigma1,miu2+3*sigma2);
end