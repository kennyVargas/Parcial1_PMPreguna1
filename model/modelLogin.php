<?php 
include("conexion.php");

if(!empty($_POST)){
	$consultasql="SELECT * FROM usuario WHERE usuario=:id and password=:password";
	$ans=$base->prepare($consultasql);
	$ci=htmlentities(addslashes($_POST["id"]));
	$contra=htmlentities(addslashes($_POST["pass"]));
	$ans->bindValue(":id",$ci);
	$ans->bindValue(":password",$contra);
	 
	$ans->execute();
	$n=$ans->rowCount();

	// echo $ci."    ".$contra."   numero de registros :".$n."<br>";
	if($n!=0){
		// echo "si hay usuarios con este nombre";
		session_start();
		$_SESSION["usuario"]=$_POST["id"];
		header("Location:../usuarios_reg.php");
	}else{
		// echo "no se encontro usuarioas con este nombre";
		header("Location:../login.php");
	}
	$ans->closeCursor();
	$ans=null;
	$base=null;
}
else{
	$base=null;
	header("Location:../login.php");
}
 ?>

