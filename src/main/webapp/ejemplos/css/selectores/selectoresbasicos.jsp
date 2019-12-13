
<%
	String titulo = "Selectores Básicos";
	String estilo = "ejemplos/css/selectores/selectores.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="basicos m-auto">
	<h1>Selectores Básicos</h1>
	
	<section>
		<p class="titulo">Mira este parrafo para ver un estilo en linea</p>

		<p id="texto-verde" class="texto-rosa">
			Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti,
			non pariatur. Nam, beatae. Sit, doloremque. <span class="especial">Unde,
				ipsa laboriosam</span> veniam commodi quasi nihil ea accusantium laborum
			vero quis doloremque minima tempore!
		</p>
		<p class="especial">Quibusdam omnis dicta totam cumque. Aut dolor
			atque optio nisi in culpa aliquid maiores fugit corporis. Sunt unde
			neque eligendi ipsum fuga! Beatae soluta dolore nostrum culpa sunt
			iure fuga!</p>
		<p>Eveniet deserunt quibusdam hic quaerat eaque quo incidunt ipsum
			enim voluptas explicabo, sed vitae cupiditate tempore sapiente. Rerum
			odio, omnis ratione facere dignissimos at veritatis officiis esse
			eius, nisi animi?</p>
		<p>Consectetur debitis officia perferendis accusamus amet, eveniet
			deleniti quas minus maxime sunt culpa corrupti quisquam! Fuga, quae
			dolorum beatae illum iste deserunt. Deleniti, doloremque corrupti!
			Sed ducimus animi cumque voluptates?</p>
		<p>Iure velit hic iusto repellat voluptatibus vitae quasi officia
			distinctio maiores modi laudantium assumenda reprehenderit,
			repellendus libero at architecto perspiciatis sit, tempora dolores
			aliquid in temporibus? Ipsa voluptates suscipit voluptatum.</p>
	</section>
	<section>
		<h2>Tipos de selectores</h2>
		<p>En este vídeo puedes ver los tipos de selectores,
			identificadores, clases y pseudoclases</p>
		<iframe width="90%"
			src="https://www.youtube.com/embed/ARaU6uGOa_k" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen> </iframe>
	</section>
</main>

<%@include file="/includes/pie.jsp"%>