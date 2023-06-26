% Para plicar el algortimo de Thomas la matriz A debe ser tridiagonal
x = thomas(A, b)

function [x] = thomas(a,b)
    % Definir el tamaño del sistema de ecuaciones
    n=length(b);

    % Fase de eliminación del método de Thomas
    for i=2:n
        % Calcular el multiplicador que se utiliza para eliminar el término 
        % de la subdiagonal en la i-ésima fila
        mult = a(i,i-1)/a(i-1,i-1);
        
        % Restar el multiplicador multiplicado por la (i-1)-ésima fila de la
        % i-ésima fila en la matriz a, actualizando el elemento diagonal
        a(i,i) = a(i,i) - mult*a(i-1,i);
        
        % Realizar una operación similar en el vector b
        b(i) = b(i) - mult*b(i-1);
    end

    % Inicializar el vector solución x
    x=zeros(n,1);
    
    % Calcular el último elemento de la solución directamente
    x(n) = b(n)/a(n,n);

    % Fase de retro-sustitución del método de Thomas
    for i=n-1:-1:1
        % Calcular el i-ésimo elemento de la solución en función de los
        % elementos de x ya calculados (x(i+1), x(i+2), ..., x(n))
        x(i)=(b(i)-a(i,i+1)*x(i+1))/a(i,i);
    end
end