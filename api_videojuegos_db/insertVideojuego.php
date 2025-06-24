<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "videojuegos_db");

// Recibir datos JSON del body
$data = json_decode(file_get_contents("php://input"), true);

// Extraer valores
$nombre = $data["nombre"];
$descripcion = $data["descripcion"];
$fecha = $data["fecha_lanzamiento"];
$plataforma = $data["plataforma"];

// Insertar en la base de datos
$sql = "INSERT INTO videojuegos (nombre, descripcion, fecha_lanzamiento, plataforma)
        VALUES ('$nombre', '$descripcion', '$fecha', '$plataforma')";

// Enviar resultado
echo json_encode(["success" => $conn->query($sql)]);
?>