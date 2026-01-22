SELECT 
*
FROM usuarios
WHERE
usuario = 'jlopez'
AND
contrasena = '1234segura';

--Resultado:
+----+---------+------------+----------------+--------------------+---------------------+
| id | usuario | contrasena | nombrecompleto | email              | creado_en           |
+----+---------+------------+----------------+--------------------+---------------------+
|  1 | jlopez  | 1234segura | Juan López     | jlopez@example.com | 2026-01-22 18:57:11 |
+----+---------+------------+----------------+--------------------+---------------------+
1 row in set (0,001 sec)
