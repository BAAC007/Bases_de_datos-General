<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Codificar Contraseña en Base64</title>
</head>

<body>
    <h2>Ingresa tu contraseña</h2>

    <!-- Formulario para enviar la contraseña -->
    <form method="POST" action="">
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>
        <br><br>
        <button type="submit">Codificar en Base64</button>
    </form>

    <?php
    // Si se ha enviado el formulario
    if ($_POST && isset($_POST['password'])) {
        $contrasena = $_POST['password'];
        $codificada = base64_encode($contrasena);
        echo "<h3>Resultado:</h3>";
        echo "<p>Contraseña original: <strong>" . htmlspecialchars($contrasena) . "</strong></p>";
        echo "<p>Contraseña en Base64: <strong>" . htmlspecialchars($codificada) . "</strong></p>";
    }
    ?>
</body>

</html>