--Creamos primero la base de datos.

CREATE DATABASE empresarial
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

--Usamos la base de datos empresarial.

USE empresarial;

--Creamos la tabla clientes y le añadimos los campos que queramos.
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100),
    edad VARCHAR(100),
    telefono INT,
    gmail VARCHAR(150)
);

--Ahora añadimos inserts a la tabla clientes.
INSERT INTO clientes (nombre, apellidos, edad, telefono, gmail) VALUES
('Ana', 'López García', '28', 612345678, 'ana.lopez@gmail.com'),
('Carlos', 'Mendoza Ruiz', '35', 623456789, 'carlos.mendoza@hotmail.com'),
('Sofía', 'Jiménez Torres', '22', 634567890, 'sofia.jimenez@gmail.com'),
('Diego', 'Ramírez Silva', '41', 645678901, 'diego.ramirez@yahoo.com'),
('Valeria', 'Castro Méndez', '30', 656789012, 'valeria.castro@gmail.com'),
('Luis', 'Ortega Pérez', '50', 667890123, 'luis.ortega@outlook.com'),
('Camila', 'Vargas León', '26', 678901234, 'camila.vargas@gmail.com'),
('Javier', 'Gómez Navarro', '33', 689012345, 'javier.gomez@gmail.com'),
('Oscar', 'Gonzales Castillo', '46', 620891718, 'info.goncas@gmail.com');

