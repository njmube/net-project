<html>
<head>
<title>Facturación en Línea</title>
<script src="${pageContext.request.contextPath}/js/cfdi/facturacion.js"></script>
</head>
<body>
	<div class="container marketing">
		<div class="main-content">
			<div class="white-panel row">
				<h2>
					Datos para facturar <span class="label label-primary"><span
						class="glyphicon glyphicon-list-alt"></span></span>
				</h2>
				<br>
				<p>
					<strong>Instrucciones: </strong>Proporciona el mail a donde será
					enviado el PDF.
				</p>
				<br>
				<div class="well col-md-6 col-md-offset-3">
					<form
						action="${pageContext.request.contextPath}/intranet/cfdi/successFactura"
						role="form" class="form-horizontal">
						<div class="form-group">
							<label for="mail" class="col-lg-4 control-label">E-mail</label>
							<div class="col-lg-8">
								<input id="mail" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="mailconf" class="col-lg-4 control-label">Confirmar E-mail:</label>
							<div class="col-lg-8">
								<input id="mailconf" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<hr>
						<div class="form-group">
							<div class="col-lg-offset-8 col-lg-4">
								<div>
									<button id="generar" type="submit" class="btn btn-warning">
										Generar Factura</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>