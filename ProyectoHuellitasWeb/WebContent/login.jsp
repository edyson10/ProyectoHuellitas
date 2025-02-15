<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login</title>
  <link rel="shortcut icon" href="img/icono.png" type="image/x-icon" />
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">
  
  <link rel="stylesheet" type="text/css" href="css/estilos.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <!-- Google font Courgette -->
  <link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet"> 
</head>
<body >
	<div class="login-box">
 		<div class="login-logo letra-login">
   			<a href="login.jsp"><b>Admin  </b> Huellitas</a>
 		</div>
 		<!-- /.login-logo -->
		<div class="login-box-body">
  			<form action="admin.jsp" method="post">
    			<div class="form-group has-feedback">
      				<input type="email" class="form-control" placeholder="Correo electronico">
      				<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
    			</div>
			    <div class="form-group has-feedback">
			    	<input type="password" class="form-control" placeholder="Contraseña">
			    	<span class="glyphicon glyphicon-lock form-control-feedback"></span>
			    </div>
    			<div class="row">
      				<div class="col-xs-8">
      				</div>
      				<!-- /.col -->
					<div class="col-xs-4">
  						<button type="submit" class="btn btn-primary btn-block btn-flat">Entrar</butto>
					</div>
					<!-- /.col -->
  				</div>
			</form>
			<hr>
			<div class="letra-login" style="font-size:1em;" align="center">
				<a href="#">¿Has olvidado su contraseña?</a><br>
			</div>
  		</div>
	</div>

	<!-- jQuery 3 -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function () {
  			$('input').iCheck({
    			checkboxClass: 'icheckbox_square-blue',
    			radioClass: 'iradio_square-blue',
    			increaseArea: '20%' /* optional */
  			});
		});
	</script>
</body>
</html>