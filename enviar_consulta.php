<?php
$nombre_formu = $_POST ['nombre'];
$apellido_formu = $_POST ['apellido'];
$correo_formu = $_POST ['correo'];
$edad_formu = $_POST ['edad'];
$consulta_formu = $_POST ['consulta'];
$mensaje_formu = $_POST ['mensaje'];

include('datos_conexion.php');

mysqli_query($conexion,"INSERT INTO consultas VALUES ('$nombre_formu','$apellido_formu','$correo_formu', $edad_formu,'$consulta_formu','$mensaje_formu') ");

mysqli_close($conexion);

header("Location: contacto.php?ok#formLabel")

?>