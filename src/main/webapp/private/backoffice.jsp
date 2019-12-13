
<%
	String titulo = "Index";
	String estilo = "css/index.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>

<main class="m-auto">
	<h1>Backoffice</h1>
	<section>
		<p class="text-danger">Solo pueden acceder usuarios logeados</p>
		<p>atributo desde servlet => ${atributoDesdeServelet}</p>
	</section>
	
	<section>
		<p>Usuarios Logeados: </p>
		
		
		<p>Intentos incorrectos: </p>
		
		<h2>IPs Intentos Incorrectos</h2>
		<ol>
		<c:forEach items="${applicationScope.ips}" var="ip">
			<li>${ip}</li>
		</c:forEach>
		</ol>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>