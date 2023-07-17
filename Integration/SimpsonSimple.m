function [I] = Simpson(f,a,b)
    I = ((b-a)/6)*(f(a)+f(b)+4*f((a+b)/2));
end