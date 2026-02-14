<?php
// Conexión a la base de datos
$host = "localhost";
$user = "empleados1";
$password = "Empleados123$";
$db   = "empleados";
$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener el ID del empleado
$id = $_POST['id'];

// Buscar el empleado en la base de datos
$sql = "SELECT * FROM empleados WHERE id = " . $id;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $empleado = $result->fetch_assoc();
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Editar Empleado</title>
</head>
<body>
    <h2>Editar Empleado</h2>
    <form action="003-procesamodificar.php" method="POST">
        <input type="hidden" name="id" value="<?php echo $empleado['id']; ?>">
        
        <label>Nombre:</label><br>
        <input type="text" name="nombre" value="<?php echo $empleado['nombre']; ?>"><br><br>
        
        <label>Puesto:</label><br>
        <input type="text" name="puesto" value="<?php echo $empleado['puesto']; ?>"><br><br>
        
        <label>Salario:</label><br>
        <input type="number" step="0.01" name="salario" value="<?php echo $empleado['salario']; ?>"><br><br>
        
        <label>Fecha Contratación:</label><br>
        <input type="date" name="fecha_contratacion" value="<?php echo $empleado['fecha_contratacion']; ?>"><br><br>
        
        <label>Departamento:</label><br>
        <input type="text" name="departamento" value="<?php echo $empleado['departamento']; ?>"><br><br>
        
        <input type="submit" value="Actualizar">
    </form>
</body>
</html>
<?php
} else {
    echo "Empleado no encontrado";
}
$conn->close();
?>