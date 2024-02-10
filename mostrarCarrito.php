<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/cabecera.php'
?>

<br>
<h3>Lista de carrito</h3>

<table class="table table-light table-bordered">
  <tbody>
    <tr>
      <th width="40%">Descripcion</th>
      <th width="15%" class="text-center">cantidad</th>
      <th width="20%" class="text-center">Precio</th>
      <th width="20%" class="text-center">Total</th>
      <th width="5%">--</th>
    </tr>
    <tr>
      <td width="40%">Libro</td>
      <td width="15%" class="text-center">1</td>
      <td width="20%" class="text-center">$300</td>
      <td width="20%" class="text-center">$200</td>
      <td width="5%"><button class="btn btn-danger" type="button">Text</button></td>
    </tr>
    <tr>
      <td width="40%">Libro</td>
      <td width="15%" class="text-center">1</td>
      <td width="20%" class="text-center">$300</td>
      <td width="20%" class="text-center">$200</td>
      <td width="5%"><button class="btn btn-danger" type="button">Text</button></td>
    </tr>
    <tr>
      <td colspan="3" align="right"><h3>Total</h3></td>
      <td align="right"><h3>$<?php echo number_format(300,2)?></h3></td>
      <td></td>
      </tr>
  </tbody>
</table>

<?php include 'templates/pie.php'; ?>