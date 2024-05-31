Vamos a crear varias consultas SQL basadas en el esquema de la base de datos "CASA_ELECTRO" mostrado en la imagen. Explicaremos cada tipo de consulta en detalle, con ejemplos para cada uno de ellos.

Cláusula JOIN
INNER JOIN
Un INNER JOIN devuelve filas cuando hay coincidencias en ambas tablas.

Ejemplo 1:

sql OK

SELECT clientes.apeynom, ventas.fecha, productos.modelo
FROM ventas
INNER JOIN clientes ON ventas.id_cli = clientes.id
INNER JOIN productos ON ventas.id_prod = productos.id;
Explicación: Esta consulta selecciona el nombre del cliente, la fecha de la venta y el modelo del producto vendido, juntando las tablas ventas, clientes y productos donde los identificadores coinciden.

Ejemplo 2:

sql OK

SELECT productos.modelo, categorias.categoria
FROM productos
INNER JOIN categorias ON productos.categ = categorias.id;
Explicación: Muestra los modelos de productos junto con su categoría, uniendo productos con categorias según el identificador de la categoría.

Ejemplo 3:

sql OK

SELECT proveedores.proveedor, productos.modelo
FROM proveedores
INNER JOIN productos ON proveedores.id = productos.prov;
Explicación: Lista los proveedores y los modelos de productos que suministran, uniendo proveedores y productos por el identificador del proveedor.

LEFT JOIN
Un LEFT JOIN devuelve todas las filas de la tabla de la izquierda, y las filas coincidentes de la tabla de la derecha. Las filas sin coincidencias en la tabla derecha tienen NULL.

Ejemplo 1:

sql OK

SELECT clientes.apeynom, ventas.fecha, productos.modelo
FROM clientes
LEFT JOIN ventas ON clientes.id = ventas.id_cli
LEFT JOIN productos ON ventas.id_prod = productos.id;
Explicación: Esta consulta selecciona todos los clientes, y si han realizado ventas, muestra la fecha y el modelo del producto vendido. Si un cliente no ha realizado ninguna venta, la información de ventas y productos será NULL.

Ejemplo 2:

sql
SELECT productos.modelo, categorias.categoria
FROM productos
LEFT JOIN categorias ON productos.categ = categorias.id;
Explicación: Muestra todos los productos y sus categorías si existen. Si un producto no tiene categoría, el valor de la categoría será NULL.

Ejemplo 3:

sql OK
SELECT provincias.provincia, clientes.apeynom
FROM provincias
LEFT JOIN clientes ON provincias.id = clientes.provincia;
Explicación: Lista todas las provincias y los nombres de los clientes en esas provincias, si existen. Si una provincia no tiene clientes, el nombre del cliente será NULL.

RIGHT JOIN
Un RIGHT JOIN devuelve todas las filas de la tabla de la derecha, y las filas coincidentes de la tabla de la izquierda. Las filas sin coincidencias en la tabla izquierda tienen NULL.

Ejemplo 1:

sql OK

SELECT ventas.id, productos.modelo
FROM ventas
RIGHT JOIN productos ON ventas.id_prod = productos.id;
Explicación: Esta consulta selecciona todas las ventas y los modelos de productos. Si un producto no ha sido vendido, la información de la venta será NULL.

Ejemplo 2:

sql
SELECT categorias.categoria, productos.modelo
FROM categorias
RIGHT JOIN productos ON categorias.id = productos.categ;
Explicación: Muestra todas las categorías y los modelos de productos que pertenecen a esas categorías. Si una categoría no tiene productos, el modelo del producto será NULL.

Ejemplo 3:

sql

SELECT proveedores.proveedor, productos.modelo
FROM proveedores
RIGHT JOIN productos ON proveedores.id = productos.prov;
Explicación: Lista todos los proveedores y los modelos de productos que suministran. Si un producto no tiene proveedor, el nombre del proveedor será NULL.

Funciones de agregación
Las funciones de agregación realizan cálculos sobre un conjunto de valores y devuelven un solo valor.

SUM
Calcula la suma de los valores de una columna.

Ejemplo 1:

sql
SELECT SUM(precio) AS total_ventas
FROM ventas
INNER JOIN productos ON ventas.id_prod = productos.id;
Explicación: Calcula la suma total de los precios de todos los productos vendidos.

Ejemplo 2:

sql
SELECT SUM(cant) AS total_cantidad
FROM ventas;
Explicación: Suma la cantidad total de productos vendidos.

Ejemplo 3:

sql
SELECT provincia, SUM(precio) AS total_ventas
FROM ventas
INNER JOIN clientes ON ventas.id_cli = clientes.id
INNER JOIN productos ON ventas.id_prod = productos.id
GROUP BY provincia;
Explicación: Calcula la suma de las ventas por provincia.

AVG
Calcula el valor promedio de una columna.

Ejemplo 1:

sql
SELECT AVG(precio) AS precio_promedio
FROM productos;
Explicación: Calcula el precio promedio de todos los productos.

Ejemplo 2:

