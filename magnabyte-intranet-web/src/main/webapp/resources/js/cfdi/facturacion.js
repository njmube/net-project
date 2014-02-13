$(document).ready(function() {
	$("#folio").popover({
		placement: 'right',
		html: 'true',
		content: 'Ingresa el n&uacute;mero de ticket, verifica que sean 11 d&iacute;gitos',
		trigger: 'focus',
		container: 'body'
			
	});
	
	$("#fecha").popover({
		placement: 'right',
		html: 'true',
		content: 'Ingresa la fecha en la que se realiz&oacute; la compra',
		trigger: 'focus',
		container: 'body'
			
	});
	
	$("#total").popover({
		placement: 'right',
		html: 'true',
		content: 'Ingresa el total de la compra sin considerar propinas',
		trigger: 'focus',
		container: 'body'
			
	});
	
});