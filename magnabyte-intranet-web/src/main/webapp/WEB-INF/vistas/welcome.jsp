<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Bienvenido</title>
</head>
<body>
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide">
		<ol class="carousel-indicators">
	        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	        <li data-target="#myCarousel" data-slide-to="1"></li>
	        <li data-target="#myCarousel" data-slide-to="2"></li>
	    </ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="${pageContext.request.contextPath}/img/slide-01.jpg" alt="">
				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p class="lead">Cras justo odio, dapibus ac facilisis in,
							egestas eget quam. Donec id elit non mi porta gravida at eget
							metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-primary" href="#">Sign up today</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/img/slide-02.jpg" alt="">
				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p class="lead">Cras justo odio, dapibus ac facilisis in,
							egestas eget quam. Donec id elit non mi porta gravida at eget
							metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-primary" href="#">Learn more</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/img/slide-03.jpg" alt="">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p class="lead">Cras justo odio, dapibus ac facilisis in,
							egestas eget quam. Donec id elit non mi porta gravida at eget
							metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<a class="btn btn-primary" href="#">Browse gallery</a>
					</div>
				</div>
			</div>
		</div>
<!-- 		<p id="language" class="text-right"> -->
<%-- 			<span class="label label-info"><a href="?lang=es"><small><spring:message  --%>
<%-- 						code="espanol" /></small></a></span>  --%>
<%-- 			<span class="label label-info"><a href="?lang=en"><small><spring:message --%>
<%-- 						code="ingles" /></small></a></span> --%>
<!-- 		</p> -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
	</div>
	<!-- /.carousel -->

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="white-panel">
			<div class="row">
				<div class="col-md-4">
					<h2>Misión</h2>
					<p>Desarrollar Aplicaciones empresariales basadas en las mejores
						prácticas de negocios, proveyendo a los empresarios
						latinoamericanos con herramientas innovadoras y escalables que les
						ayuden a alcanzar sus objetivos.</p>
				</div>
				<div class="col-md-4">
					<h2>Visión</h2>
					<p>Seremos una organización dinámica, respetada por su capacidad
						y sus recursos profesionales. Debido a esto mantenemos excelentes y
						duraderas relaciones de negocios con nuestros clientes, nunca
						olvidamos que nuestro éxito está directamente ligado al suyo.</p>
				</div>
				<div class="col-md-4">
					<h2>Política de Calidad</h2>
					<p>Mantenemos y creamos soluciones de Software, planeando e
						implantando procesos entre todo nuestro personal y buscando áreas
						de oportunidad, mediante procesos de mejora continua.</p>
				</div>
			</div>
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="featurette">
			<img class="featurette-image pull-right thumbnail"
				src="${pageContext.request.contextPath}/img/satisfaccion_cliente.jpg" width="325" height="325">
			<h2 class="featurette-heading">
				Satisfacción Total <span class="muted">de nuestros Clientes</span>
			</h2>
			<p class="lead">Magnabyte está comprometida con la satisfacción
				total de nuestros clientes para lo cual ponemos un gran énfasis en
				escuchar y trabajar siempre en equipo con ellos, en cada desarrollo,
				instalación o actualización. Debido a esto mantenemos excelentes y
				duraderas relaciones de negocios con nuestros clientes. Nunca
				debemos olvidar que nuestro éxito está directamente ligado al suyo.</p>
		</div>

		<hr class="featurette-divider">

		<div class="featurette">
			<img class="featurette-image pull-left thumbnail"
				src="${pageContext.request.contextPath}/img/customer-service.jpg" width="325" height="325">
			<h2 class="featurette-heading">
				Servicio
			</h2>
			<p class="lead">Nosotros nos enfocamos en brindar un excelente
				servicio a nuestros clientes. Cuando decimos servicio, no nos
				referimos únicamente a instalar y parametrizar software, si no que
				nos preocupamos por que nuestros clientes trabajen siempre con las
				herramientas empresariales y las prácticas de negocios más adecuadas
				a su situación. Para esto contamos con un grupo de consultores
				especializados en las diferentes áreas que componen una empresa.</p>
		</div>

		<hr class="featurette-divider">

		<div class="featurette">
			<img class="featurette-image pull-right thumbnail"
				src="${pageContext.request.contextPath}/img/employees.jpg" width="325" height="325">
			<h2 class="featurette-heading">
				<span class="muted">Empleados</span>
			</h2>
			<p class="lead">En Magnabyte nos preciamos de contar con gente
				inteligente, trabajadora e íntegra. Nuestros empleados son el
				recurso más importante que tenemos, por tanto nos preocupamos por
				que su desarrollo profesional y personal vayan siempre de la mano.
				Trabajamos mucho y también nos divertimos.</p>
		</div>

		<hr class="featurette-divider">
		
		<div class="featurette">
			<img class="featurette-image pull-left thumbnail"
				src="${pageContext.request.contextPath}/img/socios.jpg" width="325" height="325">
			<h2 class="featurette-heading">
				Socios e <span class="muted">Inversionistas</span>
			</h2>
			<p class="lead">Magnabyte no podría existir sin el gran apoyo de
				sus socios e inversionistas, por lo que estamos comprometidos a
				brindarles constantemente un atractivo retorno a su inversión.</p>
		</div>

		<hr class="featurette-divider">

		<div class="featurette">
			<img class="featurette-image pull-right thumbnail"
				src="${pageContext.request.contextPath}/img/crecimiento.jpg" width="325" height="325">
			<h2 class="featurette-heading">
				Crecimiento <span class="muted">Sostenido</span>
			</h2>
			<p class="lead">La industria del software, a nivel mundial, esta
				caracterizada por ciclos de crecimiento y de contracción del mercado
				sumamente marcados. Nosotros creemos que aún en estas condiciones es
				necesario mantener un crecimiento sostenido. Para lograrlo nos
				aseguramos de contar con productos que evolucionan constantemente
				cubriendo las nuevas necesidades de la industria latinoamericana.</p>
		</div>

		<hr class="featurette-divider">
		
		<div class="featurette">
			<img class="featurette-image pull-left thumbnail"
				src="${pageContext.request.contextPath}/img/comunidad.jpg" width="325" height="325">
			<h2 class="featurette-heading">
				Comunidad
			</h2>
			<p class="lead">Nosotros creemos que es muy importante apoyar el
				desarrollo de la comunidad que nos rodea, así como crear una
				conciencia social en nuestros empleados. Por lo tanto apoyamos a
				sociedades no lucrativas enfocadas principalmente a la educación,
				así como a las iniciativas sociales de nuestros empleados y
				clientes.</p>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->
	</div>
	<!-- /.container -->
</body>
</html>