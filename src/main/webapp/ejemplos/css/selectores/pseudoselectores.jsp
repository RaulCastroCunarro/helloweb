
<%
	String titulo = "Pseudo-Selectores";
	String estilo = "ejemplos/css/selectores/selectores.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="pseudo m-auto">
	<h1 data-resaltar="">Pseudoselectores</h1>

	<section>
		<p data-resaltar="">
			Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore a
			fuga nisi esse recusandae necessitatibus quae minima. <span>Officiis
				quo assumenda quaerat sunt adipisci deserunt fugiat illum maxime!</span>
			Dolore, corrupti sapiente?
		</p>
		<p>Adipisci repellat nobis dolorum cumque! Aspernatur, at ratione,
			itaque voluptate eveniet, quas amet quos ex maxime nesciunt dolore
			impedit culpa ea accusantium dicta? Minima minus quibusdam quam
			dolores tenetur quos?</p>
		<p>Expedita delectus soluta praesentium dignissimos! Voluptate vel
			iure nisi aliquam quos perferendis, dolor eligendi eius saepe porro
			cumque in repudiandae explicabo, fugiat obcaecati, illo unde
			consequatur ullam similique. Sapiente, iste!</p>
		<p>Est, doloremque ipsum nostrum fuga nam autem dolorem
			reprehenderit voluptatem delectus ipsam culpa laudantium facere saepe
			maiores ab commodi architecto atque vel. Debitis quam ea recusandae
			saepe fuga aut dignissimos!</p>
		<p>Laudantium temporibus ut aliquid vel autem rerum expedita
			tenetur eaque, ratione harum, sed sapiente non eius hic unde corporis
			dicta blanditiis totam nam asperiores voluptatum excepturi dolor!
			Necessitatibus, mollitia natus.</p>
	</section>

	<section>
		<div data-resaltar="">
			<table id="basico">
				<caption>Esquema de la clase</caption>
				<tr>
					<th colspan="2">Ander</th>
				</tr>
				<tr>
					<td id="Mikel">Mikel</td>
					<td id="Joseba">Joseba</td>
				</tr>
				<tr>
					<td>Vacio</td>
					<td id="Raul">Raúl</td>
				</tr>
				<tr>
					<td id="Erlantz">Erlantz</td>
					<td id="Cristian">Cristian</td>
				</tr>
				<tr>
					<td id="Ana">Ana</td>
					<td id="Alejandro">Alejandro</td>
				</tr>
				<tr>
					<td id="Maria">María</td>
					<td id="Juancarlos">Juan Carlos</td>
				</tr>
				<tr>
					<td id="Kiryl">Kiryl</td>
					<td id="Inigo">Iñigo</td>
				</tr>
				<tr>
					<td>Vacio</td>
					<td id="Endika">Endika</td>
				</tr>
				<tr>
					<td id="Iker">Iker</td>
					<td id="Aitor">Aitor</td>
				</tr>
			</table>
		</div>
	</section>

	<!-- <div id="logo">
        RCC
    </div><br />-->
	<section>
		<div id="logo">
			<span>R</span> <span>C</span> <span>C</span>
		</div>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>