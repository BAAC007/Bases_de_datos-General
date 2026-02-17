<?php
// Conexión
$host = "localhost";
$user = "noticiero";
$password = "Noticiero123$";
$db = "noticiero";

$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

session_start();

// Consulta de la tabla noticias
$sql = "
    SELECT 
        n.id,
        n.titulo,
        n.contenido,
        n.fecha_publicacion,
        a.nombre AS autor_nombre,
        a.email AS autor_email
    FROM noticias n
    LEFT JOIN autores a ON n.autor_id = a.id
    ORDER BY n.fecha_publicacion DESC
";

$resultado = $conn->query($sql);

if (!$resultado) {
    die("Error en la consulta: " . $conn->error);
}

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Noticiero</title>
</head>
<body>
    <h1>Noticias</h1>
    
    <?php
    if ($resultado && $resultado->num_rows > 0) {
        while ($fila = $resultado->fetch_assoc()) {
            echo "<div style='margin: 20px 0; padding: 15px; border: 1px solid #ddd;'>";
            echo "<h2>" . htmlspecialchars($fila['titulo']) . "</h2>";
            echo "<p><strong>Fecha:</strong> " . $fila['fecha_publicacion'] . "</p>";
            echo "<p><strong>Autor:</strong> " . htmlspecialchars($fila['autor_nombre'] ?? 'Sin autor') . "</p>";
            echo "<p>" . htmlspecialchars(substr($fila['contenido'], 0, 200)) . "...</p>";
            echo "</div>";
        }
        $resultado->free();
    } else {
        echo "<p>No hay noticias disponibles.</p>";
    }
    
    $conn->close();
    ?>
</body>
</html>