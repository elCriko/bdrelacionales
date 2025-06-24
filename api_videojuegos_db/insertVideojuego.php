<?php

$conn = new mysqli("localhost", "root", "", "videojuegos_db");


$data = json_decode(file_get_contents("php://input"), true);


$nombre = $data["nombre"];
$descripcion = $data["descripcion"];
$fecha = $data["fecha_lanzamiento"];
$plataforma = $data["plataforma"];


$sql = "INSERT INTO videojuegos (nombre, descripcion, fecha_lanzamiento, plataforma)
        VALUES ('$nombre', '$descripcion', '$fecha', '$plataforma')";


echo json_encode(["success" => $conn->query($sql)]);
?>
