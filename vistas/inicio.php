<?php 
	session_start();
	if(isset($_SESSION['usuario'])){
		
 ?>


<!DOCTYPE html>
<html>
<head>
	<title>inicio</title>
	<?php require_once "menu.php"; ?>
</head>
<body>

<h1 class="text-center text-white pt-5">Tienda de Abarrotes Getsemaní</h1>
<div align="center"> <img  src="../imagenes/logo.png"></div>
</div><br>

  
 <h2 class="text-center text-white pt-5">Menú Principal</h2>
 
 <div class="contenedor" >
    <div class="elemento">
      <a href="ventas.php">
      <img src="../imagenes/ventas.png" alt="" width="300px" height="250px"></a>
      <p align="center">VENTAS</p>
    </div>
    
    <div class="elemento"><a href="articulos.php">
      <img src="../imagenes/inventario.png" alt="" width="300px" height="250px"></a>
      <p align="center">INVENTARIO</p>
    </div>
   <div class="elemento"><a href="categorias.php">
      <img src="../imagenes/catalogo.png" alt="" width="300px" height="250px"></a>
      <p>CATÁLOGO</p>
    </div>
   
    </div>
    <div class="elemento"><a href="../vistas/ventas.php">
      <img src="../imagenes/reportes.png" alt="" width="300px" height="250px"></a>
      <p align="center">REPORTES</p>
    </div>
    
     <!--<div class="elemento"><a href="provedores.php">
      <img src="../imagenes/provedores.png" alt="" width="300px" height="250px"></a>
      <p align="center">PROVEEDORES</p>
     </div>-->
  <br><br/>
  <div style="text-align:center;padding:1em 0;"> <iframe src="https://www.zeitverschiebung.net/clock-widget-iframe-v2?language=es&size=medium&timezone=America%2FMexico_City"   width="100%" height="115" frameborder="0" seamless></iframe> </div>

</body>
</html>
<?php 
	}else{
		header("location:../index.php");
	}
 ?>