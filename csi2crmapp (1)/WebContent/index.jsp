<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mi Primer Formulario</title>
<script type="text/javascript">
function compruebayenvia() {
	datos=document.iniciosesion;
	if (datos.usuario.value == '' ||
			datos.pass.value == '')
		alert ('¡Tiene que rellenar todos los campos!');
	else datos.submit();
}
function compruebanums(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (keycode < 48 || keycode > 57) //Rango ASCII de números
	{
		if (keycode != 8 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir números ');
			return false;
		}
		else return true;
	}
	else return true;
}
function compruebaalfan(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (( keycode < 48 || keycode > 57 ) && ( keycode < 64 || keycode > 90 ) && ( keycode < 97 || keycode > 122 )) //Rango ASCII de números y letras
	{
		if (keycode != 8 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir letras y números ');
			return false;
		}
		else return true;
	}
	else return true;
}

</script>
<link rel="stylesheet" type="text/css" href="./estilos/estiloindex.css"
	media="screen" />

</head>
<body>

	<!--  	<input type="text" name="usuario"
		onkeypress="return compruebaalfan(this,event);" maxlength="10"
		class="form-control" placeholder="Usuario" id="username">
	<input type="password" name="pass"
		onkeypress="return compruebaalfan(this,event);" maxlength="8" value=""
		 placeholder="Contraseña" id="password"
		type="password">
	<br></br>
	<input name="send" class="btn btn-lg btn-success btn-block"
		type="submit" id="login" value="Login »" onclick="compruebayenvia();" />-->
	<div class="login">
		<h1>Inicar Sesión</h1>
		<form action="bienvenido.jsp" method="post" name="iniciosesion">
			<input type="text" name="usuario"
				onkeypress="return compruebaalfan(this,event);" maxlength="10"
				class="form-control" placeholder="Usuario" id="username" /> 
				<input
				 name="pass" type="password" placeholder="Contraseña" id="password"
				required="required" onkeypress="return compruebaalfan(this,event);" />
			<button type="submit" id="login"
				class="btn btn-primary btn-block btn-large"
				onclick="compruebayenvia();">Entrar</button>
		</form>
		<br>
		<script async
			src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- login bootsnipp -->
		<ins class="adsbygoogle" style="display: block"
			data-ad-client="ca-pub-9155049400353686" data-ad-slot="9589048256"
			data-ad-format="auto"></ins>

	</div>
</body>
</html>




























