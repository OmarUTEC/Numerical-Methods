function Itrap = trapecomp(f1,a,b,h)
    x = [a:h:b];
    Itrap = (h/2)*(f1(a)+2*sum(f1(x(2:length(x)-1))) + f1(b));
end