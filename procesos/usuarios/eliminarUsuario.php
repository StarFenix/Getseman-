<?php 

	require_once "../../clases/Conexion.php";
	require_once "../../clases/Usuarios.php";
	$idus=$_POST['idusuario'];
	
	$obj= new usuarios();

	echo $obj->eliminaUsuario($idus);

 ?>