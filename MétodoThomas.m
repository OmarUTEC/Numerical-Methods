function x = Thomas(A, b)
    n = length(b);  % Tamaño del sistema
    c_temp = zeros(n-1, 1);  % Vector temporal para los coeficientes c
    d_temp = zeros(n, 1);  % Vector temporal para los términos constantes d
    x = zeros(n, 1);  % Vector solución x
    c_temp(1) = A(1, 2) / A(1, 1);  % Cálculo del primer coeficiente c
    d_temp(1) = b(1) / A(1, 1);  % Cálculo del primer término constante d
    for i = 2:n-1
        % Cálculo de los coeficientes c y los términos constantes d para i desde 2 hasta n-1
        c_temp(i) = A(i, i+1) / (A(i, i) - A(i, i-1) * c_temp(i-1));
        d_temp(i) = (b(i) - A(i, i-1) * d_temp(i-1)) / (A(i, i) - A(i, i-1) * c_temp(i-1));
    end
    x(n) = (b(n) - A(n, n-1) * d_temp(n-1)) / (A(n, n) - A(n, n-1) * c_temp(n-1));%Cálculo del último valor de x
    for i = n-1:-1:1
        % Cálculo de los valores restantes de x utilizando los coeficientes c y los términos constantes d
        x(i) = d_temp(i) - c_temp(i) * x(i+1);
    end
end