sql
SELECT AVG(cant) AS cantidad_promedio
FROM ventas;
Explicación: Calcula la cantidad promedio de productos vendidos.

Ejemplo 3:

sql
SELECT categoria, AVG(precio) AS precio_promedio
FROM productos
INNER JOIN categorias ON productos.categ = categorias.id
GROUP BY categoria;
Explicación: Calcula el precio promedio de productos por categoría.

MAX
Encuentra el valor máximo en una columna.

Ejemplo 1:

sql
SELECT MAX(precio) AS precio_maximo
FROM productos;
Explicación: Encuentra el precio más alto de todos los productos.

Ejemplo 2:

sql
SELECT MAX(fecha) AS ultima_venta
FROM ventas;
Explicación: Encuentra la fecha de la venta más reciente.

Ejemplo 3:

sql
SELECT productos.marca, MAX(precio) AS precio_maximo
FROM productos
INNER JOIN marcas ON productos.marca = marcas.id
GROUP BY marca;
Explicación: Encuentra el precio más alto de productos por marca.

MIN
Encuentra el valor mínimo en una columna.

Ejemplo 1:

sql
SELECT MIN(precio) AS precio_minimo
FROM productos;
Explicación: Encuentra el precio más bajo de todos los productos.

Ejemplo 2:

sql
SELECT MIN(fecha) AS primera_venta
FROM ventas;
Explicación: Encuentra la fecha de la primera venta.

Ejemplo 3:

sql
SELECT marca, MIN(precio) AS precio_minimo
FROM productos
INNER JOIN marcas ON productos.marca = marcas.id
GROUP BY marca;
Explicación: Encuentra el precio más bajo de productos por marca.

COUNT
Cuenta el número de filas en una columna.

Ejemplo 1:

sql
SELECT COUNT(*) AS total_ventas
FROM ventas;
Explicación: Cuenta el número total de ventas.

Ejemplo 2:

sql
SELECT COUNT(*) AS total_clientes
FROM clientes;
Explicación: Cuenta el número total de clientes.

Ejemplo 3:

sql
SELECT categoria, COUNT(*) AS total_productos
FROM productos
INNER JOIN categorias ON productos.categ = categorias.id
GROUP BY categoria;
Explicación: Cuenta el número total de productos por categoría.

GROUP BY
Agrupa filas que tienen los mismos valores en columnas especificadas en conjuntos de resumen.

Ejemplo 1:

sql
SELECT categoria, COUNT(*) AS total_productos
FROM productos
INNER JOIN categorias ON productos.categ = categorias.id
GROUP BY categoria;
Explicación: Agrupa los productos por categoría y cuenta el número total de productos en cada categoría.

Ejemplo 2:

sql
SELECT clientes.provincia, COUNT(*) AS total_clientes
FROM clientes
INNER JOIN provincias ON clientes.provincia = provincias.id
GROUP BY provincia;
Explicación: Agrupa los clientes por provincia y cuenta el número total de clientes en cada provincia.

Ejemplo 3:

sql
SELECT marca, AVG(precio) AS precio_promedio
FROM productos
INNER JOIN marcas ON productos.marca = marcas.id
GROUP BY marca;
Explicación: Agrupa los productos por marca y calcula el precio promedio de productos en cada marca.

HAVING
Elimina registros de grupos después de que se hayan aplicado las cláusulas GROUP BY.

Ejemplo 1:

sql
SELECT categoria, COUNT(*) AS total_productos
FROM productos
INNER JOIN categorias ON productos.categ = categorias.id
GROUP BY categoria
HAVING COUNT(*) > 10;
Explicación: Agrupa los productos por categoría y muestra aquellas categorías que tienen más de 10 productos.

Ejemplo 2:

sql
SELECT provincia, COUNT(*) AS total_clientes
FROM clientes
INNER JOIN provincias ON clientes.provincia = provincias.id
GROUP BY provincia
HAVING COUNT(*) > 5;
Explicación: Agrupa los clientes por provincia y muestra aquellas provincias que tienen más de 5 clientes.

Ejemplo 3:

sql
SELECT marca, AVG(precio) AS precio_promedio
FROM productos
INNER JOIN marcas ON productos.marca = marcas.id
GROUP BY marca
HAVING AVG(precio) > 1000;
Explicación: Agrupa los productos por marca y muestra aquellas marcas cuyo precio promedio de productos es mayor a 1000.

Subconsultas
Consultas anidadas dentro de otras consultas.

Ejemplo 1:

sql
SELECT apeynom
FROM clientes
WHERE id IN (SELECT id_cli FROM ventas WHERE fecha > '2023-01-01');
Explicación: Selecciona los nombres de clientes que han realizado una venta después del 1 de enero de 2023.

Ejemplo 2:

sql
SELECT modelo
FROM productos
WHERE precio > (SELECT AVG(precio) FROM productos);
Explicación: Selecciona los modelos de productos cuyo precio es mayor que el precio promedio de todos los productos.

Ejemplo 3:

