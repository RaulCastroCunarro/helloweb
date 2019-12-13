
<%
	String titulo = "Calculadora";
	String estilo = ".css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="m-auto">
	<h1>Calculadora</h1>

	<section>
		<form action="/helloweb/operar" method="post">
			<label for="operacion">Operacion:</label><br> <input
				type="radio" name="op" value="1" required><label>Sumar</label><br>
			<input type="radio" name="op" value="2"><label>Restar</label><br>
			<input type="radio" name="op" value="3"><label>Multiplicar</label><br>
			<input type="radio" name="op" value="4"><label>Dividir</label><br>

			<input type="number" name="op1" required autofocus> <br>
			<input type="number" name="op2" required> <input
				type="submit" value="Calcular">

		</form>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>

