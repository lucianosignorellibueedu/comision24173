Las cláusulas HAVING y WHERE son utilizadas en SQL para filtrar datos en una consulta. Ambas cláusulas se utilizan para limitar los resultados, pero operan en diferentes momentos dentro del proceso de consulta y tienen propósitos ligeramente diferentes.

1. Cláusula WHERE:
La cláusula WHERE se utiliza para filtrar filas antes de que se apliquen funciones de agregación, como SUM, COUNT, AVG, MAX o MIN. Se aplica a filas individuales de la tabla base y elimina las filas que no cumplan con la condición especificada.

Ejemplo: Supongamos que tenemos una tabla de ventas y queremos seleccionar las ventas con un monto mayor a 1000.

sql

SELECT * 
FROM ventas
WHERE monto > 1000;
En este caso, la cláusula WHERE filtra las filas antes de que se realice cualquier cálculo de agregación.

2. Cláusula HAVING:
La cláusula HAVING se utiliza después de aplicar funciones de agregación, como SUM, COUNT, AVG, MAX o MIN. Se aplica a los resultados de la agregación y permite filtrar grupos de filas en lugar de filas individuales.

Ejemplo: Supongamos que tenemos una tabla de ventas y queremos seleccionar los clientes cuyo total de ventas sea superior a 5000.

sql

SELECT cliente_id, SUM(monto) AS TotalVentas
FROM ventas
GROUP BY cliente_id
HAVING SUM(monto) > 5000;
En este caso, la cláusula HAVING se utiliza para filtrar los resultados de la agregación, es decir, los grupos de ventas totales por cliente. Solo se seleccionarán los grupos (clientes) cuya suma de ventas sea superior a 5000.

En resumen, la principal diferencia entre WHERE y HAVING es cuándo se aplican. WHERE filtra filas antes de la agregación, mientras que HAVING filtra grupos después de la agregación. Ambas cláusulas son esenciales para filtrar datos en consultas SQL, y la elección de cuál usar depende de si deseas filtrar filas individuales o grupos agregados.