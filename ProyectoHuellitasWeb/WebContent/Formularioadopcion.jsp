<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body background="img/fondo7.jpg">
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
                          <a class="dropdown-item" href="#">¿Qué desea saber?</a>
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
<!--------------------------
            Formulario Adopción
        --------------------------->
		<div class="container">
		<c:set var="alerta" scope="request" value = "${requestScope.msgResultado}"/>
		<c:if test="${alerta!=null}">  
			<div class="alert alert-success alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		  		<c:out value="${alerta}"/>
			</div>
		</c:if>
      	<div class="box-header with-border" align="center">
            <legend>  
              <h3> Registro Perrito </h3>
            </legend>
          </div>
          <form>
            <div class="row">
              <div class="col-md-1">
              </div>
              <div class="col-md-5">
                <div class="form-group">
                  <label for="exampleInputEmail1">Fecha Actual</label>
                  <input type="date" class="form-control" id="ejemploImputNombre" placeholder="Fecha Actual">
                </div>
                
                <jsp:useBean id="fDao" class="model.FormularioAdopcionDAO" scope="request"></jsp:useBean>
                <div class="form-group">
                  <label for="exampleInputPassword1">Ciudad</label>
                  <select id="ciudad" name="ciudad" class="form-control select2" style="width: 100%;">
                    <c:forEach var="ciudades" items="${cDao.list()}">
							<option value="${ciudades.idCiudad}">${ciudades.nombreCiudad}</option>
						</c:forEach>
                  </select>
                </div>

                <div class="form-group-">
                  <label for="exampleInputEmail1">Nombre</label>
                  <input type="nombre" class="form-control" id="ejemploImputNombre" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Cédula</label>
                  <input type="edad" class="form-control" id="exampleInputPassword1" placeholder="edad">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Fecha de Nacimiento</label>
                  <input type="fechaNacimiento" class="form-control" id="ejemploImputNombre" placeholder="dd/mm/aaaa">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Barrio de Residencia</label>
                  <input type="barrio" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Dirección de Residencia</label>
                  <input type="direccion" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Email</label>
                  <input type="email" class="form-control" id="exampleInputPassword1" placeholder="ejemplo@gmail.com">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Teléfono Fijo</label>
                  <input type="telefonoFijo" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Teléfono Celular</label>
                  <input type="telefonoCelular" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Profesión</label>
                  <input type="profesion" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Trabajo Actual</label>
                  <input type="trabajoActual" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>
             </div>

             <div class="col-md-5">   
              <div class="form-group">
                  <label for="exampleInputPassword1">¿Cuántos adultos viven en tu casa?</label >
                  <input type="P1" class="form-control" id="exampleInputPassword1" placeholder=" "  >
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Cuántos ninos viven en tu casa?</label>
                  <input type="P2" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Cuántos niños viven en tu casa?</label>
                  <input type="P3" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Edad de los ninos?</label>
                  <input type="P4" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Nombre del perro en el que estas interesado?</label>
                  <input type="P5" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿En qué tipo de perro estas interesado?</label>
                  <input type="P6" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Has tenido un perro antes?</label>
                  <input type="P7" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Por qué quieres adoptar un perro?</label>
                  <input type="P8" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Por qué quieres adoptar un perro?</label>
                  <input type="P9" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Sabes la responsabilidad?</label>
                  <input type="P10" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Cuáles seran las causas por las que ya no tendrias a tu perro?</label>
                  <input type="P11" class="form-control" id="exampleInputPassword1" placeholder=" ">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">¿Permitirias que uno de nuestros voluntarios fuera a tu casa antes y despues de la adopción?</label>
                  <input type="P11" class="form-control" id="exampleInputPassword1" placeholder=" ">
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
        <div class="col-md-4">
          <div class="row">
            <div class="col-md-4">
              <a class="fab" href="https://www.facebook.com/shadiaoc" target="_blank"><i style="font-size:2em; color: #d5d0d0;" class="fab fa-facebook"></i></a>
            </div>
            <div class="col-md-4">
              <a class="fab" href="https://www.facebook.com/AdriisQuijano" target="_blank"><i style="font-size:2em; color: #d5d0d0;" class="fab fa-twitter"></i></a>
            </div>
            <div class="col-md-4">
              <a class="fab" href="https://github.com/edyson10" target="_blank"><i style="font-size:2em; color: #d5d0d0;" class="fab fa-github"></i></a>
            </div>
          </div>
        </div>
        <div class="col-md-2"></div>
      </div>
    </div>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>