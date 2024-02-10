<?php
include 'global/config.php';
include 'global/conexion.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.php">Logo de la empresa</a>
        <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="my-nav" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Carrito</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <br>
        <div class="alert alert-success">
            Pantalla de mensaje
            <a href="#" class="badge badge-success">Ver Carrito</a>
        </div>
        <div class="row">
            <?php
            $sentencia=$pdo->prepare("SELECT * FROM `tblproductos`");
            $sentencia->execute();
            $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
            /* print_r($listaProductos); */
            ?>
            <?php foreach($listaProductos as $producto){ ?>
                <div class="col-3">
                <div class="card">
                    <img
                    title="<?php echo $producto['Nombre'];?>" 
                    class="card-img-top"
                    data-toggle="popover"
                    data-content="<?php echo $producto['Descripcion'];?>"
                    data-trigger="hover"
                    src="<?php echo $producto['Imagen'];?>"
                    alt="<?php echo $producto['Nombre'];?>">
                    <div class="card-body">
                        <span><?php echo $producto['Nombre'];?></span>
                        <h5 class="card-title"><?php echo $producto['Precio']?>$</h5>
                        <p class="card-text">Description</p>
                        <button 
                        class="btn btn-primary" 
                        name="btnAccion" 
                        value="Agregar" 
                        type="submit">Agregar al carrito
                        </button>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
    <script>
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
    </script>
</body>
</html>