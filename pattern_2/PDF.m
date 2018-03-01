%one matlab functional file for pattern recognition class
%Student: Yaakov Azat Email:yaakovazat@gmail.com ,Teacher: Gusmanova ,F.R.
%PDF Probability Density FunctionÔºâfor ND (normal distribution)
function[pdf]=PDF(x,miu,sigma)
pdf=(1/(sqrt(2*pi)*sigma))*exp((-1*(x-miu).^2)/2*(sigma^2));
end
