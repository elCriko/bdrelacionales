<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "videojuegos_db");

// Recibir datos JSON del body
$data = json_decode(file_get_contents("php://input"), true);

// Extraer valores
$id = $data["id"];
$nombre = $data["nombre"];
$descripcion = $data["descripcion"];
$fecha = $data["fecha_lanzamiento"];
$plataforma = $data["plataforma"];

// Actualizar el registro
$sql = "UPDATE videojuegos SET 
        nombre = '$nombre',
        descripcion = '$descripcion',
        fecha_lanzamiento = '$fecha',
        plataforma = '$plataforma'
        WHERE id = $id";

// Enviar resultado
echo json_encode(["success" => $conn->query($sql)]);
?>