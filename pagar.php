<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php'
?>

<?php 
if($_POST) {
    $total=0;
    $SID=session_id();
    foreach($_SESSION['CARRITO'] as $indice=>$producto) {

        $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);

    }
    
    $sentencia=$pdo->prepare("INSERT INTO `tblventas` 
                    (`id`, `ClaveTransaccion`, `PaypalDatos`, `Datetime`, `Correo`, `Total`, `Status`) 
                    VALUES (NULL, '12345678910', NULL, '2024-03-25 22:49:45', 'armandoetorresc31@gmail.com', '700', 'pendiente');");
    $sentencia->execute();

    echo "<h3>".$total."</h3>";
}
?>



<?php include 'templates/pie.php'?>