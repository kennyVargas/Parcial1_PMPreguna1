<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>REGISTRO</title>
	<link rel="stylesheet" href="css/estiloRegistro.css">
</head>


<body>

<div class="contenedor">
	<h1> <center>PAGINA DE REGISTRO</center></h1>
	<a href="login.php" class="suich">INICIAR SESION</a>
	<form action="model/modelRegistro.php"  method="post">
		<div class="caja">
			<label for="nombre">NOMBRE :</label>
			<input type="text" id="nombre" name="nombre" required>
		</div>
		<div class="caja">
			<label for="apellido">APELLIDO :</label>
			<input type="text" id="apellido" name="apellido" required>
	    </div>
	    <div class="caja">
			<label for="fec_nac">FECHA DE NAC. :</label>
			<input type="date" id="fec_nac" name="fec_nac" required>
		</div>
		<div class="caja">
			<label for="estado">SELECCIONE ORIGEN DE PROCEDENCIA</label>	
			<select name="estado" id="estado">
				<option value="01">Chuquisaca</option>
				<option value="02">La Paz</option>
				<option value="03">Cochabamba</option>
				<option value="04">Oruro</option>
				<option value="05">Potosí</option>
				<option value="06">Tarija</option>
				<option value="07">Santa Cruz</option>
				<option value="08">Beni</option>
				<option value="09">Pando</option>
			</select>
		</div>
		<br>
		<div class="caja">
			<label for="ci">C.I. :</label>
			<input type="number" id="ci" name="ci" required min="1">
		</div>
		<div class="caja">
			<label for="password">CONTRASEÑA</label>
			<input type="password" name="password" id="password" required placeholder="min 8 caracteres" minlength="8" maxlength="16">
		</div>
		<div>
			<input type="submit" value="REGISTRARSE" class="submit">
			<!-- <input type="reset" value="LIMPIAR"> -->
		</div>
</form>
	
</div>

</body>
</html>