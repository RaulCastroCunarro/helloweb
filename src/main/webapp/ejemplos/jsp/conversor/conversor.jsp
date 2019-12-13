
<%
	String titulo = "Conversor";
	String estilo = ".css";
	
	String unidad = " m";
	String mensaje = "";
	
	if (request.getAttribute("unidad") != null){
		if (request.getAttribute("unidad") != unidad){
			unidad = (String)request.getAttribute("unidad");
		}
	}
			
	if (request.getAttribute("mensaje") != null){
		mensaje = (String)request.getAttribute("mensaje");
	}
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="m-auto">
	<h1>Conversor</h1>

	<section>
		<form action="/helloweb/convertir" method="post">
			<h2>Conversor de metros a pies</h2>
			<label class="warning"><%=mensaje%></label><br> 
			<input step="0.01" type="number" name="numeral" required
				autofocus value="${numeral}" placeholder="Metros"><label id="unidad"><%=unidad%></label><br>
			<input type="submit" value="Calcular">

		</form>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>

