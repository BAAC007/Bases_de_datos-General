--Iniciamos.
sudo mysql -u root -p

--Usamos la base de datos personas.
USE personas;

--Realizamos consultas para experimentar con operadores aritmeticos.
SELECT nombre, apellidos, edad + 500 FROM clientes; --SUMA

+---------+---------------------+--------------+
| nombre  | apellidos           | edad + 500   |
+---------+---------------------+--------------+
| Juan    | Pérez López         |          522 |
| María   | García Ruiz         |          519 |
| Carlos  | Sánchez Martín      |          525 |
| Lucía   | Fernández Díaz      |          520 |
| Pedro   | Ramírez Soto        |          523 |
| Laura   | Hernández Ramos     |          521 |
| Ana     | Torres Castillo     |          524 |
| Javier  | Vargas Molina       |          525 |
| Sofía   | Romero Ponce        |          518 |
| Diego   | Cortés Navarro      |          520 |
| Elena   | Santos León         |          522 |
| Miguel  | Rojas Gil           |          524 |
| Paula   | Cano Vega           |          517 |
| Hugo    | Delgado Lara        |          519 |
| Isabel  | Nieto Bravo         |          523 |
| Ricardo | Campos Peña         |          525 |
| Carmen  | Reyes Solís         |          521 |
| Adrián  | Ibarra Lozano       |          518 |
| Valeria | Mendoza Tapia       |          520 |
| Gabriel | Silva Aguirre       |          524 |
+---------+---------------------+--------------+
20 rows in set (0.00 sec)

SELECT nombre, apellidos, edad - 500 FROM clientes; --RESTA

+---------+---------------------+--------------+
| nombre  | apellidos           | edad - 500   |
+---------+---------------------+--------------+
| Juan    | Pérez López         |         -478 |
| María   | García Ruiz         |         -481 |
| Carlos  | Sánchez Martín      |         -475 |
| Lucía   | Fernández Díaz      |         -480 |
| Pedro   | Ramírez Soto        |         -477 |
| Laura   | Hernández Ramos     |         -479 |
| Ana     | Torres Castillo     |         -476 |
| Javier  | Vargas Molina       |         -475 |
| Sofía   | Romero Ponce        |         -482 |
| Diego   | Cortés Navarro      |         -480 |
| Elena   | Santos León         |         -478 |
| Miguel  | Rojas Gil           |         -476 |
| Paula   | Cano Vega           |         -483 |
| Hugo    | Delgado Lara        |         -481 |
| Isabel  | Nieto Bravo         |         -477 |
| Ricardo | Campos Peña         |         -475 |
| Carmen  | Reyes Solís         |         -479 |
| Adrián  | Ibarra Lozano       |         -482 |
| Valeria | Mendoza Tapia       |         -480 |
| Gabriel | Silva Aguirre       |         -476 |
+---------+---------------------+--------------+
20 rows in set (0.00 sec)

SELECT nombre, apellidos, edad * 500 FROM clientes; --MULTIPLICACION

+---------+---------------------+--------------+
| nombre  | apellidos           | edad * 500   |
+---------+---------------------+--------------+
| Juan    | Pérez López         |       11000  |
| María   | García Ruiz         |        9500  |
| Carlos  | Sánchez Martín      |       12500  |
| Lucía   | Fernández Díaz      |       10000  |
| Pedro   | Ramírez Soto        |       11500  |
| Laura   | Hernández Ramos     |       10500  |
| Ana     | Torres Castillo     |       12000  |
| Javier  | Vargas Molina       |       12500  |
| Sofía   | Romero Ponce        |        9000  |
| Diego   | Cortés Navarro      |       10000  |
| Elena   | Santos León         |       11000  |
| Miguel  | Rojas Gil           |       12000  |
| Paula   | Cano Vega           |        8500  |
| Hugo    | Delgado Lara        |        9500  |
| Isabel  | Nieto Bravo         |       11500  |
| Ricardo | Campos Peña         |       12500  |
| Carmen  | Reyes Solís         |       10500  |
| Adrián  | Ibarra Lozano       |        9000  |
| Valeria | Mendoza Tapia       |       10000  |
| Gabriel | Silva Aguirre       |       12000  |
+---------+---------------------+--------------+
20 rows in set (0.00 sec)

SELECT nombre, apellidos, CAST(edad as FLOAT) / 500 AS edad FROM clientes; --DIVISION

+---------+---------------------+------------------------------+
| nombre  | apellidos           | edad                         |
+---------+---------------------+------------------------------+
| Juan    | Pérez López         |         0.04400000000000000  |
| María   | García Ruiz         |         0.03800000000000000  |
| Carlos  | Sánchez Martín      |         0.05000000000000000  |
| Lucía   | Fernández Díaz      |         0.04000000000000000  |
| Pedro   | Ramírez Soto        |         0.04600000000000000  |
| Laura   | Hernández Ramos     |         0.04200000000000000  |
| Ana     | Torres Castillo     |         0.04800000000000000  |
| Javier  | Vargas Molina       |         0.05000000000000000  |
| Sofía   | Romero Ponce        |         0.03600000000000000  |
| Diego   | Cortés Navarro      |         0.04000000000000000  |
| Elena   | Santos León         |         0.04400000000000000  |
| Miguel  | Rojas Gil           |         0.04800000000000000  |
| Paula   | Cano Vega           |         0.03400000000000000  |
| Hugo    | Delgado Lara        |         0.03800000000000000  |
| Isabel  | Nieto Bravo         |         0.04600000000000000  |
| Ricardo | Campos Peña         |         0.05000000000000000  |
| Carmen  | Reyes Solís         |         0.04200000000000000  |
| Adrián  | Ibarra Lozano       |         0.03600000000000000  |
| Valeria | Mendoza Tapia       |         0.04000000000000000  |
| Gabriel | Silva Aguirre       |         0.04800000000000000  |
+---------+---------------------+------------------------------+
20 rows in set (0.00 sec)

