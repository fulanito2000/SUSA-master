<!DOCTYPE html>
<html lang="es">
<head>
  	<title>Susa</title>
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
			<form method="POST" action="crea_xml.php"> 
				<h1>Ingrese un producto</h1>
				<div class="input-group">
			  		<input type="text" name="nmb_producto" id="nmb_producto" class="form-control" placeholder="pruebe con 'papa'">
			  		<div class="input-group-append">
			    		<button class="btn btn-success" type="submit" id="">Agregar</button>
			    	</div> 
				</div>
			</form>
		</div>
<!-------------------------------------------------------------formulario para lista de productos--
		<<--<form method="POST" action="">      
            <div class="form-group">                
                <table class='table table-bordered table-hover' id="tablaProductos">
<-------------------------------------------------------------encabezados de tabla productos--
                    <tr>
                    	<th>Producto</th>
                    	<th>Cantidad</th>
                        <th>unidad</th>
                        <th></th>
                    </tr>
<-------------------------------------------------------------campos tabla productos--
                    <tr>
                    	<-------------------------------------------------------------producto--
                        <td><input type="text" class="form-control" name="producto" <td>
                       	<-------------------------------------------------------------cantidad--
                        <td><input type="number" class="form-control" name="cantidad"></td>
                        <-------------------------------------------------------------unidad--
                        <td>
				        	<select class="form-control" id="unidades" name="unidades">
							    <option>Kg</option>
							    <option>Lt</option>
							    <option>Cajas</option>
							    <option>Piezas</option>
							</select>
			    		</td>
			    		<-------------------------------------------------------------eliminar--
			    		<td class="text-center">
			    			<div class="btn btn-danger">eliminar</div>
			    		</td>
                      </tr>
<-------------------------------------------------------------fin campos--
                </table>
            </div>                                                                                               
            <button type="submit" class="btn btn-md btn-success pull-right">Buscar</button>
        </form>
<-------------------------------------------------------------fin tabla-->
	</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/edicion-plan.js"></script>
</html>
