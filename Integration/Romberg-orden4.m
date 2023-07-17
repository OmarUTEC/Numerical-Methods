

function [R]= romberg(fun,a,b,orden)
    interv = 1;
    for j = 1:orden
        T(j,1) = Tcomp(fun,a,b,interv);
        interv = interv*2;
    end
    for k =2:orden
        for j = 1:(orden-k +1)
            T(j,k) = (4^(k-1)*T(j+1,k-1) - T (j ,k -1))/(4^( k -1) -1);
        end
    end
    R = T(1,orden);
end

function [Itrapcomp] = Tcomp(f,a,b,n)
    h = (b-a)/n;
    x = [a:h:b];
    Itrapcomp = (h/2)*(f(a)+2*sum(f(x(2:length(x)-1)))+f(b));
end