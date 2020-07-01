<?php 

session_start();
	require_once "../../clases/Conexion.php";
	require_once "../../clases/Proveedores.php";

	$obj= new proveedores();


	$datos=array(
			$_POST['idproveedorU'],
			$_POST['nombreU'],
			$_POST['direccionU'],
			$_POST['emailU'],
			$_POST['telefonoU']
			);

	echo $obj->actualizaProveedor($datos);

	
	
 ?>