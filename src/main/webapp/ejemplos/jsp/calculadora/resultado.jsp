
<%
	String titulo = "Resultado";
	String estilo = ".css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="m-auto">
	<h1>Resultado</h1>

	<section>
		<%
			String resultado = (String) request.getAttribute("resultado");
			String op1 = (String) request.getAttribute("op1");
			String op2 = (String) request.getAttribute("op2");
			String mensaje = (String) request.getAttribute("mensaje");
			String op = (String) request.getAttribute("op");
			String operando = "";

			if (mensaje != null) {
				out.print("<p>" + mensaje + "</p>");
			} else {
				switch (op) {
				case "1":
					operando = "+";
					break;

				case "2":
					operando = "-";
					break;

				case "3":
					operando = "*";
					break;

				case "4":
					operando = "/";
					break;
				}
				out.print("<p>El resultado de " + op1 + " " + operando + " " + op2 + " es: " + resultado + "<p>");
			}
		%>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>



