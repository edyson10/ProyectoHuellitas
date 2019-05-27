<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Huellitas</title>
		<meta charset="utf-8">
		<link rel="shortcut icon" href="img/icono.png" type="image/x-icon" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Font Icons -->	
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" >
		<!-- Estilos -->
		<link href="css/estilos.css" rel="stylesheet"></link>
		
		<!-- Fonts Nova Script -->
		<link href="https://fonts.googleapis.com/css?family=Nova+Script" rel="stylesheet">
		<!-- Fonts Permanent Marker -->
		<link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">  
		<link href="https://fonts.googleapis.com/css?family=Boogaloo|Patrick+Hand&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Acme|Boogaloo|Patrick+Hand&display=swap" rel="stylesheet">

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body background="img/fondo6.jpg">
        <nav class="navbar navbar-expand-md navbar-light navbar-light " style="background-color: #CC99FF;">
			<a class="" href="index.html"><img src="img/icono.png" alt="logo" style="width:40px;"></a> 
		  	<a class="navbar-brand letra" href="index.html" style="">Huellitas</a>
		  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		    	<span class="navbar-toggler-icon"></span>
		  	</button>
		  	<div class="collapse navbar-collapse " id="collapsibleNavbar">
		    	<ul class="navbar-nav">
			      	<li class="nav-item">
			        	<a class="nav-link" href="index.html">Inicio</a>
			      	</li>
			      	<li class="nav-item">
			        	<li class="nav-item dropdown">
				        	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          Adopta
				        	</a>
					        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					          <a class="dropdown-item" href="#">¿Que desea saber?</a>
					          <a class="dropdown-item" href="#">Nuestros perros</a>
					          <a class="dropdown-item" href="adopcion.html">Formulario de adopción</a>
					        </div>
				    	</li>
			      	</li>
			      	<li class="nav-item">
			        	<li class="nav-item dropdown">
				        	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          Apadrina
				        	</a>
					        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					          <a class="dropdown-item" href="#">¿Que desea saber?</a>
					          <a class="dropdown-item" href="#">Nuestros perros</a>
					          <a class="dropdown-item" href="#">Formulario de padrino</a>
					        </div>
				    	</li>
			      	</li>    
		    	</ul>
		  	</div>
		  	<div class="justify-content-center">
		  		<ul class="navbar-nav"> 
					<li class="nav-item">
				  		<a class="nav-link js-scroll-trigger " data-toggle="modal" data-target="#exampleModalCenter" href="admin.jsp"><i class="fa fa-user" style="font-size:36px"></i>
				  		</a>
			  		</li>
		  		</ul>
	  	  	</div>  
		</nav>

		<!---- Corrousel -->
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		 	<ol class="carousel-indicators">
		    	<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    	<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    	<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		    	<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
	        	<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
	        	<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>	
		  	</ol>
  			<div class="carousel-inner">
	    		<div class="carousel-item active">
	      			<img src="img/img1.jpg"  class="d-block w-100" alt="">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="letra-carrousel">Principito</h5>
						<p>Se cree la verga pinche perro. Estoy que lo quiebro por picado. Ojo con eso manito.</p>
					</div>
	    		</div>
			    <div class="carousel-item">
			      	<img src="img/img2.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="letra-carrousel">Los 3 mosqueteros</h5>
						<p>Son my unidos desde que nacieron y si se les separa se ponen tristes.</p>
					</div>
			    </div>
	    		<div class="carousel-item">
	      			<img src="img/img3.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="letra-carrousel">El loco Alvaro</h5>
						<p>El perro más juguetón y cariñoso. </p>
					</div>
	    		</div>
	    		<div class="carousel-item">
	      			<img src="img/img4.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="letra-carrousel">El loco Alvaro</h5>
						<p>El perro más juguetón y cariñoso. </p>
					</div>
	    		</div>
	    		<div class="carousel-item">
	      			<img src="img/img5.jpg" class="d-block w-100" alt="...">
				    <div class="carousel-caption d-none d-md-block">
				    	<h5 class="letra-carrousel">El loco Alvaro</h5>
				    	<p>El perro más juguetón y cariñoso. </p>
				    </div>
	    		</div>
	    		<div class="carousel-item">
	      			<img src="img/img7.jpg" class="d-block w-100" alt="...">
			        <div class="carousel-caption d-none d-md-block">
			        	<h5 class="letra-carrousel">El loco Alvaro</h5>
			        	<p>El perro más juguetón y cariñoso. </p>
			        </div>
	    		</div>
  			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			</a>
  			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    			<span class="carousel-control-next-icon" aria-hidden="true"></span>
    			<span class="sr-only">Next</span>
  			</a>
		</div>
		<!---- Corrousel end-->
		<br><br><br><br><br><br>
		<div class="bottom">
			<div align="center" >
				<button type="button" class="btn btn-secondary btn-lg" style="background-color: #CC66CC;" >Cachorros</button>
				<button type="button" class="btn btn-secondary btn-lg" style="background-color: #CC66CC;">Adultos</button>
				<button type="button" class="btn btn-secondary btn-lg" style="background-color: #CC66CC;">Viejitos </button>
			</div>
		</div>
		<br>		
		<section>
			<h3 class="letra" style="font-size:2em;" align="center">Protagonistas de la semana</h3>
		</section>
		<br>		
		<!---espacios del contenedor completo--->
		<div class="container">
			<div class= "row">
		    	<div class="col-md-3" >
					<div class="card tarjeta " style="width: 15rem;">
					  	<img class="card-img-top" src="img/img__1.jpg" alt="Card image cap">
					  	<div class="card-body">
						    <h5 class="card-title">ALASKA</h5>
						    <p class="card-text">Juciosa , linda y Amigable</p>
						    <a href="perro.html" class="btn btn-primary" style="background-color: #CC66CC;">ver más</a>
		  				</div>
					</div>
			    </div>
			    <div class="col-md-3">
			      	<div class="card tarjeta " style="width: 15rem;">
					  	<img class="card-img-top" src="img/img__2.jpg" alt="Card image cap">
					  	<div class="card-body">
						    <h5 class="card-title">Bruno</h5>
						    <p class="card-text">Gloton , Amoroso</p>
						    <a href="#" class="btn btn-primary" style="background-color: #CC66CC;">Ver más</a>
		  				</div>
					</div>
			    </div>
			    <div class="col-md-3">
			     	<div class="card tarjeta" style="width: 15rem;">
					  	<img class="card-img-top" src="img/img__3.jpg" alt="Card image cap">
					  	<div class="card-body">
						    <h5 class="card-title">perros</h5>
						    <p class="card-text">los perros lindos</p>
						    <a href="#" class="btn btn-primary" style="background-color: #CC66CC;">Ver más</a>
		  				</div>
					</div>
			    </div>
				<div class="col-md-3">
					<div class="card tarjeta" style="width: 15rem;"  >
					  	<img class="card-img-top" src="img/img__4.jpg" alt="Card image cap">
					  	<div class="card-body" >
						    <h5 class="card-title">perros</h5>
						    <p class="card-text">los perros lindos</p>
						    <a href="" class="btn btn-primary " style="background-color: #CC66CC;">Ver más</a> 
		  				</div>
					</div>
			    </div>
			</div>
		</div>
		<!-- Modal login-->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
		      	<div class="modal-content">
		        	<div class="modal-header">
		          		<div style="text-align: center;">
		            		<h5 class="modal-title" id="exampleModalLongTitle">Iniciar Sesi&oacute;n</h5>
		          		</div>
		          		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		            		<span aria-hidden="true">&times;</span>
		          		</button>
		        	</div>
			        <div class="modal-body">
			          	<div class="global-container">
			            	<div class="card login-form">
			              		<div class="card-body">
			                		<div class="card-text">
			                  		<!--
			                  		<div class="alert alert-danger alert-dismissible fade show" role="alert">Incorrect username or password.</div> -->
			                  			<form>
			                    		<!-- to error: add class "has-danger" -->
			                    			<div class="form-group">
			                      				<label for="exampleInputEmail1">Correo</label>
			                      				<input type="email" class="form-control form-control-sm" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su correo" required>
			                    			</div>
			                    			<div class="form-group">
			                      				<label for="exampleInputPassword1">Contraseña</label>
			                      				<a href="#" style="float:right;font-size:12px;">¿Se te olvidó tu contraseña?</a>
			                      				<input type="password" class="form-control form-control-sm" id="exampleInputPassword1" placeholder="Ingrese su contraseña" required>
			                    			</div>
			                    			<button type="submit" class="btn btn-primary btn-block">Entrar</button>
			                  			</form>
			                		</div>
			              		</div>
			            	</div>
			          	</div>
			        </div>
		      	</div>
		    </div>
	  	</div>
		
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
		</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>