<?php 

	class proveedores{

		public function agregaProveedor($datos){
			$c= new conectar();
			$conexion=$c->conexion();

			$idusuario=$_SESSION['iduser'];

			$sql="INSERT into proveedores (nombre,
										direccion,
										email,
										telefono)
							values ('$datos[0]',
									'$datos[1]',
									'$datos[2]',
									'$datos[3]')";
			return mysqli_query($conexion,$sql);	
		}

		public function obtenDatosProveedor($idproveedor){
			$c= new conectar();
			$conexion=$c->conexion();

			$sql="SELECT id_proveedor, 
							nombre,
							direccion,
							email,
							telefono
				from proveedores
				where id_proveedor='$idproveedor'";
			$result=mysqli_query($conexion,$sql);
			$ver=mysqli_fetch_row($result);

			$datos=array(
					'id_proveedor' => $ver[0], 
					'nombre' => $ver[1],
					'direccion' => $ver[2],
					'email' => $ver[3],
					'telefono' => $ver[4]
						);
			return $datos;
		}

		public function actualizaProveedor($datos){
			$c= new conectar();
			$conexion=$c->conexion();
			$sql="UPDATE proveedores set nombre='$datos[1]',
										direccion='$datos[2]',
										email='$datos[3]',
										telefono='$datos[4]'
								where id_proveedor='$datos[0]'";
			return mysqli_query($conexion,$sql);
		}

		public function eliminaProveedor($idproveedor){
			$c= new conectar();
			$conexion=$c->conexion();

			$sql="DELETE from proveedores 
					where id_proveedor='$idproveedor'";

			return mysqli_query($conexion,$sql);
		}
	}

 ?>