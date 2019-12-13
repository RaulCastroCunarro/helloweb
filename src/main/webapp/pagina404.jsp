
<%
	String titulo = "Error 404";
	String estilo = "";
%>

<%@include file="includes/cabecera.jsp"%>

<%@include file="includes/navegador.jsp"%>

<%@ page is ErrorPage="true"%>

<main class="m-auto">

	<h1>404</h1>
	<p>Perdona las molestias, pero la pagina que buscas no existe.</p>
	<p>
		Envia un <a href="mailto:email@email.com">email al administrador</a>
	</p>

</main>

<%@include file="includes/pie.jsp"%>