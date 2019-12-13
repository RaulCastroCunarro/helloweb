
<%
	String titulo = "Etiquetas Basicas";
	String estilo = "html.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main>
	<script src="/helloweb/js/main.js"></script>
	<section>
		<a href="https://html-css-js.com/" target="_blank">Enlace externo</a><a
			href="/helloweb/ejemplos/html/etiquetasbasicas.jsp#ancla">Ir al
			final</a> <a href="tel:+34622690293">Llamar</a> <a
			href="mailto:srraulcastro@hotmail.com">email a Raúl</a>
	</section>

	<section>
		<div id="label"></div>
		<button onclick="saludar()">Saludar</button>
	</section>

	<section>
		<ol>
			<li>El Fari</li>
			<li>Duel of Fates</li>
			<li>Skyrim</li>
		</ol>

		<ul>
			<li>Esto</li>
			<li>Lo otro</li>
			<li>Lo de más allá</li>
		</ul>

		<dl>
			<dt>Google Chrome</dt>
			<dd>Un navegador web gratuito multiplataforma desarrollado por
				Google.</dd>
		</dl>
	</section>

	<section>
		<iframe width="560" height="315"
			src="https://www.youtube.com/embed/rtuKakgZn6o" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>

		<figure>
			<img src="/helloweb/images/Meninas.jpg"
				alt="Las Meninas, un cuadro de Velazquez.">
			<figcaption>Fig.1 - Las Meninas, de Velazquez</figcaption>
		</figure>

		<meter max="2048" value="547" title="Megabytes">547/2048</meter>

		<progress></progress>
	</section>

	<section>
		<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sed
			facilis blanditiis similique a aperiam molestiae? Molestiae eveniet
			voluptatem facilis possimus officia saepe iure ea ratione reiciendis.
			Laudantium ducimus placeat et?</p>
		<p>
		<pre>
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. 
            Sed facilis blanditiis similique a aperiam molestiae?
            Molestiae eveniet voluptatem facilis possimus officia saepe iure ea ratione reiciendis. 
            Laudantium ducimus placeat et?</pre>
		</p>
		<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sed
			facilis blanditiis similique a aperiam molestiae? Molestiae eveniet
			voluptatem facilis possimus officia saepe iure ea ratione reiciendis.
			Laudantium ducimus placeat et?</p>
		<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sed
			facilis blanditiis similique a aperiam molestiae? Molestiae eveniet
			voluptatem facilis possimus officia saepe iure ea ratione reiciendis.
			Laudantium ducimus placeat et?</p>
		<p id="ancla" class="tachado">Lorem ipsum dolor, sit amet
			consectetur adipisicing elit. Sed facilis blanditiis similique a
			aperiam molestiae? Molestiae eveniet voluptatem facilis possimus
			officia saepe iure ea ratione reiciendis. Laudantium ducimus placeat
			et?</p>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>