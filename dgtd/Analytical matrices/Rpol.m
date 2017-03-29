function [ r ] = Rpol(m,n)
% Generates coefficients of the R polynomial as is defined in Sylvester's
% book page 130.
if m>n
    disp('Rpol got a value for the node higher than the order. Check this.');
end

if m==0  
    r(1) = 1;
else
    for k=0:(m-1)
        if k==0,
            r(2)=n; 
        else
            r = conv(r,[-k, n]);
        end
    end
end

zer = zeros(1, n+1-size(r,2));
r = cat(2,r,zer);

r = r / factorial(m);

end