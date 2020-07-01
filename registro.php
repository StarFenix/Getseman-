<?php 
	
	require_once "clases/Conexion.php";
	$obj= new conectar();
	$conexion=$obj->conexion();

	$sql="SELECT * from usuarios where email='admin'";
	$result=mysqli_query($conexion,$sql);
	$validar=0;
	if(mysqli_num_rows($result) > 0){
		header("location:index.php");
	}
 ?>


<!DOCTYPE html>
<html>
<head>
	<title>registro</title>
	<link rel="stylesheet" type="text/css" href="librerias/bootstrap/css/bootstrap.css">
	<script src="librerias/jquery-3.2.1.min.js"></script>
	<script src="js/funciones.js"></script>

</head>
<body style="background-color: #F6E4F4">
	<br><br><br>
	<div class="container">
			<div id="signupbox" style="margin-top:10px" class="mainbox col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title"><center>Nuevo Usuario</center></div>
						<div style="float:right; font-size: 70%; positon: relative; top:-10px"><a id="signinlink" href="index.php">Iniciar Sesi&oacute;n</a></div>
					</div>  
					<div class="panel panel-body">
						<form id="frmRegistro">
							<label>Nombre</label>
							
							<input type="text" class="form-control" name="nombre" placeholder="Nombre" id="nombre" value="<?php if(isset($nombre)) echo $nombre; ?>" required >
							<label>Apellido</label>
							<input type="text" class="form-control" name="apellido" placeholder="Apellido" id="apellido" value="<?php if(isset($apellido)) echo $apellido; ?>" required >
							<label>Usuario</label>
							<input type="text" class="form-control" name="usuario" placeholder="Usuario" value="<?php if(isset($usuario)) echo $usuario; ?>" required>
							<label>Password</label>
							<input type="password" class="form-control input-sm" name="password" id="password" placeholder="Password" required>

							<p></p>
							<span class="btn btn-primary" id="registro">Registrar</span>
							<a href="index.php" class="btn btn-default">Regresar login</a>
						</form>
					</div>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>
</body>
</html>

<script type="text/javascript">
	$(document).ready(function(){
		$('#registro').click(function(){

			vacios=validarFormVacio('frmRegistro');

			if(vacios > 0){
				alert("Debes llenar todos los campos!!");
				return false;
			}

			datos=$('#frmRegistro').serialize();
			$.ajax({
				type:"POST",
				data:datos,
				url:"procesos/regLogin/registrarUsuario.php",
				success:function(r){
					//alert(r);

					if(r==1){
						alert("Usuario registrado. Regrese al login");
					}else{
						alert("Fallo al agregar :(");
					}
				}
			});
		});
	});
</script>

