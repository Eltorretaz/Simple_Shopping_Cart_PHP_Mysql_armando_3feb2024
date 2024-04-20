<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php'
?>

<?php
            $sentencia=$pdo->prepare("SELECT * FROM `tblproducto`");
            $sentencia->execute();
            $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
            /* print_r($listaProductos); */
            ?>

<div class="row">
    <?php foreach($listaProductos as $producto){ ?>
    <div class="col-2">
        <div class="card">
            <img class="card-img-top" src="<?php echo $producto[ 'Imagen']; ?>">
            <div class="card-body">
                <p class="card-text"><?php echo $producto['Nombre']; ?></p>
                <button class="btn btn-success" type="button">Descargar</button>
            </div>
        </div>
    </div>
<?php } ?>
</div>

<?php include 'templates/pie.php'?>