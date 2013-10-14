$(document).ready(function() {
	$("div.alert").each(function() {
		if($(this).find('#message').text().trim() == "") {
			$(this).alert("close");
		} else {
			$(this).alert();
		}
	});
});