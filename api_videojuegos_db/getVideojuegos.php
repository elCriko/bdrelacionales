<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "videojuegos_db");

// Consulta todos los registros
$sql = "SELECT * FROM videojuegos";
$result = $conn->query($sql);

// Arreglo para almacenar los datos
$datos = [];

while ($row = $result->fetch_assoc()) {
    $datos[] = $row;
}

// Regresa los datos en formato JSON
header('Content-Type: application/json');
echo json_encode($datos);
?>