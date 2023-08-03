<?php

$envPath = $_SERVER['DOCUMENT_ROOT'] . '/.env';
$envData = parse_ini_file($envPath);

$db_host = $envData['DB_HOST'];
$db_user = $envData['DB_USERNAME'];
$db_pass = $envData['DB_PASSWORD'];
$db_name = $envData['DB_NAME'];

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if(mysqli_connect_errno()){
	echo 'Gagal melakukan koneksi ke Database : '.mysqli_connect_error();
}   
?>
