<?php

$servidor="localhost";
$usuario="root";
$password="";
$base_de_datos="inmobiliario";

$conexion=new mysqli($servidor, $usuario, $password, $base_de_datos);

if($conexion){
    echo"<p>conexion correcta</p>";
}else{
    echo"<p>conexion incorrecta</p>";
}
?>