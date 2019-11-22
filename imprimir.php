<!DOCTYPE html>
<html lang="es">
<head>
  	<title>Imprimir</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="css/bootstrap4.css">
  	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="media/icon.ico" />
</head>
<body>
<!-------------------------------------------------------------contenedor-->
	<div class="container">
<!-------------------------------------------------------------nav obscuro-->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <!-- Brand/logo -->
	  <a class="navbar-brand" href="#">
	    <img src="media/icon.svg" alt="icon" style="width:80px;">
	  </a>
	  
	  <!-- Links -->
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="#">SUSA</a>
	    </li>
	  </ul>
	</nav>
<!-------------------------------------------------------------jumbotron ingrese producto-->
		<div class="jumbotron">
			<h1>Local nombre</h1>
			<h3>Local descripción</h3>
		</div>

<!-------------------------------------------------------------tabla de productos a imprimir-->
		<table class='table table-bordered table-hover' id="tablaProductos">
			<!-------------------------------------------------------------encabezados-->
            <tr>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Unidad</th>
                <th>Precio</th>
            </tr>
            <!-------------------------------------------------------------contenido-->
            <tr>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>$</td>
            </tr>
            <!-------------------------------------------------------------fila final-->
            <tr align="center" valign="middle">
                <td colspan="4">$</td>
            </tr>
        </table>
<!-------------------------------------------------------------precio total-->

		<h4>Total $</h4>

<!-------------------------------------------------------------imprimir-->

		<span class="align-middle">
			<button type="button" onclick="window.print();" class="btn btn-primary">Imprimir</button>
		</span>
		

<!-------------------------------------------------------------fin tabla-->
	</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/edicion-plan.js"></script>
</html>
