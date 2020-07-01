<?php 

	require_once "../../clases/Conexion.php";
	require_once "../../clases/Usuarios.php";

	$datos=array(
			$_POST['idUsuario'],  
		    $_POST['nombreU'] , 
		    $_POST['apellidoU'],  
		    $_POST['usuarioU']
				);  
	$obj= new usuarios();

	echo $obj->actualizaUsuario($datos);


 ?>