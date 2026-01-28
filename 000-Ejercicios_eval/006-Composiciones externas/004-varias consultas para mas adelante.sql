SELECT 
    asignaturas.nombre AS 'Asignatura',
    alumnos.nombre AS 'Alumno',
    alumnos.apellidos AS 'Apellidos'
FROM matriculas
INNER JOIN asignaturas
    ON matriculas.id_asignatura = asignaturas.Identificador
INNER JOIN alumnos
    ON matriculas.id_alumno = alumnos.Identificador;

--Resultado:

+--------------------+---------+-------------------+
| Asignatura         | Alumno  | Apellidos         |
+--------------------+---------+-------------------+
| Matemáticas        | Ana     | García López      |
| Matemáticas        | Luis    | Martínez Pérez    |
| Matemáticas        | María   | Sánchez Ruiz      |
| Lengua Española    | Ana     | García López      |
| Lengua Española    | Javier  | Fernández Gómez   |
| Lengua Española    | Laura   | Díaz Ortega       |
| Historia           | Carlos  | Romero Torres     |
| Historia           | Elena   | Navarro Martínez  |
| Historia           | Pablo   | Hernández Soto    |
| Geografía          | Sofía   | Iglesias Navarro  |
| Geografía          | Miguel  | Castro León       |
| Física             | Clara   | Vidal Serrano     |
| Física             | Diego   | Morales Rivas     |
| Química            | Lucía   | Cano Torres       |
| Química            | Adrián  | Herrero Gil       |
| Biología           | Nuria   | Requena Soler     |
| Biología           | María   | Sánchez Ruiz      |
| Inglés             | Javier  | Fernández Gómez   |
| Inglés             | Laura   | Díaz Ortega       |
| Tecnología         | Carlos  | Romero Torres     |
| Educación Física   | Elena   | Navarro Martínez  |
| Música             | Pablo   | Hernández Soto    |
| Arte               | Sofía   | Iglesias Navarro  |
| Arte               | Miguel  | Castro León       |
| Tecnología         | Clara   | Vidal Serrano     |
| Física             | Diego   | Morales Rivas     |
| Geografía          | Lucía   | Cano Torres       |
| Historia           | Adrián  | Herrero Gil       |
| Lengua Española    | Nuria   | Requena Soler     |
| Matemáticas        | Javier  | Fernández Gómez   |
+--------------------+---------+-------------------+
30 rows in set (0.005 sec)


SELECT
    asignaturas.nombre AS 'Asignatura',
    alumnos.nombre AS 'Alumno',
    alumnos.apellidos AS 'Apellidos'
FROM matriculas
LEFT JOIN asignaturas
    ON matriculas.id_asignatura = asignaturas.Identificador
LEFT JOIN alumnos
    ON matriculas.id_alumno = alumnos.Identificador;

--Resultado:

+--------------------+---------+-------------------+
| Asignatura         | Alumno  | Apellidos         |
+--------------------+---------+-------------------+
| Matemáticas        | Ana     | García López      |
| Matemáticas        | Luis    | Martínez Pérez    |
| Matemáticas        | María   | Sánchez Ruiz      |
| Lengua Española    | Ana     | García López      |
| Lengua Española    | Javier  | Fernández Gómez   |
| Lengua Española    | Laura   | Díaz Ortega       |
| Historia           | Carlos  | Romero Torres     |
| Historia           | Elena   | Navarro Martínez  |
| Historia           | Pablo   | Hernández Soto    |
| Geografía          | Sofía   | Iglesias Navarro  |
| Geografía          | Miguel  | Castro León       |
| Física             | Clara   | Vidal Serrano     |
| Física             | Diego   | Morales Rivas     |
| Química            | Lucía   | Cano Torres       |
| Química            | Adrián  | Herrero Gil       |
| Biología           | Nuria   | Requena Soler     |
| Biología           | María   | Sánchez Ruiz      |
| Inglés             | Javier  | Fernández Gómez   |
| Inglés             | Laura   | Díaz Ortega       |
| Tecnología         | Carlos  | Romero Torres     |
| Educación Física   | Elena   | Navarro Martínez  |
| Música             | Pablo   | Hernández Soto    |
| Arte               | Sofía   | Iglesias Navarro  |
| Arte               | Miguel  | Castro León       |
| Tecnología         | Clara   | Vidal Serrano     |
| Física             | Diego   | Morales Rivas     |
| Geografía          | Lucía   | Cano Torres       |
| Historia           | Adrián  | Herrero Gil       |
| Lengua Española    | Nuria   | Requena Soler     |
| Matemáticas        | Javier  | Fernández Gómez   |
+--------------------+---------+-------------------+
30 rows in set (0.000 sec)


