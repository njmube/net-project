<html>
<head>
<title>Facturaci�n en L�nea</title>
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
					<strong>Instrucciones: </strong>Proporciona los datos fiscales con
					los cu�les se generar� la factura.
				</p>
				<br>
				<div class="well col-md-6 col-md-offset-3">
					<form action="${pageContext.request.contextPath}/intranet/cfdi/mailCliente" role="form" class="form-horizontal">
						<div class="form-group">
							<label for="rfc" class="col-lg-4 control-label">RFC:</label>
							<div class="col-lg-8">
								<input id="rfc" type="text" class="form-control" placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="rsocial" class="col-lg-4 control-label">Raz�n
								Social:</label>
							<div class="col-lg-8">
								<input id="rsocial" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="calle" class="col-lg-4 control-label">Calle:</label>
							<div class="col-lg-8">
								<input id="calle" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="next" class="col-lg-4 control-label">Num.
								Ext:</label>
							<div class="col-lg-2">
								<input id="next" type="text" class="form-control"
									placeholder="">
							</div>
							<label for="nint" class="col-lg-3 control-label">Num.
								Ext:</label>
							<div class="col-lg-2">
								<input id="nint" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="col" class="col-lg-4 control-label">Colonia:</label>
							<div class="col-lg-8">
								<input id="col" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="cod" class="col-lg-4 control-label">C�digo Postal:</label>
							<div class="col-lg-8">
								<input id="cod" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="city" class="col-lg-4 control-label">Ciudad:</label>
							<div class="col-lg-8">
								<input id="city" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="del" class="col-lg-4 control-label">Municipio/Delegaci�n:</label>
							<div class="col-lg-8">
								<input id="del" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="edo" class="col-lg-4 control-label">Estado:</label>
							<div class="col-lg-8">
								<input id="edo" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="pais" class="col-lg-4 control-label">Pa�s:</label>
							<div class="col-lg-8">
								<input id="pais" type="text" class="form-control"
									placeholder="">
							</div>
						</div>
						<hr>
						<div class="form-group">
							<div class="col-lg-offset-8 col-lg-4">
								<div>
									<button id="generar" type="submit" class="btn btn-warning">
										Continuar</button>
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