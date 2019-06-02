<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
		<title>Huellitas</title>
		<meta charset="utf-8">
		<link rel="shortcut icon" href="img/icono.png" type="image/x-icon" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
		<!-- Google font Courgette -->
  		<link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet"> 
  		<!-- Acme -->
		<link href="https://fonts.googleapis.com/css?family=Acme|Anton&display=swap" rel="stylesheet">
</head>
<body background="img/fondo7.jpg">
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
	
		<!--------------------------
            Formulario Adopción
        --------------------------->
		<div class="container">
		<c:set var="alerta" scope="request" value = "${requestScope.msgResultado}"/>
		<c:if test="${alerta!=null}">  
			<div class="alert alert-success alert-dismissible" role="alert" style="width:100%;">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		  		<c:out value="${alerta}"/>
			</div>
		</c:if>
      	<div class="box-header with-border" align="center">
              <h3 class="letra-login"> Registro Perrito </h3>
          </div>
          <form action="FormularioAdopcion" method="post">
            <div class="row">
              <div class="col-md-1">
              </div>
              <div class="col-md-5">
              	<div class="form-group">
                  <label for="exampleInputEmail1">Nombre</label>
                  <input type="text" name="nombre" class="form-control" id="ejemploImputNombre" placeholder="Escriba su nombre" required>
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Apellido</label>
                  <input type="text" name="apellido" class="form-control" id="ejemploImputNombre" placeholder="Escriba su apellido" required>
                </div>
                
                <div class="form-group">
                  <label for="exampleInputPassword1">Cédula</label>
                  <input type="number" name="cedula" class="form-control" id="exampleInputPassword1" placeholder="Cedula" required>
                </div>
                
                <jsp:useBean id="cDao" class="model.CiudadDAO" scope="request"></jsp:useBean>
                <div class="form-group">
                  <label for="exampleInputPassword1">Ciudad</label>
                  <select id="ciudad" name="ciudad" class="form-control select2" style="width: 100%;">
                    <c:forEach var="ciudades" items="${cDao.list()}">
							<option value="${ciudades.idCiudad}">${ciudades.nombreCiudad}</option>
						</c:forEach>
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Fecha de Nacimiento</label>
                  <input type="date" name="fechaNac" class="form-control" id="ejemploImputNombre" placeholder="dd/mm/aaaa" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Barrio de Residencia</label>
                  <input type="text" name="barrio" class="form-control" id="exampleInputPassword1" placeholder="Escriba el barrio de residencia" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Dirección de Residencia</label>
                  <input type="text" name="direccion" class="form-control" id="exampleInputPassword1" placeholder="Escriba la direccion de residencia" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Teléfono Fijo</label>
                  <input type="number" name="fijo" class="form-control" id="exampleInputPassword1" placeholder="Teléfono" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Teléfono Celular</label>
                  <input type="number" name="celular" class="form-control" id="exampleInputPassword1" placeholder="Número de celular" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Profesión</label>
                  <input type="text" name="profesion" class="form-control" id="exampleInputPassword1" placeholder="Escriba su profesión" required>
                </div>
             </div>

             <div class="col-md-5">  
             	<div class="form-group">
                  <label for="exampleInputPassword1">Trabajo Actual</label>
                  <input type="text" name="trabajo" class="form-control" id="exampleInputPassword1" placeholder="Escriba a que se dedica" required>
                </div>
                 
              	<div class="form-group">
                  <label for="exampleInputPassword1">¿Cuántos adultos viven en tu casa?</label >
                  <input type="number" name="adultos" class="form-control" id="exampleInputPassword1" placeholder="Adultos" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Cuántos niños viven en tu casa?</label>
                  <input type="number" name="ninos" class="form-control" id="exampleInputPassword1" placeholder="Niños" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Edad de los ninos?</label>
                  <input type="number" name="edades" class="form-control" id="exampleInputPassword1" placeholder="Edades" required>
                </div>

                <jsp:useBean id="pDao" class="model.PerroDAO" scope="request"></jsp:useBean>
                <div class="form-group">
                  <label for="exampleInputPassword1">Perro</label>
                  <select id="perro" name="perro" class="form-control select2" style="width: 100%;">
                    <c:forEach var="perros" items="${pDao.list()}">
							<option value="${perros.nombre}">${perros.nombre}</option>
						</c:forEach>
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿En qué tipo de perro estas interesado?</label>
                  <input type="text" name="tipoperro" class="form-control" id="exampleInputPassword1" placeholder="Tipo de perro" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Has tenido un perro antes?</label>
                  <select id="perroAntes" name="perroAntes" class="form-control select2" style="width: 100%;">
                  	<option value="Si">Si</option>
                  	<option value=No">No</option>
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Por qué quieres adoptar un perro?</label>
                  <input type="text" name="porqueadoptar" class="form-control" id="exampleInputPassword1" placeholder="¿Por qué?" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Sabes la responsabilidad?</label>
                  <select id="responsabilidad" name="responsabilidad" class="form-control select2" style="width: 100%;">
                  	<option value="Si">Si</option>
                  	<option value=No">No</option>
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Permitirías que uno de nuestros voluntarios fuera a tu casa antes y después de la adopción?</label>
                  <select id="visita" name="visita" class="form-control select2" style="width: 100%;">
                  	<option value="Si">Si</option>
                  	<option value=No">No</option>
                  </select>
                </div>
              </div>
              <div class="col-md-1">
              </div>
          </div> 
          
          <div class="row">
            <div class="col-md-12" align="center">
               <div class="box-footer">
                  <button type="submit" class="btn btn-primary">Enviar formulario</button>
                </div>
            </div>
          </div>                                  
        </form>
      </div>
    </div>
	 
    <!-- Footer -->
    <div class="footer">
      <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
          <p>Huellitas &copy; Todos los derechos reservados</p>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-3">
          <div class="row" style="font-size:1.5em; ">
          <div class="col-md-2"></div>
            <div class="col-md-2">
              <a class="fab" href="https://www.facebook.com/shadiaoc" target="_blank"><i style="color: #d5d0d0;" class="fab fa-facebook"></i></a>
            </div>
            <div class="col-md-2">
              <a class="fab" href="https://www.facebook.com/AdriisQuijano" target="_blank" ><i style="color: #d5d0d0;" class="fab fa-twitter"></i></a>
            </div>
            <div class="col-md-2">
              <a class="fab" href="https://github.com/edyson10" target="_blank"><i style=" color: #d5d0d0;" class="fab fa-github"></i></a>
            </div>
            <div class="col-md-2"></div>
          </div>
        </div>
      </div>
    </div>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>