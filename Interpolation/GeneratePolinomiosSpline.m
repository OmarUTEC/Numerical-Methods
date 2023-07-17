function p = convierte(a0,b0,c0,d0,x0)
    p = a0*[1 -3*x0 3*(x0^2) (-x0)^3]+b0*[0 1 -2*x0 (-x0)^2]+c0*[0 0 1 -x0]+[0 0 0 d0];
end