<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Validador Sello CFDI</title>
</head>
<body>
	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<div class="main-content">
			<!-- Three columns of text below the carousel -->
			<div class="white-panel row">
				<h2>Validador Sello CFDI</h2>
				<br>
				<p>
					<strong>Instrucciones: </strong>Carga el archivo
					<code>.key</code>
					y
					<code>.cer</code>
					e ingresa la contraseña
				</p>
				<br>
				<div class="col-md-6 col-md-offset-3">
					<div class="alert alert-${typealert}">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<div id="message">
							<strong>${message}</strong>
						</div>
					</div>
				</div>
				<div class="well col-md-6 col-md-offset-3">
				<c:url var="urlValidation" value="/cfdi/validar"/>
					<form:form
						action="${urlValidation}"
						method="post" enctype="multipart/form-data"
						modelAttribute="selloDigital" role="form" id="formCfdiValidador">
						<div class="form-group">
							<label for="cerFile">Certificado</label> <input type="file"
								id="cerFile" name="cerFile" accept=".cer">
							<p class="help-block">Selecciona el certificado.</p>
						</div>
						<div class="form-group">
							<label for="keyFile">Llave</label> <input type="file"
								id="keyFile" name="keyFile" accept=".key">
							<p class="help-block">Selecciona la llave.</p>
						</div>
						<div class="row">
							<div class="form-group col-lg-6">
								<label for="password">Contraseña</label> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="Ingresa la contraseña...">
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Validar</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	
	<script src="<c:url value="/resources/js/cfdi/cfdi.js"/>"></script>
</body>
</html>