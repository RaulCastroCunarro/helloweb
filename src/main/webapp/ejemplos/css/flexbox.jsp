
<%
	String titulo = "Flexbox";
	String estilo = "ejemplos/css/flexbox.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="m-auto">
	<h1>Flexbox</h1>

	<section>
		<ul>
			<li><a
				href="https://css-tricks.com/snippets/css/a-guide-to-flexbox/"
				target="_blank">Guia de flexbox</a></li>
			<li><a href="https://flexboxfroggy.com/#es" target="_blank">Juego
					Flexbox</a></li>
			<li><a
				href="http://www.falconmasters.com/web-design/sitio-web-layout-flexbox/"
				target="_blank">Maquetar pagina web con Flexbox</a></li>
		</ul>
		<p>
			Flex es una nueva forma de
			<code>display</code>
			de CSS3, para que las cajas no sean
			<code>inline</code>
			o
			<code>block</code>
			. Se comportarán de una forma mucho mas flexible.
		</p>
		<p>
			Sirve para distribuir los contenidos (hijos) en una etiqueta
			(contenedor) con
			<code>display: flex</code>
		</p>

		<div class="container">
			<div>hijo1</div>
			<div>hijo2</div>
			<div>hijo3</div>
			<div>hijo4</div>
			<div>hijo5</div>
			<div>hijo6</div>
		</div>

	</section>
</main>

<%@include file="/includes/pie.jsp"%>