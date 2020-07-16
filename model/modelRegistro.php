<?php 
include("conexion.php");
$registro =$base->query("SELECT * FROM usuario")->fetchAll(PDO::FETCH_OBJ);
	foreach ($registro as $usu) {
		echo "usuario: ".$usu->usuario." ";
		echo "contraseña: ".$usu->password." <br>";
}

if(!empty($_POST)){
	 $res=0;
	 $nom=$_POST["nombre"];
	 $ape=$_POST["apellido"];
	 $fec_nac=$_POST["fec_nac"];
	 $proced=$_POST["estado"];
	 $ci=$_POST["ci"];
	 $contra=$_POST["password"];
	
	$consultaSql1="INSERT INTO identificador values(:CI,:Nom,:Ape,:f_m,:cod_r)";
	$consultaSql2="INSERT INTO usuario VALUES(:uss,:pass)";
	$ans1=$base->prepare($consultaSql1);
	$ans1->execute(array(":CI"=>$ci,":Nom"=>$nom,":Ape"=>$ape,":f_m"=>$fec_nac,":cod_r"=>$proced));
	$ans2=$base->prepare($consultaSql2);
	$ans2->execute(array(":uss"=>$ci,":pass"=>$contra));
	$ans1->closeCursor();
	$ans2->closeCursor();
	$ans1=null;
	$ans2=null;
	$base=null;

	header("Location:../login.php?respuesta=$res");

}else{
	// echo "nombre vino void";
	$base=null;
	header("Location:../registro.php");
}


 ?>