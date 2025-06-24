<?php

$conn = new mysqli("localhost", "root", "", "videojuegos_db");


$data = json_decode(file_get_contents("php://input"), true);


$id = $data["id"];
$nombre = $data["nombre"];
$descripcion = $data["descripcion"];
$fecha = $data["fecha_lanzamiento"];
$plataforma = $data["plataforma"];


$sql = "UPDATE videojuegos SET 
        nombre = '$nombre',
        descripcion = '$descripcion',
        fecha_lanzamiento = '$fecha',
        plataforma = '$plataforma'
        WHERE id = $id";


echo json_encode(["success" => $conn->query($sql)]);
?>
