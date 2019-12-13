<%
	String titulo = "Subscribirte";
	String estilo = "";
%>

<%@page import="com.ipartek.formacion.model.pojo.Perro"%>
<%@page import="java.util.ArrayList"%>

<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegador.jsp"%>

<main class="m-auto">
	<section>
		<p class="text-error">${mensaje}</p>
		<form action="/helloweb/deportes" method="post">
			<input type="text" name="nombre" placeholder="Nombre"
				required="required" /><br>
				
			<select>
				<option value="">-- Selecciona --</option>
				<option value="h" ${(sexo eq 'h')?selected:""}>Hombre</option>
				<option value="m" ${(sexo eq 'm')?selected:""}>Mujer</option>
				<option value="n" ${(sexo eq 'n')?selected:""}>No Binario</option>
			</select>
			
			<input type="email" name="email" placeholder="Email"
				required="required" /><br>
			<input type="checkbox" name="deportes" value="Body Board"> Body Board<br>
			<input type="checkbox" name="deportes" value="Escalada"> Escalada<br>
			<input type="checkbox" name="deportes" value="Jugger"> Jugger<br>
			<input type="checkbox" name="deportes" value="Natacion"> Natación<br>
			<input type="checkbox" name="deportes" value="Quidditch"> Quidditch<br>
			<input type="checkbox" name="deportes" value="Skinboard"> Skinboard<br>
			<input type="submit" value="Subscribir">
		</form>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>