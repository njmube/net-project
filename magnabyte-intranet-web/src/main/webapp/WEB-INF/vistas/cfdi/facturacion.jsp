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
					Genera tu factura electrónica <span class="label label-primary">@</span>
				</h2>
				<br>
				<p>
					<strong>Instrucciones: </strong>Para generar tu factura electrónica
					ingresa los siguientes datos. Es importante que cuente con una
					dirección de correo valida para el envío de la factura.
				</p>
				<br>
				<div class="well col-md-6 col-md-offset-3">
					<form
						action="${pageContext.request.contextPath}/intranet/cfdi/datosCliente"
						role="form" class="form-horizontal">
						<div class="form-group">
							<label for="folio" class="col-lg-4 control-label">Folio
								del ticket:</label>
							<div class="col-lg-8">
								<input id="folio" type="number" class="form-control"
									placeholder="#">
							</div>
						</div>
						<div class="form-group">
							<label for="fecha" class="col-lg-4 control-label">Fecha
								del ticket:</label>
							<div class="col-lg-8">
								<input id="fecha" type="date" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="total" class="col-lg-4 control-label">Total
								del ticket:</label>
							<div class="col-lg-8">
								<input id="total" type="text" class="form-control"
									placeholder="$">
							</div>
						</div>
						<div class="form-group">
							<label for="sucursal" class="col-lg-4 control-label">Sucursal:</label>
							<div class="col-lg-8">
								<select class="form-control">
									<option>Sucursal 1</option>
									<option>Sucursal 2</option>
									<option>Sucursal 3</option>
									<option>Sucursal 4</option>
								</select>
							</div>
						</div>
						<hr>
						<div class="form-group">
							<div class="col-lg-offset-8 col-lg-4">
								<div>
									<button id="generar" type="submit" class="btn btn-warning">
										Validar Ticket</button>
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