--Para empezar creamos una base de datos 'Restaurante'.
CREATE DATABASE Restaurante;

--Y usamos la base de datos recien creada.

USE Restaurante;

--En este ejemplo creamos una tabla llamada 'Cliente' con los atributos: id, nombre, apellidos.

CREATE TABLE Cliente(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    apellidos VARCHAR(200) NOT NULL
);

--Continuamos creando la tabla telefono con los atributos: id, id_cliente, tipo y número.

CREATE TABLE Telefono(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_Cliente INT,
    tipo VARCHAR(255),
    numero VARCHAR(255)
);

--Añadimos una clave foranea para poder conectar id_Cliente con el id de la tabla Cliente.

ALTER TABLE Telefono
ADD CONSTRAINT fk_Telefono_Cliente
FOREIGN KEY (id_Cliente) REFERENCES Cliente(id);

--Isertamos datos de prueba:

-- Insertamos 3 clientes
INSERT INTO Cliente (nombre, apellidos) VALUES
('María', 'González Pérez'),
('Carlos', 'Martínez Ruiz'),
('Laura', 'Fernández López');

-- Insertamos varios teléfonos relacionados
INSERT INTO Telefono (id_Cliente, tipo, numero) VALUES
(1, 'Móvil',     655123456),
(1, 'Fijo casa', 961234567),
(2, 'Móvil',     678987654),
(3, 'Móvil',     612345678),
(3, 'Trabajo',   963456789);

--Ahora usamos los comandos 'SELECT * FROM Cliente;' y 'SELECT * FROM Telefono;' para mostrar el resultado de las tablas.

SELECT * FROM Clientes;

+----+---------------------------------+
| id | asignaturas                     |
+----+---------------------------------+
|  2 | Matemáticas, Física             |
|  4 | Lengua, Literatura, Historia    |
+----+---------------------------------+

SELECT * FROM Telefono;

+----+------------+-----------+------------+
| id | id_Cliente | tipo      | numero     |
+----+------------+-----------+------------+
|  1 |          1 | Móvil     | 655123456  |
|  2 |          1 | Fijo casa | 961234567  |
|  3 |          2 | Móvil     | 678987654  |
|  4 |          3 | Móvil     | 612345678  |
|  5 |          3 | Trabajo   | 963456789  |
+----+------------+-----------+------------+

--//////////////////////////////////////////////////--

--Para este segundo ejemplo empezamos creando la tabla 'Persona' con atributos como: id, nombre, apellidos.

CREATE TABLE Persona(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    apellidos VARCHAR(200) NOT NULL
);

--Ahora creamos la tabla 'Alumno' con los atributos: id y NIE.

CREATE TABLE Alumno(
    id INT,
    NIE VARCHAR(9) UNIQUE
);

--Ahora conectamos la tabla 'Alumno' con la tabla 'Persona' por una clave foranea que va desde el id de Alumno a id de Persona.

ALTER TABLE Alumno
ADD CONSTRAINT fk_Alumno_Persona
FOREIGN KEY (id) REFERENCES Persona(id);

--Y creamos una tercera tabla llamada 'Profesor' con los atributos: id y asignaturas.

CREATE TABLE Profesor(
    id INT,
    asignaturas VARCHAR(255)
);

--Ahora nos aseguramos de que el atributo 'id' de la tabla Profesor se refiera a la tabla 'Persona'.

ALTER TABLE Profesor
ADD CONSTRAINT fk_Profesor_Persona
FOREIGN KEY (id) REFERENCES Persona(id);

--Agregamos inserts de prueba.

INSERT INTO Persona (nombre, apellidos) VALUES
('Ana',     'Martínez López'),
('David',   'Gómez Ruiz'),
('Sofía',   'Hernández García'),
('Pablo',   'Rodríguez Sánchez'),
('Lucía',   'Díaz Moreno');

INSERT INTO Alumno (id, NIE) VALUES
(1, 'X1234567A'),   -- Ana es alumna
(3, 'Y9876543B'),   -- Sofía es alumna
(5, 'Z4567891C');   -- Lucía es alumna

INSERT INTO Profesor (id, asignaturas) VALUES
(2, 'Matemáticas, Física'),          -- David
(4, 'Lengua, Literatura, Historia'); -- Pablo

--Ahora usamos los comandos 'SELECT * FROM Persona;' , 'SELECT * FROM Alumno;' y 'SELECT * FROM Profesor;' para mostrar el resultado de las tablas.

SELECT * FROM Persona;

+----+--------+-------------------+
| id | nombre | apellidos         |
+----+--------+-------------------+
|  1 | Ana    | Martínez López    |
|  2 | David  | Gómez Ruiz        |
|  3 | Sofía  | Hernández García  |
|  4 | Pablo  | Rodríguez Sánchez |
|  5 | Lucía  | Díaz Moreno       |
+----+--------+-------------------+

SELECT * FROM Alumno;

+----+-----------+
| id | NIE       |
+----+-----------+
|  1 | X1234567A |
|  3 | Y9876543B |
|  5 | Z4567891C |
+----+-----------+

SELECT * FROM Profesor;

+----+---------------------------------+
| id | asignaturas                     |
+----+---------------------------------+
|  2 | Matemáticas, Física             |
|  4 | Lengua, Literatura, Historia    |
+----+---------------------------------+