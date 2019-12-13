<%
	String titulo = "Suscripción Correcta";
	String estilo = "";
%>

<%@page import="com.ipartek.formacion.model.pojo.Perro"%>
<%@page import="java.util.ArrayList"%>

<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegador.jsp"%>

<main class="m-auto">
	<h2>Te has Subscrito con éxito</h2>
	<section>
		<p>Gracias por subscribirte ${nombre} te enviaremos a ${email} las ofertas de los deportes que has seleccionado</p>
		<h2>Deportes: </h2>
		<ul>
			<c:forEach items="${deportes}" var="deporte">
				<li>${deporte}</li>
			</c:forEach>
		</ul>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>