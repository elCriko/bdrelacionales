<?php
    header("Content-Type: application/json");
    header("Acces-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Jose Rojas", "correo" => "jose@gmail.com"],
        ["id" => 1, "nombre" => "Manuel Torres", "correo" => "manuel@gmail.com"],
        ["id" => 1, "nombre" => "Isaac Nevarez", "correo" => "isaac@gmail.com"],
    ];
    
    echo json_encode($usuarios);

?>