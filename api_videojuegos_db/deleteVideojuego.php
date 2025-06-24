<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "videojuegos_db");

// Recibir datos JSON del body
$data = json_decode(file_get_contents("php://input"), true);

// Extraer el ID a eliminar
$id = $data["id"];

// Eliminar el registro
$sql = "DELETE FROM videojuegos WHERE id = $id";

// Enviar resultado
echo json_encode(["success" => $conn->query($sql)]);
?>