<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Usuarios Registrados</title>
	<link rel="stylesheet" href="css/estilousuario.css">
</head>
<body>

<?php 
include("model/conexion.php");
	session_start();
	if(!isset($_SESSION["usuario"])){
		header("Location:login.php");
	}
$ID=$_SESSION["usuario"];
include("model/conexion.php");

$registro=$base->query("SELECT * FROM identificador WHERE ci=$ID")->fetchAll(PDO::FETCH_OBJ);
foreach ($registro as $usu)
{
	$ci=$usu->ci;
	$nom=$usu->nombre;
	$ape=$usu->apellido;
	$f_c=$usu->fecha_nac;
	$cod_r=$usu->cod_residencia;
}
$consutadept=$base->prepare("SELECT 
	case cod_residencia when '02' then 'LP	La Paz'
				  when '01' then 'CH	Chuquisaca'
				  when '03' then 'CB	Cochabamba'
				  when '04' then 'OR	Oruro'
				  when '05' then 'PT	Potosí'
				  when '06' then 'TJ	Tarija'
				  when '07' then 'SC	Santa Cruz'
				  when '08' then 'BE	Beni'
				  when '09' then 'PD	Pando'
				  else 'otro' end as depto
FROM identificador
where ci=?");
$consutadept->execute(array($ci));
$res=$consutadept->fetch(PDO::FETCH_ASSOC);
$departamento= $res['depto'];
 ?>


<header class="encabezado" role="banner">
	<div class="contenedor">
		<img src="images/logo.png" alt="logo del sitio" class="logo">
		<div class="usuario">
			<img src="images/foto.jpg" alt="foto de usuario" class="foto1">
			<p> NOMBRE USUARIO :	 <?php echo strtoupper($nom)." ".strtoupper($ape)?> </p>
			<p><a href="model/cerrar_session.php"> CERRAR SESSION</a></p>
		</div>
	</div>
</header>
<main class="datos_personales">
	<div class="contenedor">
		<h1>PAGINA DE USUARIOS REGISTRADOS</h1>
		<h3>primer parcial de  <span>INF-324</span></h3>
		<p>Datos del usuario:
		<input type="color" class="color_r"></p>
		<table border="2px">
			<tr>
				<th>CI</th>
				<th>NOMBRE</th>
				<th>APELLIDO</th>
				
	
				<th>FECHA NAC.</th>
				<th>RESIDENCIA</th>
			</tr>
			<tr>
			<?php 
				foreach ($registro as $usu)
				{
					echo "<td>".$usu->ci." </td>";
					echo "<td>".$usu->nombre."</td>";
					echo "<td>".$usu->apellido."</td>";
					echo "<td>".$usu->fecha_nac." </td>";
					echo "<td>".$departamento."</td>";
				}
			 ?>
  			</tr>
		</table>
		
	</div>
</main>

<footer class="pie_pag" role="contentinfo">
	<div class="contenedor">
		<small>Copyright 2014 nombre Empresa</small>
	</div>
</footer>

<?php 

$consutadept->closeCursor();
$registro=null;
$consutadept=null;
$base=null;
?>

</body>
</html>