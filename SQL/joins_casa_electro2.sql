-- LEFT JOIN
SELECT *
FROM clientes cli
LEFT JOIN provincias prov ON cli.provincia = prov.id
ORDER BY cli.id DESC; /*ids 201 a 203 sin prvincia asignada*/

-- RIGHT JOIN
SELECT *
FROM clientes cli 
RIGHT JOIN provincias prov ON cli.provincia = prov.id
order by prov.id DESC; /*provincias 6 y 7 sin clientes asignados*/