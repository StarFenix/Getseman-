<?php 
	
	require_once "clases/Conexion.php";
	$obj= new conectar();
	$conexion=$obj->conexion();

	$sql="SELECT * from usuarios where email='admin'";
	$result=mysqli_query($conexion,$sql);
	$validar=0;
	if(mysqli_num_rows($result) > 0){
		$validar=1;
	}
 ?>


<!DOCTYPE html>
<html>
<head>
	<title>Login de usuario</title>
	<link rel="stylesheet" type="text/css" href="librerias/bootstrap/css/bootstrap.css">
	<script src="librerias/jquery-3.2.1.min.js"></script>
	<script src="js/funciones.js"></script>
</head>
<body style="background-color: #F6E4F4">
	<br><br><br>
		<div class="container">   
			<div id="loginbox" style="margin-top:10px;" class="mainbox col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">                    
				<div class="panel panel-info" >
					<div class="panel-heading">
						<div class="panel-title"><center>Abarrotes Getsemaní</center></div>
						<!--<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="recupera.php">¿Se te olvid&oacute; tu contraseña?</a></div>-->
					</div>     
					
					<div style="padding-top:30px" class="panel-body" >
				

						<p>
							<img src="imagenes/logo.png"  height="190">
						</p>
						<form id="frmLogin">
							<label>Usuario</label>
							<input type="text" class="form-control" name="usuario" placeholder="Usuario" value="<?php if(isset($usuario)) echo $usuario; ?>" required>
							<label>Password</label>
							<input type="password" class="form-control input-sm" name="password" id="password" placeholder="Password" required>
							<p></p>
							<span class="btn btn-primary btn-sm" id="entrarSistema">Entrar</span>
							<?php  if(!$validar): ?>
							<a href="registro.php" class="btn btn-danger btn-sm">Registrar</a>
							<?php endif; ?>
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
		$('#entrarSistema').click(function(){

		vacios=validarFormVacio('frmLogin');

			if(vacios > 0){
				alert("Debes llenar todos los campos!!");
				return false;
			}

		datos=$('#frmLogin').serialize();
		$.ajax({
			type:"POST",
			data:datos,
			url:"procesos/regLogin/login.php",
			success:function(r){

				if(r==1){
					window.location="vistas/inicio.php";
				}else{
					alert("Error: Usuario o contraseña incorrectos");
				}
			}
		});
	});
	});
</script>