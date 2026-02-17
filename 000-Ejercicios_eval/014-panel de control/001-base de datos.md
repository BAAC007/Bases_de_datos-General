sudo mysql -u root -p

--Creamos la base de datos noticiero.

CREATE DATABASE noticiero
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_unicode_ci;

--Usamos la base de datos noticiero para agregarle tablas e informacion.

USE noticiero;

--Creamos la tabla autores, que contiene campos como: id, nombre, email, bio(biografia) y fecha_registro(fecha que se registro).

CREATE TABLE autores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    bio TEXT,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

--Creamos la tabla noticias con los campos: id, titulo, contenido, fecha_publicacion, id_autor. Ademas de tener una clave foranea para conectar que noticia pertenece a cada autor.

CREATE TABLE noticias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    contenido TEXT NOT NULL,
    fecha_publicacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    autor_id INT NULL,

    CONSTRAINT fk_noticias_autores
    FOREIGN KEY (autor_id)
    REFERENCES autores(id)
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

--Inserts para la tabla autores.

INSERT INTO autores (nombre, email, bio) VALUES
('Ana García', 'ana.garcia@email.com', 'Periodista especializada en tecnología y ciencia con más de 5 años de experiencia.'),
('Carlos López', 'carlos.lopez@email.com', 'Editor senior enfocado en economía, política y mercados financieros.'),
('Lucía Martínez', 'lucia.martinez@email.com', 'Corresponsal internacional y escritora freelance de viajes y cultura.');

--Inserts par la tabla noticias.

INSERT INTO noticias (titulo, contenido, autor_id) VALUES
('Nuevos avances en Inteligencia Artificial', 'La IA está transformando industrias completas, desde la medicina hasta el transporte...', 1),
('La bolsa cierra con ganancias récord', 'Los mercados financieros respondieron positivamente a los anuncios de ayer...', 2),
('Descubrimiento arqueológico en Egipto', 'Un equipo internacional ha hallado una tumba intacta cerca del Valle de los Reyes...', 3),
('Lanzamiento del nuevo smartphone gama alta', 'La compañía presentó ayer su dispositivo insignia con mejoras en la cámara...', 1),
('Reformas fiscales aprobadas en el congreso', 'Los diputados votaron a favor de la nueva ley que entrará en vigor el próximo mes...', 2),
('Impacto del cambio climático en los polos', 'Estudios recientes indican que el deshielo se acelera más rápido de lo previsto...', 3),
('Consejos para mejorar la productividad laboral', 'Expertos sugieren técnicas de gestión del tiempo para evitar el burnout...', 1);


--Creamos un usuario para noticiero, brindandole todos los privilegios en la base de datos:

CREATE USER 
'noticiero'@'localhost' 
IDENTIFIED  BY 'Noticiero123$';

GRANT USAGE ON *.* TO 'noticiero'@'localhost';

ALTER USER 'noticiero'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON noticiero.* 
TO 'noticiero'@'localhost';

FLUSH PRIVILEGES;