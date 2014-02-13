function autoClosingAlert(selector, delay) {
	var alert = $(selector).alert();
	window.setTimeout(function() {alert.fadeOut("slow");}, delay);
}


$(document).ready(function() {
	$("div.alert").each(function() {
		if($(this).find('#message').text().trim() == "") {
			$(this).alert("close");
		} else {
			$(this).alert();
		}
	});
	
	autoClosingAlert("div.alert", 2500);
});