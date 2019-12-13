
<%
	String titulo = "Bienvenido";
	String estilo = ".css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main>
	<section>
		<%
			String recordar = (String)request.getAttribute("recordar");
			String bienvenida = (String)request.getAttribute("bienvenida");
			String mensajeSaludo = (String)request.getAttribute("mensajeSaludo");
			String recordarte = (String)request.getAttribute("recordarte");
		%>

		<h1>
			<%=bienvenida%>
		</h1>

		<p>
			<%=mensajeSaludo%>
		</p>
		<p>
			<%=recordarte%>
		</p>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>

