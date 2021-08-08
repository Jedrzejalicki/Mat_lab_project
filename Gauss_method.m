function [r,res,nres,rerr, nerr]=Gauss_method(M,L,U,D,r,b,numOfIter,realValue, eps)

    for i = 1:numOfIter
        for j = 1:length(M)
        r=(D+L)\(-(U*r)+b);
        
         res=M*r-b;
         nres(j) = norm(res);
         rerr = abs(realValue - r);
         nerr(j) = norm(rerr);
         if nres(j)<=eps
             break
         end
        end
    end
end
