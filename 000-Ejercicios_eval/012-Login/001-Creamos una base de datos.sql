CREATE DATABASE IF NOT EXISTS superaplicacion
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE superaplicacion;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    nombrecompleto VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--Y le añadimos 2 inserts ficticios que cumplan las comprobaciones siguientes.

-- Con este insert haremos los ejemplos de comprobaciones de un login.
INSERT INTO usuarios (usuario, contrasena, nombrecompleto, email)
VALUES ('jlopez', '1234segura', 'Juan López', 'jlopez@example.com');

-- Este será para complementar un poco.
INSERT INTO usuarios (usuario, contrasena, nombrecompleto, email)
VALUES ('mrodriguez', 'clave5678', 'María Rodríguez', 'mrodriguez@example.com');