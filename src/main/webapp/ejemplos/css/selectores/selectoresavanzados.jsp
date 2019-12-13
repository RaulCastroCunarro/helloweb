
<%
	String titulo = "Selectores Avanzados";
	String estilo = "ejemplos/css/selectores/selectores.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="avanzados m-auto">
	<h1>Selectores Avanzados</h1>

	<section>
		<p>
			Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore a
			fuga nisi esse recusandae necessitatibus quae minima. <span>Officiis
				quo assumenda quaerat sunt adipisci deserunt fugiat illum maxime!</span>
			Dolore, corrupti sapiente?
		</p>
		<p data-prueba="especial">Adipisci repellat nobis dolorum cumque!
			Aspernatur, at ratione, itaque voluptate eveniet, quas amet quos ex
			maxime nesciunt dolore impedit culpa ea accusantium dicta? Minima
			minus quibusdam quam dolores tenetur quos?</p>
		<p data-prueba="especial">Expedita delectus soluta praesentium
			dignissimos! Voluptate vel iure nisi aliquam quos perferendis, dolor
			eligendi eius saepe porro cumque in repudiandae explicabo, fugiat
			obcaecati, illo unde consequatur ullam similique. Sapiente, iste!</p>
		<p data-prueba="especial">Est, doloremque ipsum nostrum fuga nam
			autem dolorem reprehenderit voluptatem delectus ipsam culpa
			laudantium facere saepe maiores ab commodi architecto atque vel.
			Debitis quam ea recusandae saepe fuga aut dignissimos!</p>
		<p data-prueba="especial2">Laudantium temporibus ut aliquid vel
			autem rerum expedita tenetur eaque, ratione harum, sed sapiente non
			eius hic unde corporis dicta blanditiis totam nam asperiores
			voluptatum excepturi dolor! Necessitatibus, mollitia natus.</p>
	</section>
	<section>
		<h2>Tipos de selectores</h2>
		<p>En este vídeo puedes ver los tipos de selectores,
			identificadores, clases y pseudoclases</p>
		<iframe width="90%" src="https://www.youtube.com/embed/ARaU6uGOa_k"
			frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen> </iframe>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>