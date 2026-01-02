--Iniciamos
USE personas

--Creamos la tabla productos
CREATE TABLE productos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    stock INT,
    peso FLOAT
);

--Ahora generamos inserts ficticios
INSERT INTO productos (nombre, stock, peso) VALUES ('Baguette', 50, 0.25);
INSERT INTO productos (nombre, stock, peso) VALUES ('Fruit Salad', 30, 1.75);
INSERT INTO productos (nombre, stock, peso) VALUES ('Chicken Stir-Fry', 45, 2.20);
INSERT INTO productos (nombre, stock, peso) VALUES ('Apple Crisp', 35, 0.75);
INSERT INTO productos (nombre, stock, peso) VALUES ('Pasta with Tomato Sauce', 60, 1.20);
INSERT INTO productos (nombre, stock, peso) VALUES ('Veggie Burger', 40, 0.50);
INSERT INTO productos (nombre, stock, peso) VALUES ('Fish Tacos', 35, 0.80);
INSERT INTO productos (nombre, stock, peso) VALUES ('Guacamole Bowl', 20, 1.60);
INSERT INTO productos (nombre, stock, peso) VALUES ('Vegetable Soup', 55, 0.75);
INSERT INTO productos (nombre, stock, peso) VALUES ('Cheese Omelette', 38, 1.25);
INSERT INTO productos (nombre, stock, peso) VALUES ('Grilled Chicken Wrap', 45, 0.90);
INSERT INTO productos (nombre, stock, peso) VALUES ('Salad with Tuna Fish', 30, 1.40);
INSERT INTO productos (nombre, stock, peso) VALUES ('Mixed Vegetables Stir-Fry', 50, 1.10);
INSERT INTO productos (nombre, stock, peso) VALUES ('Beef Fajita', 42, 0.95);
INSERT INTO productos (nombre, stock, peso) VALUES ('Tomato and Mozzarella Pizza', 32, 1.70);

--Hacemos una consulta
SELECT
    nombre AS 'Nombre del producto',
    stock AS 'Stock del producto',
    peso AS 'Peso del producto'
FROM
    productos;

+-----------------------------+--------------------+-------------------+
| Nombre del producto         | Stock del producto | Peso del producto |
+-----------------------------+--------------------+-------------------+
| Baguette                    |                 50 |              0.25 |
| Fruit Salad                 |                 30 |              1.75 |
| Chicken Stir-Fry            |                 45 |               2.2 |
| Apple Crisp                 |                 35 |              0.75 |
| Pasta with Tomato Sauce     |                 60 |               1.2 |
| Veggie Burger               |                 40 |               0.5 |
| Fish Tacos                  |                 35 |               0.8 |
| Guacamole Bowl              |                 20 |               1.6 |
| Vegetable Soup              |                 55 |              0.75 |
| Cheese Omelette             |                 38 |              1.25 |
| Grilled Chicken Wrap        |                 45 |               0.9 |
| Salad with Tuna Fish        |                 30 |               1.4 |
| Mixed Vegetables Stir-Fry   |                 50 |               1.1 |
| Beef Fajita                 |                 42 |              0.95 |
| Tomato and Mozzarella Pizza |                 32 |               1.7 |
+-----------------------------+--------------------+-------------------+
15 rows in set (0.003 sec)

--Ahora hacemos uso de la funcion count en una consulta
SELECT
    COUNT(stock) AS cantidad 
FROM
    productos

+----------+
| cantidad |
+----------+
|       15 |
+----------+
1 row in set (0.001 sec)

--Le damos privilegios y el poder de usar la tabla productos
RANT USAGE ON *.* TO 'bryan'@'localhost';

ALTER USER 'bryan'@'localhost'
REQUIRE NONE
WITH MAX_QUERIES_PER_HOUR 0
MAX_CONNECTIONS_PER_HOUR 0
MAX_UPDATES_PER_HOUR 0
MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON productos.* TO 'bryan'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'bryan'@'localhost';

+--------------------------------------------------------------------------------------------------------------+
| Grants for bryan@localhost                                                                                   |
+--------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `bryan`@`localhost` IDENTIFIED BY PASSWORD '*2C250114B7B7357BE6A0DAB0598B15DC24006DDA' |
| GRANT ALL PRIVILEGES ON `personas`.* TO `bryan`@`localhost`                                                  |
| GRANT ALL PRIVILEGES ON `productos`.* TO `bryan`@`localhost`                                                 |
+--------------------------------------------------------------------------------------------------------------+
3 rows in set (0.003 sec)
