-- 1) Mostrar id, apellido y nombre y provincia de los clientes
SELECT clientes.id, clientes.apeynom as "Nombre completo", clientes.provincia, provincias.provincia
FROM clientes
INNER JOIN provincias ON clientes.provincia = provincias.id;

-- 2) Mostrar id, modelo y el nombre de la marca de los productos, utilizar alias de tabla 
SELECT prod.id, prod.modelo, mar.marca 
FROM productos prod
INNER JOIN marcas mar ON prod.marca = mar.id;

-- 3) Obtener un listado completo de productos, incluyendo tablas relacionadas
SELECT prod.id, cate.categoria, mar.marca, prod.modelo,
prov.proveedor, prod.pantalla_pulg, prod.camara_mpx, prod.mem_int, prod.precio
FROM productos prod
INNER JOIN categorias cate ON prod.categ = cate.id
INNER JOIN marcas mar ON prod.marca = mar.id
INNER JOIN proveedores prov ON prod.prov = prov.id;

-- 4) Obtener un listado completo de ventas, incluyendo nombre del cliente, producto y precio total
SELECT vtas.id, cli.apeynom AS 'Nombre completo', mar.marca, prod.modelo, vtas.cant, prod.precio,
(vtas.cant * prod.precio) AS 'Total', vtas.cuotas,
(vtas.cant * prod.precio)/vtas.cuotas AS 'Valor Cuota'
FROM ventas vtas
INNER JOIN clientes cli ON vtas.id_cli = cli.id
INNER JOIN productos prod ON vtas.id_prod = prod.id
INNER JOIN marcas mar ON prod.marca = mar.id;