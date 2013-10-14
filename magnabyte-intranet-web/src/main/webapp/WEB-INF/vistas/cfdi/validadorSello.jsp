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
			<div class="white-panel">
				<div class="row">
					<div class="col-md-12">
						<h2>Validador Sello CFDI</h2>
						<p>
							<strong>Instrucciones: </strong>Carga el archivo
							<code>.key</code>
							y
							<code>.cer</code>
							e ingresa la contrase�a
						</p>
						<div class="well form500">
							<form:form
								action="${pageContext.request.contextPath}/intranet/cfdi/validar"
								method="post" enctype="multipart/form-data" modelAttribute="selloDigital" role="form"
								id="formCfdiValidador">
								<div class="form-group">
									<label for="cerFile">Certificado</label> <input
										type="file" id="cerFile" name="cerFile">
									<p class="help-block">Selecciona el certificado.</p>
								</div>
								<div class="form-group">
									<label for="keyFile">Llave</label> <input type="file"
										id="keyFile" name="keyFile">
									<p class="help-block">Selecciona la llave.</p>
								</div>
								<div class="form-group">
									<label for="password">Contrase�a</label> <input
										type="text" class="form-control" id="password" name="password"
										placeholder="Ingresa la contrase�a...">
								</div>
								<button type="submit" class="btn btn-primary">Validar</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>