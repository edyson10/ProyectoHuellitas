<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Huellita</title>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="img/icono.png" type="image/x-icon" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Font Icons -->	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" >
	<!-- Estilos -->
	<link href="css/estilos.css" rel="stylesheet"/>
		
	<!-- Fonts Nova Script -->
	<link href="https://fonts.googleapis.com/css?family=Nova+Script" rel="stylesheet">
	<!-- Fonts Permanent Marker -->
	<link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">  
	<link href="https://fonts.googleapis.com/css?family=Boogaloo|Patrick+Hand&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Acme|Boogaloo|Patrick+Hand&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilos.css">
	
	<!-- Google font Courgette -->
  	<link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet"> 
  	<!-- Acme -->
	<link href="https://fonts.googleapis.com/css?family=Acme|Anton&display=swap" rel="stylesheet">
</head>
<body>
	<!-- Menú nav start -->
	<nav class="navbar navbar-expand-md navbar-light navbar-light" style="background-color: #CC99FF;">
		<a class="" href="index.html"><img src="img/icono.png" alt="logo" style="width:40px;"></a> 
  		<a class="navbar-brand letra" href="index.jsp" style="">Huellitas</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
    		<ul class="navbar-nav letra-menu">
	      		<li class="nav-item">
	        		<a class="nav-link" href="index.jsp">Inicio</a>
	      		</li>
	      		<li class="nav-item">
	        		<li class="nav-item dropdown">
			        	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          	Adopta
			        	</a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
				          <a class="dropdown-item" href="#">¿Que desea saber?</a>
				          <a class="dropdown-item" href="#">Nuestros perros</a>
				          <a class="dropdown-item" href="Formularioadopcion.jsp">Formulario de adopción</a>
				        </div>
		    		</li>
	      			<li class="nav-item">
	        			<li class="nav-item dropdown">
		        		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          		Apadrina
		        		</a>
			        	<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			          		<a class="dropdown-item" href="#">¿Que desea saber?</a>
			          		<a class="dropdown-item" href="#">Nuestros perros</a>
			          		<a class="dropdown-item" href="Formularioapadrinar.jsp">Formulario de padrino</a>
			        	</div>
		    		</li> 
		    		<li class="nav-item">
	        			<a class="nav-link" href="donacion.jsp">Donaciones</a>
	      			</li>  
		    		<li class="nav-item">
	        			<a class="nav-link" href="contacto.jsp">Contacto</a>
	      			</li> 
    			</ul>
  			</div>
  			<!-- 
  			<div class="">
  				<ul class="navbar-nav"> 
					<li class="nav-item">
		  				<a class="nav-link js-scroll-trigger " data-toggle="modal" data-target="#exampleModalCenter" href="admin.jsp"><i class="fa fa-user" style="font-size:36px"></i>
		  				</a>
	  				</li>
  				</ul>
 	  		</div> 
 	  	 	-->	
	</nav>
	<!-- Menú nav end -->
	
	<!-- Footer -->
		<div class="footer">
			<div class="row">
				<div class="col-md-6">
					<p>Huellitas &copy; Todos los derechos reservados</p>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-2"></div>
						<div class="col-md-2"></div>
						<div class="col-md-2">
							<a class="fab" href="https://www.facebook.com/shadiaoc" target="_blank"><i style="font-size:1.5em; color: #d5d0d0;" class="fab fa-facebook"></i></a>
						</div>
						<div class="col-md-2">
							<a class="fab" href="https://www.facebook.com/AdriisQuijano" target="_blank"><i style="font-size:1.5em; color: #d5d0d0;" class="fab fa-twitter"></i></a>
						</div>
						<div class="col-md-2">
							<a class="fab" href="https://github.com/edyson10" target="_blank"><i style="font-size:1.5em; color: #d5d0d0;" class="fab fa-github"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	</body>
</html>