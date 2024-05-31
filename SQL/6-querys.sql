Las funciones escalares son funciones que operan sobre una fila de datos a la vez y devuelven un único valor. A continuación, se explicarán algunas funciones escalares comunes con ejemplos utilizando las tablas de casa_electro:

1. Función Escalar UPPER:
Esta función convierte una cadena de texto en mayúsculas. Puede ser útil, por ejemplo, para normalizar nombres en mayúsculas.

Ejemplo: Supongamos que queremos obtener los nombres de clientes en mayúsculas.

sql
 
SELECT UPPER(apeynom) AS NombreEnMayusculas
FROM clientes;
2. Función Escalar LEFT:
Esta función devuelve una subcadena de caracteres desde el principio de una cadena.

Ejemplo: Si queremos obtener los primeros 3 caracteres de los nombres de los productos.

sql
 
SELECT LEFT(modelo, 3) AS TresPrimerasLetras
FROM productos;
3. Función Escalar CONCAT:
La función CONCAT se utiliza para combinar dos o más cadenas de texto en una sola.

Ejemplo: Si queremos combinar el nombre de un cliente con su dirección.

sql
 
SELECT CONCAT(apeynom, ', ', domcalle) AS NombreYDireccion
FROM clientes;
4. Función Escalar ROUND:
La función ROUND se utiliza para redondear un número decimal a una cantidad específica de decimales.

Ejemplo: Si queremos redondear los precios de los productos a dos decimales.

sql
 
SELECT ROUND(precio, 2) AS PrecioRedondeado
FROM productos;
5. Función Escalar LENGTH:
La función LENGTH devuelve la longitud de una cadena de texto.

Ejemplo: Si queremos obtener la longitud de los nombres de los proveedores.

sql
 
SELECT proveedor, LENGTH(proveedor) AS LongitudNombre
FROM proveedores;
Estos son solo algunos ejemplos de funciones escalares comunes en SQL. Las funciones escalares son útiles para manipular y transformar datos en una consulta y pueden adaptarse a una variedad de situaciones.