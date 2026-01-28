UPDATE 
clientes
SET nombre = "Jose Vicente"
WHERE telefono = 620891718;

SELECT * FROM equipos;

/*
En este caso se han agregado nuevos inserts para completar este ejercicio
y se ha modificado el nombre de la fila que contiene el telefono 620891718 a 'Jose vicente'.
*/
+----+--------------+-------------------+------+-----------+----------------------------+
| id | nombre       | apellidos         | edad | telefono  | gmail                      |
+----+--------------+-------------------+------+-----------+----------------------------+
| 10 | Ana          | López García      | 28   | 612345678 | ana.lopez@gmail.com        |
| 11 | Carlos       | Mendoza Ruiz      | 35   | 623456789 | carlos.mendoza@hotmail.com |
| 12 | Sofía        | Jiménez Torres    | 22   | 634567890 | sofia.jimenez@gmail.com    |
| 13 | Diego        | Ramírez Silva     | 41   | 645678901 | diego.ramirez@yahoo.com    |
| 14 | Valeria      | Castro Méndez     | 30   | 656789012 | valeria.castro@gmail.com   |
| 15 | Luis         | Ortega Pérez      | 50   | 667890123 | luis.ortega@outlook.com    |
| 16 | Camila       | Vargas León       | 26   | 678901234 | camila.vargas@gmail.com    |
| 17 | Javier       | Gómez Navarro     | 33   | 689012345 | javier.gomez@gmail.com     |
| 18 | Jose Vicente | Gonzales Castillo | 46   | 620891718 | info.goncas@gmail.com      |
+----+--------------+-------------------+------+-----------+----------------------------+
9 rows in set (0.000 sec)
