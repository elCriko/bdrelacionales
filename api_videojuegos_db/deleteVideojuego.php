<?php

$conn = new mysqli("localhost", "root", "", "videojuegos_db");


$data = json_decode(file_get_contents("php://input"), true);


$id = $data["id"];


$sql = "DELETE FROM videojuegos WHERE id = $id";


echo json_encode(["success" => $conn->query($sql)]);
?>
