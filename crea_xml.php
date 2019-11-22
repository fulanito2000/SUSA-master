<?php

	$nmb_producto = $_POST['nmb_producto'];
	//pedir datos de base de datos
    require_once ('content/mysql-login.php');

    //Creamos la conexión
    $conexion = mysqli_connect($server, $user, $pass,$bd) 
    or die("Ha sucedido un error inexperado en la conexion de la base de datos");

    //generamos la consulta
    $sql = "SELECT alm.nombre, alm.direccion, alm.latitud, alm.longitud,pre.precio, pro.producto
			from almacen alm, detalle_almacen detalm, producto pro, detalle_producto detpro, precio pre
			where detalm.id_almacen = alm.id_almacen and
			pro.id_producto = detpro.id_producto and
			detpro.id_detalleproducto = detalm.id_detalleproducto and
			pre.id_precio = detpro.id_precio and
			pro.producto like '$nmb_producto'";

    //estándar de codificación Unicode Transformation 8 bits para compatibilidad ASCII
    mysqli_set_charset($conexion, "utf8");

    //arrojar error de consulta en caso de serlo asi
    if(!$result = mysqli_query($conexion, $sql)) die();

    $n = 0;

    //recoleccion de datos mediante un ciclo while(mientras haya registros)
	while($row = mysqli_fetch_array($result)) { 
	    $name_db=$row['nombre'];
	    $address_db=$row['direccion'];
	    $lat_db=$row['latitud'];
	    $lng_db=$row['longitud'];
	    $type_db=$row['precio'];
	    $matrizDeObras[] = array('id'=> $n, 'name'=> $name_db, 'address'=> $address_db, 'lat'=> $lat_db, 'lng'=> $lng_db, 'type'=> $type_db);
	    $n++;
	}
	/* Empezamos con una matriz de datos que puede proceder de cualquier fuente
	(p.e. una lectura de base de datos) 
	$matrizDeObras = array(
		array(
			"id"=>"1",
			"name"=>"seccion de verduras",
			"address"=>"pifsal 638474",
			"lat"=>"20.089775",
			"lng"=>"-98.372112",
			"type"=>"$50"
		)
	);*/

	/* Vamos a crear un XML con XMLWriter a partir de la matriz anterior. 
	Lo vamos a crear usando programación orientada a objetos. 
	Por lo tanto, empezamos creando un objeto de la clase XMLWriter.*/
	$objetoXML = new XMLWriter();

	// Estructura básica del XML
	$objetoXML->openURI("obras.xml");
	$objetoXML->setIndent(true);
	$objetoXML->setIndentString("\t");
	$objetoXML->startDocument('1.0', 'utf-8');
	// Inicio del nodo raíz
	$objetoXML->startElement("markes");

	foreach ($matrizDeObras as $obra){
		$objetoXML->startElement("marker"); // Se inicia un elemento para cada obra.
		// Atributo de la fecha de inicio del elemento obra
		$objetoXML->writeAttribute("id", $obra["id"]);
		// Atributo de la fecha de inicio del elemento obra
		$objetoXML->writeAttribute("name", $obra["name"]);
		// Atributo de la fecha de final del elemento obra
		$objetoXML->writeAttribute("address", $obra["address"]);
		// Atributo contratista del elemento obra
		$objetoXML->writeAttribute("lat", $obra["lat"]);
		// Atributo presupuesto del elemento obra.
		$objetoXML->writeAttribute("lng", $obra["lng"]);
		// Atributo presupuesto del elemento obra.
		$objetoXML->writeAttribute("type", $obra["type"]);
		$objetoXML->fullEndElement (); // Final del elemento "obra" que cubre cada obra de la matriz.
	}
	$objetoXML->endElement(); // Final del nodo raíz, "obras"
	$objetoXML->endDocument(); // Final del documento

	mysqli_close($conexion)or die("Error en desconexion");

	header('Location: escoger_producto.php');
?>