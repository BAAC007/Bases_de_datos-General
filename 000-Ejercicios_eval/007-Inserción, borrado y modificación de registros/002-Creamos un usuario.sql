--Creamos un nuevo usuario y le añadimos una constraseña.
CREATE USER 
'empresarial'@'localhost' 
IDENTIFIED  BY 'empresarial';

--A ese nuevo usuario le damos todos los privilegios.
GRANT USAGE ON *.* TO 'empresarial'@'localhost';

ALTER USER 'empresarial'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;


GRANT ALL PRIVILEGES ON futbol2526.* 
TO 'empresarial'@'localhost';

--Actualizamos los privilegios.
FLUSH PRIVILEGES;
