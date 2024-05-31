INNER JOIN:

El INNER JOIN combina registros de dos tablas basándose en una condición específica. Solo se incluyen en el resultado aquellos registros que tienen coincidencias en ambas tablas.

Ejemplo: Supongamos que tenemos dos tablas, clientes y ventas. Queremos obtener una lista de clientes y las ventas que han realizado.

SELECT clientes.apeynom, ventas.fecha
FROM clientes
INNER JOIN ventas ON clientes.id = ventas.id_cli;

En este caso, estamos uniendo las tablas clientes y ventas utilizando la columna id en ambas tablas como criterio de coincidencia. El resultado será una lista de clientes y las fechas de sus ventas correspondientes.

2. LEFT JOIN:

El LEFT JOIN combina registros de dos tablas y devuelve todos los registros de la tabla izquierda (primera tabla mencionada) y los registros coincidentes de la tabla derecha. Si no hay coincidencias en la tabla derecha, los valores serán NULL.

Ejemplo: Siguiendo el ejemplo anterior, queremos obtener una lista de clientes y sus ventas, incluso si algunos clientes no han realizado ninguna venta.

sql

SELECT clientes.apeynom, ventas.fecha
FROM clientes
LEFT JOIN ventas ON clientes.id = ventas.id_cli;

En este caso, todos los clientes de la tabla clientes se incluirán en el resultado, y si tienen ventas correspondientes en la tabla ventas, esas ventas se mostrarán. Si un cliente no tiene ventas, la columna de fecha mostrará NULL.

3. RIGHT JOIN:

El RIGHT JOIN es similar al LEFT JOIN pero invierte el orden de las tablas. Devuelve todos los registros de la tabla derecha y los registros coincidentes de la tabla izquierda. Si no hay coincidencias en la tabla izquierda, los valores serán NULL.

Ejemplo: Continuando con el ejemplo anterior, ahora queremos obtener una lista de ventas y los clientes que realizaron esas ventas, incluso si algunas ventas no tienen clientes asociados.

SELECT clientes.apeynom, ventas.fecha
FROM clientes
RIGHT JOIN ventas ON clientes.id = ventas.id_cli;


En este caso, todas las ventas de la tabla ventas se incluirán en el resultado, y si tienen clientes correspondientes en la tabla clientes, esos clientes se mostrarán. Si una venta no tiene un cliente asociado, la columna de nombre de cliente mostrará NULL.

Estos son ejemplos de INNER JOIN, LEFT JOIN y RIGHT JOIN con explicaciones de cómo funcionan. Puedes adaptar estas cláusulas JOIN a tus necesidades específicas para combinar datos de múltiples tablas en tus consultas SQL.