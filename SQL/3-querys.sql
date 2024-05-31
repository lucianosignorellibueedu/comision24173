1. SUM:

La función de agregación SUM se utiliza para calcular la suma de los valores en una columna.

Ejemplo: Supongamos que tenemos una tabla de ventas y queremos calcular el total de ventas.

SELECT SUM(monto) AS TotalVentas
FROM ventas;

En este ejemplo, la función SUM calcula la suma de los valores en la columna "monto" de la tabla "ventas" y devuelve el resultado con el alias "TotalVentas".


Por supuesto, aquí tienes ejemplos de cómo usar y explicaciones para cada una de las funciones de agregación en SQL: SUM, AVG, MAX, MIN y COUNT.

1. SUM:

La función de agregación SUM se utiliza para calcular la suma de los valores en una columna.

Ejemplo: Supongamos que tenemos una tabla de ventas y queremos calcular el total de ventas.

sql

SELECT SUM(monto) AS TotalVentas
FROM ventas;
En este ejemplo, la función SUM calcula la suma de los valores en la columna "monto" de la tabla "ventas" y devuelve el resultado con el alias "TotalVentas".

2. AVG:

La función de agregación AVG se utiliza para calcular el promedio de los valores en una columna.

Ejemplo: Continuando con la tabla de ventas, queremos calcular el promedio de los montos de las ventas.

SELECT AVG(monto) AS PromedioVentas
FROM ventas;


La función AVG calcula el promedio de los valores en la columna "monto" y devuelve el resultado con el alias "PromedioVentas".

3. MAX:

La función de agregación MAX se utiliza para encontrar el valor máximo en una columna.

Ejemplo: Supongamos que tenemos una tabla de productos y queremos encontrar el producto más caro.

SELECT MAX(precio) AS PrecioMaximo
FROM productos;


La función MAX encuentra el valor máximo en la columna "precio" de la tabla "productos" y lo devuelve con el alias "PrecioMaximo".

4. MIN:

La función de agregación MIN se utiliza para encontrar el valor mínimo en una columna.

Ejemplo: En la misma tabla de productos, queremos encontrar el producto más económico.

SELECT MIN(precio) AS PrecioMinimo
FROM productos;

La función MIN encuentra el valor mínimo en la columna "precio" de la tabla "productos" y lo devuelve con el alias "PrecioMinimo".

5. COUNT:

La función de agregación COUNT se utiliza para contar el número de filas en una tabla o el número de valores no nulos en una columna.

Ejemplo 1: Si deseamos contar el número total de ventas en la tabla "ventas".

sql

SELECT COUNT(*) AS TotalVentas
FROM ventas;
En este caso, COUNT(*) cuenta el número total de filas en la tabla "ventas" y lo devuelve con el alias "TotalVentas".

