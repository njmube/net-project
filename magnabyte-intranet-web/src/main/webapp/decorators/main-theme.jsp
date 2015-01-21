<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>. : Intranet Magnabyte - <decorator:title default="Main" />
	: .
</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/sidebar.css"/>">
<script src="<c:url value="/resources/js/jquery/jquery-1.10.2.min.js"/>"></script>
<decorator:head />
</head>
<body>
	<div class="wrap">
		<!-- HEADER -->
		<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
			<div class="container">
				<button id="menuBtn" type="button" class="btn btn-default navbar-btn navbar-left">
					<i class="fa fa-bars"></i>
				</button>
				<div class="navbar-brand">
					<a class="" href="<c:url value="/welcome"/>"> 
						<img class="imgLogo" alt="Logo" src="<c:url value="/resources/img/magnabyte_logo_gris.png"/>"> 
					</a>
				</div>
				<div class="navbar-text navbar-right app-title">
					<strong>Intranet Corporativa</strong> <i class="fa fa-globe"></i>
				</div>
			</div>
		</div>
		<div id="sidebarCollapse" class="sidebar">
			<ul class="nav nav-sidebar">
				<li><a href="<c:url value="/welcome"/>"><i class="fa fa-home"></i> Inicio</a></li>
				<li><a href="<c:url value="/directorio/showDirectorio"/>"><i class="fa fa-phone-square"></i> Directorio</a></li>
				<li><a href="<c:url value="/cfdi/validadorSello"/>"><i class="fa fa-check-square"></i> Validador CSD</a></li>
				<li><a href="<c:url value="/cfdi/facturacion"/>"><i class="fa fa-file-code-o"></i> Facturación</a></li>
			</ul>
			<hr>
			<ul class="nav nav-sidebar">
				<li><a href="#about"><i class="fa fa-question-circle"></i> Acerca de</a></li>
			</ul>
		</div>
		<!-- CONTENT -->
		<div class="content">
			<decorator:body />
		</div>
	</div>

	<!-- FOOTER -->
	<div id="footer" class="footer">
		<div class="row">
			<p class="credit">
				Magnabyte S.A de C.V. &reg; 2015
			</p>
			<p class="credit">
				<a href="#">Acerca de <i class="fa fa-question-circle"></i></a> &middot; <a
					href="#"> Ir arriba <i class="fa fa-chevron-circle-up"></i></a>
			</p>
		</div>
	</div>
	<script src="<c:url value="/resources/js/main/main.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery/jquery.dataTables.min.js"/>"></script>
	<script src="<c:url value="/resources/js/vendor/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/datatable/datatable.js"/>"></script>
	<script src="<c:url value="/resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"/>"></script>
</body>
</html>
