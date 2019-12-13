
<%
	String titulo = "Index";
	String estilo = "css/index.css";
%>

<%@include file="includes/cabecera.jsp"%>

<div id="paralax" class="parallax position-relative vh-100">
	<img class="logo" src="images/logo-ipartek.png"
		alt="Ipartek formacion & empleo">
</div>

<%@include file="includes/navegador.jsp"%>

<main class="m-auto">
	<h1>Prueba Técnica</h1>

	<section>
		<h2 class="m-2">Alumnos Ipartek</h2>
		<button onclick="buscarVoluntario()" class="m-2">¿Quien lee?</button>

		<table>
			<caption class="text-center mt-2">Esquema de la clase</caption>
			<tr>
				<th colspan="2" class="p-2">Ander</th>
			</tr>
			<tr>
				<td id="Mikel" class="p-2">Mikel</td>
				<td id="Joseba" class="p-2">Joseba</td>
			</tr>
			<tr>
				<td>Vacio</td>
				<td id="Raul" class="p-2">Raúl</td>
			</tr>
			<tr>
				<td id="Erlantz" class="p-2">Erlantz</td>
				<td id="Cristian" class="p-2">Cristian</td>
			</tr>
			<tr>
				<td id="Ana" class="p-2">Ana</td>
				<td id="Alejandro" class="p-2">Alejandro</td>
			</tr>
			<tr>
				<td id="Maria" class="p-2">María</td>
				<td id="Juancarlos" class="p-2">Juan Carlos</td>
			</tr>
			<tr>
				<td id="Kiryl" class="p-2">Kiryl</td>
				<td id="Inigo" class="p-2">Iñigo</td>
			</tr>
			<tr>
				<td>Vacio</td>
				<td id="Endika" class="p-2">Endika</td>
			</tr>
			<tr>
				<td id="Iker" class="p-2">Iker</td>
				<td id="Aitor" class="p-2">Aitor</td>
			</tr>
		</table>
	</section>
</main>

<%@include file="includes/pie.jsp"%>