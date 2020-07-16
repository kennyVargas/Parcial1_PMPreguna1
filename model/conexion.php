<?php 
// $bd_host="localhost";
// $bd_usuario="root";
// $bd_password="";
// $nombrebd="academico";
// $conexion=new mysqli($bd_host,$bd_usuario,$bd_password,$nombrebd);
// if($conexion->connect_errno){
// 	echo "Fallo la coneccion ".$conexion->connect_errno ;
// }
// $conexion->set_charset("utf8");


try {
	$base=new PDO('mysql:host=localhost;dbname=academico','root','');
	$base->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	$base->exec("SET CHARACTER SET UTF8");
} catch (Exception $e) {
	die('Error '.$e->getMessage());
	echo "Linea del error".$e->getLine();
	echo "ERROR EN LA CONEXION DE DATOS COMPROBAR QUE LOS DATOS COINSIDAD";
}
 ?>