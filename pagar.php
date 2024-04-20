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
    $DateAndTime = date('Y-m-d h:i:s', time());
    $Correo=$_POST['email'];

    foreach($_SESSION['CARRITO'] as $indice=>$producto) {

        $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);

    }

    $sentencia=$connect->prepare("INSERT INTO `tblventas` 
    (`id`, `clavetransaccion`, `paypaldatos`, `fecha`, `correo`, `total`, `status`) 
    VALUES (NULL, '$SID' , '', '$DateAndTime', '$Correo', '$total', 'pendiente');");
    $sentencia->execute();
    $idVenta=mysqli_insert_id($connect);

    foreach($_SESSION['CARRITO'] as $indice=>$producto) {
    
    $precioUnitario=$producto['PRECIO'];
    $cantidad=$producto['CANTIDAD'];
    $idProducto=$producto['ID'];
    $productoNombre=$producto['NOMBRE'];

        $sentencia=$connect->prepare("INSERT INTO `tbldetalleventa` 
                (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) 
        VALUES (NULL, '$idVenta', '$idProducto', '$precioUnitario', '$cantidad', '0');");
        $sentencia->execute();

    }
    
/*     echo "<h3>".$total."</h3>"; */
}
?>
<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso Final !</h1>
    <hr class="my-4">
    <p class="lead"> Estas apunto de pagar con paypal la cantidad de: 
        <h4><?php echo number_format($total,2);?>$</h4>
    </p>
    <!-- paypal -->
    <div id="smart-button-container">
      <div style="text-align: center;width: 50%;margin: 0 auto;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
  <script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD" data-sdk-integration-source="button-factory"></script>
  <script>
    function initPayPalButton() {
      paypal.Buttons({
        style: {
          shape: 'rect',
          color: 'gold',
          layout: 'vertical',
          label: 'pay',
          
        },

        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{"description":"LA DESCRIPCION DE TU PRODUCTO","amount":{"currency_code":"USD","value":13}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(orderData) {
            
            // Full available details
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
 
actions.redirect('http://localhost/Simple_Shopping_Cart_PHP_Mysql_armando_3feb2024/descargar.php');
            
          });
        },

        onError: function(err) {
          console.log(err);
        }
      }).render('#paypal-button-container');
    }
    initPayPalButton();
  </script>

<?php include 'templates/pie.php'?>