<?php
// Cargamos la librería dompdf que hemos instalado en la carpeta dompdf
require_once '../../librerias/dompdf/autoload.inc.php';

use Dompdf\Dompdf;
$id=$_GET['idventa'];
// Introducimos HTML de prueba
function file_get_contents_curl($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_URL, $url);
    $data = curl_exec($ch);
    curl_close($ch);
    return $data;
}

 
// Instanciamos un objeto de la clase DOMPDF.
$pdf = new DOMPDF();
 
// Definimos el tamaño y orientación del papel que queremos.
$pdf->set_paper("letter", "portrait");
//$pdf->set_paper(array(0,0,104,250));
 
// Cargamos el contenido HTML.
 $pdf->load_html(ob_get_clean());
$pdf->load_html(utf8_decode($html));

// Renderizamos el documento PDF.
$pdf->render();
 
// Enviamos el fichero PDF al navegador.
$pdf->stream('reporteVenta.pdf'); $html=file_get_contents("http://localhost/getsemani/vistas/ventas/reporteVentaPdf.php?idventa=".$id);





//https://getsemanii.000webhostapp.com/Getsemani/Getsemani/vistas/ventas/reporteVentaPdf.php
//https://getsemanii.000webhostapp.com/Getsemani/Getsemani/vistas/ventas/ticketVentaPdf.php