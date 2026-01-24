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

// Obtiene el id del empleado a modificar desde el formulario
$id = $_POST['id'];

// Modifica los campos del empleado en la base de datos según lo ingresado
$sql = "
  UPDATE empleados SET
      nombre = '" . $_POST['nombre'] . "',
      puesto = '" . $_POST['puesto'] . "',
      salario = '" . $_POST['salario'] . "',
      fecha_contratacion = '" . $_POST['fecha_contratacion'] . "',
      departamento = '" . $_POST['departamento'] . "' 
  WHERE id = " . $id . "
";

$conn->query($sql);

// Cierra la conexión a la base de datos
$conn->close();

echo "El empleado ha sido modificado correctamente";
?>