$(document).on('ready', funcPrincipal);

function funcPrincipal() 
{
	$("#btnAgregarProducto").on('click', funcAgregarProducto);
  
	$("body").on('click', ".btn-danger", funcEliminarFila);

}

function funcEliminarFila() 
{
	$(this).parent().parent().fadeOut( "slow", function() { $(this).remove(); } );
}

function funcAgregarProducto() 
{
	$("#tablaProductos")
	.append
	(
		$('<tr>')
        .append
        (
        	$('<td>')
            .append
            (
            	$('<input>').attr('type', 'text').addClass('form-control').attr('name', 'producto')
            )
        )
        .append
        (
        	$('<td>')
            .append
            (
            	$('<input>').attr('type', 'number').addClass('form-control').attr('name', 'cantidad')
            )
        )
        .append
        (
            $('<td>')
            .append
            (
                $('<select>').addClass('form-control').attr('name', 'unidades')
            )
        )
        .append
        (
        	$('<td>').addClass('text-center')
            .append
            (
            	$('<div>').addClass('btn btn-danger').text('Eliminar')
            )            
        )        
    );
	//.append("<tr><td>123</td><td>456</td></tr>");
}