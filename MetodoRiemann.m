function Irect = rectcomp(f1, a, b, h)
    x = a:h:b;
    Irect = h * sum(f1((x(1:end-1) + x(2:end))/2));
end