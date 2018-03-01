%this is a Norm function with rand :

function [norm]=Norm(miu,sigma,v)


for k=1:v
    norm=sqrt(12/v)*sigma*(comsum(k)-v/2)+miu;
end

end