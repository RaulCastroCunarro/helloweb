
<%
	String titulo = "Login";
	String estilo = "login.css";
%>

<%@include file="/includes/cabecera.jsp"%>
<main>
	
	<%@include file="/includes/navegador.jsp"%>
	
	<div class="login">
        <h1>Identificarse</h1>
        <form method="post">
            <input type="text" name="username" placeholder="Nombre de Usuario" required="required" />
            <input type="password" name="contrasena" placeholder="Contraseña" required="required" />
            <select name="idioma" id="idioma">
                <option value="">Idioma</option>
                <option value="c">Castellano</option>
                <option value="eus">Euskera</option>
                <option value="en">English</option>
            </select>
            <input class="custom-check" id="recordar" name="recordar" type="checkbox" />
            <label class="custom-check-label" for="recordar">recordarme</label>
            <button type="submit" class="btn btn-primary btn-block btn-large btnSendIt">Enviar</button>
            <a href="" id="new"><br><br>+ Crear Cuenta Nueva</a>
        </form>
    </div>
    <div class="signup">
        <h1>Registrarse</h1>
        <form method="post">
            <input type="text" name="newusername" placeholder="Nombre de Usuario" required="required" />
            <input type="password" name="newpassword" placeholder="Contraseña" required="required" />
            <input type="password" name="confirmnewpassword" placeholder="Confirmar Contraseña" required="required" />
            <button type="submit" class="btn btn-primary btn-block btn-large btnCreateAcct">Crear Cuenta</button>
            <a href="" id="back"><br><br>Back --> Member Sign In</a>
        </form>
    </div>
    
    <script type="text/javascript" src="/helloweb/ejemplos/html/formularios/login.js"></script>
</main>

<%@include file="/includes/pie.jsp"%>