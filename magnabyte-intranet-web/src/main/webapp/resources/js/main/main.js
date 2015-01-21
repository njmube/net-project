$(function() {
	$('.nav li').find('a[href="' + location.pathname + '"]').closest('li').addClass('active');

	$("#menuBtn").on("click", function() {
		var sidebar = $('.sidebar');
		if (sidebar.hasClass('visible')) {
			sidebar.animate({
				"left" : "-1000px"
			}, "fast").removeClass('visible');
		} else {
			sidebar.animate({
				"left" : "0px"
			}, "fast").addClass('visible');
		}
	});
});