sql
SELECT apeynom
FROM clientes
WHERE provincia = (SELECT id FROM provincias WHERE provincia = 'Buenos Aires');
Explicación: Selecciona los nombres de clientes que están en la provincia de Buenos Aires.

EXISTS
Comprueba si la subconsulta devuelve algún resultado.

Ejemplo 1:

sql
SELECT apeynom
FROM clientes
WHERE EXISTS (SELECT 1 FROM ventas WHERE clientes.id = ventas.id_cli);
Explicación: Selecciona los nombres de clientes que han realizado alguna venta.

Ejemplo 2:

sql
SELECT modelo
FROM productos
WHERE EXISTS (SELECT 1 FROM categorias WHERE productos.categ = categorias.id AND categorias.categoria = 'Electrónica');
Explicación: Selecciona los modelos de productos que pertenecen a la categoría 'Electrónica'.

Ejemplo 3:

sql
SELECT proveedor
FROM proveedores
WHERE EXISTS (SELECT 1 FROM productos WHERE proveedores.id = productos.prov);
Explicación: Selecciona los nombres de proveedores que suministran algún producto.

Estas consultas cubren una variedad de operaciones SQL utilizando el esquema de base de datos proporcionado. Cada una está explicada en términos simples para facilitar su comprensión.




Aquí tienes tres ejemplos que combinan las sentencias INNER JOIN, LEFT JOIN y RIGHT JOIN en una misma consulta SQL utilizando el esquema de base de datos proporcionado:

Ejemplo 1
Objetivo: Obtener información detallada sobre las ventas, incluyendo datos del cliente, del producto y de la provincia del cliente. Si el cliente no existe, se mostrará NULL, y si el producto no tiene proveedor, se mostrará NULL también.

sql

SELECT ventas.id AS venta_id, clientes.apeynom AS cliente_nombre, productos.modelo AS producto_modelo, provincias.provincia AS cliente_provincia, proveedores.proveedor AS proveedor_nombre
FROM ventas
INNER JOIN clientes ON ventas.id_cli = clientes.id
LEFT JOIN productos ON ventas.id_prod = productos.id
LEFT JOIN provincias ON clientes.provincia = provincias.id
RIGHT JOIN proveedores ON productos.prov = proveedores.id;
Explicación:

INNER JOIN entre ventas y clientes para obtener las ventas con los datos del cliente.
LEFT JOIN entre ventas y productos para obtener los datos del producto, incluso si no hay ventas.
LEFT JOIN entre clientes y provincias para obtener la provincia del cliente, incluso si no hay provincia asignada.
RIGHT JOIN entre productos y proveedores para obtener los proveedores de los productos, incluso si no hay proveedor asignado.

Ejemplo 2
Objetivo: Listar todos los productos con sus categorías y marcas. También mostrar información de ventas si existen, y mostrar clientes aunque no hayan realizado ninguna compra.

sql

SELECT productos.modelo AS producto_modelo, categorias.categoria AS categoria_nombre, marcas.marca AS marca_nombre, ventas.id AS venta_id, clientes.apeynom AS cliente_nombre
FROM productos
INNER JOIN categorias ON productos.categ = categorias.id
LEFT JOIN marcas ON productos.marca = marcas.id
LEFT JOIN ventas ON productos.id = ventas.id_prod
RIGHT JOIN clientes ON ventas.id_cli = clientes.id;
Explicación:

INNER JOIN entre productos y categorias para obtener las categorías de los productos.
LEFT JOIN entre productos y marcas para obtener las marcas de los productos, incluso si no tienen una marca asignada.
LEFT JOIN entre productos y ventas para obtener información de ventas si existen.
RIGHT JOIN entre ventas y clientes para obtener los clientes, incluso si no han realizado ninguna compra.

Ejemplo 3
Objetivo: Obtener un reporte de todas las ventas incluyendo información detallada de los productos, proveedores, y clientes. Mostrar también todos los proveedores, incluso si no han suministrado productos.

sql

SELECT ventas.id AS venta_id, productos.modelo AS producto_modelo, proveedores.proveedor AS proveedor_nombre, clientes.apeynom AS cliente_nombre, provincias.provincia AS cliente_provincia
FROM ventas
INNER JOIN productos ON ventas.id_prod = productos.id
LEFT JOIN proveedores ON productos.prov = proveedores.id
LEFT JOIN clientes ON ventas.id_cli = clientes.id
RIGHT JOIN provincias ON clientes.provincia = provincias.id;
Explicación:

INNER JOIN entre ventas y productos para obtener información detallada del producto en cada venta.
LEFT JOIN entre productos y proveedores para obtener los proveedores, incluso si el producto no tiene proveedor asignado.
LEFT JOIN entre ventas y clientes para obtener los clientes de cada venta.
RIGHT JOIN entre clientes y provincias para obtener las provincias de los clientes, incluso si no hay clientes.
Estos ejemplos combinan las diferentes sentencias de JOIN en una misma consulta para mostrar cómo se pueden integrar datos de múltiples tablas de una base de datos relacional compleja.