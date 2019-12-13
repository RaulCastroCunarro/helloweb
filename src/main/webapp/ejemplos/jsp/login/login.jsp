
<%
	String titulo = "Login";
	String estilo = "/helloweb/css/login.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<main>	
	<script src="/helloweb/js/login.js"></script>
	<div class="login">
		<h1>Identificarse</h1>
		<form action="/helloweb/login" method="post">
			<input type="text" name="usuario" placeholder="Nombre de Usuario"
				required="required" />
			<div class="cont-contrasenya"><input type="password" id="contrasena" name="contrasena"
				placeholder="Contraseña" required="required" />
				<i id="mostrar" onclick="mostrarTexto()" class="fas fa-eye ojos"></i>
				<i id="ocultar" onclick="ocultarTexto()" class="fas fa-eye-slash ojos"></i>
			</div>
			<select name="idioma" id="idioma">
				<option value="">Idioma</option>
				<option value="Castellano">Castellano</option>
				<option value="Euskera">Euskera</option>
				<option value="English">English</option>
			</select> <input class="custom-check" id="recordar" name="recordar"
				type="checkbox" /> <label class="custom-check-label" for="recordar">recordarme</label>
			<button type="submit"
				class="btn btn-primary btn-block btn-large btnSendIt">Enviar</button>
		</form>
	</div>
</main>

