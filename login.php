<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LOGIN</title>
	<link rel="stylesheet" href="css/estiloRegistro.css">
</head>
<body>
	
<div class="contenedor2">
	<h1>LOGIN</h1>
	<?php 
		if(isset($_GET["respuesta"])){
			$res=$_GET["respuesta"];
			echo "<p> <center> !!!!!!!!SE REGISTRO CON EXITO!!!!!!!!!!!!</center>		</p>"."<br>";
			echo "<p> <center>¡¡¡¡¡¡¡¡PUEDE INICIAR SESION¡¡¡¡¡¡¡¡¡</center>		</p>";
		}
	 ?>

	 <br>
	<a href="registro.php" class="suich">REGISTRARSE</a>
	<form action="model/modelLogin.php" method="post">
		<div class="caja">
			<label for="id">C.I.:</label><br>
			<input type="number" name="id" id="id" required>
		</div>
		<br>
		<div class="caja">
			<label for="pass">CONTRASEÑA</label><br>
			<input type="password" name="pass" id="pass" required placeholder="min 8 caracteres" minlength="8" maxlength="16"><br>
		</div>

		<input type="submit" value="INGRESAR" class="submit">
	</form>

</div>
	
</body>
</html>