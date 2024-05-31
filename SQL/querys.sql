Seleccionar todos los clientes ordenados por apellido y nombre:

SELECT * FROM clientes
ORDER BY apeynom;

Obtener los productos de una categoría específica (por ejemplo, categoría 1) y de un proveedor determinado (por ejemplo, proveedor 2):

SELECT * FROM productos
WHERE categ = 1 AND prov = 2;

Buscar ventas realizadas por un cliente con ID igual a 5:

SELECT * FROM ventas
WHERE id_cli = 5;


Agrupación (GROUP BY):
Calcular la cantidad total de productos vendidos por categoría:

SELECT categ, SUM(cant) AS cantidad_total
FROM ventas
GROUP BY categ;

Obtener el precio promedio de los productos de cada marca:
SELECT marca, AVG(precio) AS precio_promedio
FROM productos
GROUP BY marca;




