<?php

// Conecta a la base de datos mysql

$host = "localhost";
$user = "empleados1";
$password = "Empleados123$";
$db   = "empleados";

$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Inicializa la sesión
session_start();

?>

<!doctype html>
<html lang="es">
  <head>
    <title>Bryan Avila</title>
    <meta charset="utf-8">
  </head>
  <body>

  <form action="003-procesamodificar.php" method="post">

      <p>Introduce el id del empleado a modificar</p>
      <input type="number" name="id" placeholder="id">
      <input type="submit">

  </form>

  </body>
</html>