<?php

$conn = new mysqli("localhost", "root", "", "videojuegos_db");


$sql = "SELECT * FROM videojuegos";
$result = $conn->query($sql);


$datos = [];

while ($row = $result->fetch_assoc()) {
    $datos[] = $row;
}


header('Content-Type: application/json');
echo json_encode($datos);
?>
