<?php 
$home = "/index.php";
$nombre = $_POST['nombre'];
$token = $_POST['token'];

include('claves.php'); //acá necesito la clave privada...
$url = 'https://www.google.com/recaptcha/api/siteverify';
$peticion = "$url?secret=$claves[privada]&response=$token";

$rta = file_get_contents( $peticion );
$json = json_decode($rta, true);
$ok = $json['success']; //true si salió ok... false si algo falló.


if( $ok === false ){
	header("Location: $home?error=Error en el captcha" );
	die( );
}


//un score muy bajo, significa robot
if( $json['score'] < 0.7 ){
	header("Location: $home?error=No, señor robot, usted no puede entrar" );
	die( );
} 


//si llegué acá... el Recaptcha pasó satisfactoriamente...
$archivo = $_FILES['zip'];
if( $archivo['size'] == 0 ){
	header("Location: $home?error=No se ha recibido un archivo" );
	die( );	
}


//si llegué acá, el captcha está bien
//y tengo al menos un byte de archivo...
if( ! is_dir("uploads") ) mkdir("uploads");
move_uploaded_file( $archivo['tmp_name'], "uploads/$nombre.zip" );