SELECT
    asignaturas.nombre AS 'Asignatura',
    alumnos.nombre AS 'Alumno',
    alumnos.apellidos AS 'Apellidos'
FROM matriculas
RIGHT JOIN asignaturas
    ON matriculas.id_asignatura = asignaturas.Identificador
RIGHT JOIN alumnos
    ON matriculas.id_alumno = alumnos.Identificador;

--Resultado:

+--------------------+---------+-------------------+
| Asignatura         | Alumno  | Apellidos         |
+--------------------+---------+-------------------+
| Matemáticas        | Ana     | García López      |
| Lengua Española    | Ana     | García López      |
| Matemáticas        | Luis    | Martínez Pérez    |
| Matemáticas        | María   | Sánchez Ruiz      |
| Biología           | María   | Sánchez Ruiz      |
| Lengua Española    | Javier  | Fernández Gómez   |
| Inglés             | Javier  | Fernández Gómez   |
| Matemáticas        | Javier  | Fernández Gómez   |
| Lengua Española    | Laura   | Díaz Ortega       |
| Inglés             | Laura   | Díaz Ortega       |
| Historia           | Carlos  | Romero Torres     |
| Tecnología         | Carlos  | Romero Torres     |
| Historia           | Elena   | Navarro Martínez  |
| Educación Física   | Elena   | Navarro Martínez  |
| Historia           | Pablo   | Hernández Soto    |
| Música             | Pablo   | Hernández Soto    |
| Geografía          | Sofía   | Iglesias Navarro  |
| Arte               | Sofía   | Iglesias Navarro  |
| Geografía          | Miguel  | Castro León       |
| Arte               | Miguel  | Castro León       |
| Física             | Clara   | Vidal Serrano     |
| Tecnología         | Clara   | Vidal Serrano     |
| Física             | Diego   | Morales Rivas     |
| Física             | Diego   | Morales Rivas     |
| Química            | Lucía   | Cano Torres       |
| Geografía          | Lucía   | Cano Torres       |
| Química            | Adrián  | Herrero Gil       |
| Historia           | Adrián  | Herrero Gil       |
| Biología           | Nuria   | Requena Soler     |
| Lengua Española    | Nuria   | Requena Soler     |
+--------------------+---------+-------------------+
30 rows in set (0.001 sec)



SELECT
    asignaturas.nombre AS 'Asignatura',
    alumnos.nombre AS 'Alumno',
    alumnos.apellidos AS 'Apellidos'
FROM matriculas
LEFT JOIN asignaturas
    ON matriculas.id_asignatura = asignaturas.Identificador
LEFT JOIN alumnos
    ON matriculas.id_alumno = alumnos.Identificador

UNION

SELECT
    asignaturas.nombre,
    alumnos.nombre,
    alumnos.apellidos
FROM matriculas
RIGHT JOIN asignaturas
    ON matriculas.id_asignatura = asignaturas.Identificador
RIGHT JOIN alumnos
    ON matriculas.id_alumno = alumnos.Identificador;

--Resultado:

+--------------------+---------+-------------------+
| Asignatura         | Alumno  | Apellidos         |
+--------------------+---------+-------------------+
| Matemáticas        | Ana     | García López      |
| Matemáticas        | Luis    | Martínez Pérez    |
| Matemáticas        | María   | Sánchez Ruiz      |
| Lengua Española    | Ana     | García López      |
| Lengua Española    | Javier  | Fernández Gómez   |
| Lengua Española    | Laura   | Díaz Ortega       |
| Historia           | Carlos  | Romero Torres     |
| Historia           | Elena   | Navarro Martínez  |
| Historia           | Pablo   | Hernández Soto    |
| Geografía          | Sofía   | Iglesias Navarro  |
| Geografía          | Miguel  | Castro León       |
| Física             | Clara   | Vidal Serrano     |
| Física             | Diego   | Morales Rivas     |
| Química            | Lucía   | Cano Torres       |
| Química            | Adrián  | Herrero Gil       |
| Biología           | Nuria   | Requena Soler     |
| Biología           | María   | Sánchez Ruiz      |
| Inglés             | Javier  | Fernández Gómez   |
| Inglés             | Laura   | Díaz Ortega       |
| Tecnología         | Carlos  | Romero Torres     |
| Educación Física   | Elena   | Navarro Martínez  |
| Música             | Pablo   | Hernández Soto    |
| Arte               | Sofía   | Iglesias Navarro  |
| Arte               | Miguel  | Castro León       |
| Tecnología         | Clara   | Vidal Serrano     |
| Geografía          | Lucía   | Cano Torres       |
| Historia           | Adrián  | Herrero Gil       |
| Lengua Española    | Nuria   | Requena Soler     |
| Matemáticas        | Javier  | Fernández Gómez   |
+--------------------+---------+-------------------+
29 rows in set (0.003 sec)
