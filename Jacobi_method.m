function [r,res,nres,rerr, nerr]=Jacobi_method(M,L,U,D,r,b,numOfIter,realValue, eps)

    for i = 1:numOfIter
        r=D\(-(L+U)*r+b);
        
         res=M*r-b;
         nres(i) = norm(res);
         rerr = abs(realValue - r);
         nerr(i) = norm(rerr);
         if nres(i)<=eps
             break
         end
    end
end
