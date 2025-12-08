--Iniciamos
sudo mysql -u root -p

--Creamos una base de datos personas y la usamos.
CREATE DATABASE personas;

USE personas;

--Creamos la trabla clientes;
CREATE TABLE clientes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    edad INT
);

--Generamos algunos inserts ficticios.

INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Juan', 'Pérez López', 22);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('María', 'García Ruiz', 19);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Carlos', 'Sánchez Martín', 25);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Lucía', 'Fernández Díaz', 20);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Pedro', 'Ramírez Soto', 23);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Laura', 'Hernández Ramos', 21);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Ana', 'Torres Castillo', 24);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Javier', 'Vargas Molina', 25);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Sofía', 'Romero Ponce', 18);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Diego', 'Cortés Navarro', 20);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Elena', 'Santos León', 22);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Miguel', 'Rojas Gil', 24);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Paula', 'Cano Vega', 17);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Hugo', 'Delgado Lara', 19);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Isabel', 'Nieto Bravo', 23);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Ricardo', 'Campos Peña', 25);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Carmen', 'Reyes Solís', 21);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Adrián', 'Ibarra Lozano', 18);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Valeria', 'Mendoza Tapia', 20);
INSERT INTO clientes (nombre, apellidos, edad) VALUES ('Gabriel', 'Silva Aguirre', 24);


--Seleccionamos las columnas "nombre", "apellidos" y "edad", y les asignamos nuevos valores.
SELECT
    nombre AS 'Nombre del cliente',
    apellidos AS 'Apellidos del cliente',
    edad AS 'Edad del cliente'
FROM
    clientes
ORDER BY
    edad DESC; --Aquí ordenamos la edad de manera descendente.

--Este seria el resultado.
+---------------------+------------------------+------------------+
| Nombre del cliente  | Apellidos del cliente  | Edad del cliente |
+---------------------+------------------------+------------------+
| Carlos              | Sánchez Martín         | 25               |
| Javier              | Vargas Molina          | 25               |
| Ricardo             | Campos Peña            | 25               |
| Ana                 | Torres Castillo        | 24               |
| Miguel              | Rojas Gil              | 24               |
| Gabriel             | Silva Aguirre          | 24               |
| Pedro               | Ramírez Soto           | 23               |
| Isabel              | Nieto Bravo            | 23               |
| Juan                | Pérez López            | 22               |
| Elena               | Santos León            | 22               |
| Laura               | Hernández Ramos        | 21               |
| Carmen              | Reyes Solís            | 21               |
| Lucía               | Fernández Díaz         | 20               |
| Diego               | Cortés Navarro         | 20               |
| Valeria             | Mendoza Tapia          | 20               |
| María               | García Ruiz            | 19               |
| Hugo                | Delgado Lara           | 19               |
| Sofía               | Romero Ponce           | 18               |
| Adrián              | Ibarra Lozano          | 18               |
| Paula               | Cano Vega              | 17               |
+---------------------+------------------------+------------------+
20 rows in set (0.00 sec)

--Filtramos los resultados para incluir solo a personas mayores de 18 y ordenamos los resultados de manera ascendente por sus apellidos.
SELECT
    nombre AS 'Nombre del cliente',
    apellidos AS 'Apellidos del cliente',
FROM
    clientes
WHERE
    edad > 18
ORDER BY
    apellidos ASC;

--Y daría como resultado la siguiente tabla.
+---------------------+------------------------+
| Nombre del cliente  | Apellidos del cliente  |
+---------------------+------------------------+
| Ricardo             | Campos Peña            |
| Diego               | Cortés Navarro         |
| Hugo                | Delgado Lara           |
| Lucía               | Fernández Díaz         |
| María               | García Ruiz            |
| Laura               | Hernández Ramos        |
| Isabel              | Nieto Bravo            |
| Pedro               | Ramírez Soto           |
| Carmen              | Reyes Solís            |
| Miguel              | Rojas Gil              |
| Gabriel             | Silva Aguirre          |
| Elena               | Santos León            |
| Carlos              | Sánchez Martín         |
| Ana                 | Torres Castillo        |
| Juan                | Pérez López            |
| Javier              | Vargas Molina          |
| Valeria             | Mendoza Tapia          |
+---------------------+------------------------+
17 rows in set (0.00 sec)