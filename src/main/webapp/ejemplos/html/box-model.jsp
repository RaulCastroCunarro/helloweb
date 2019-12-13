
<%
	String titulo = "Visualización";
	String estilo = "html.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="boxmodel">
	
	<h1>Visualización</h1>

    <section>
        <h2>Box Model</h2>

        <p>Toda etiqueta de html tiene una esructura de caja</p>
    </section>

    <section>
        <h2>Display</h2>
        <p class="prueba">
            <code>display</code> es el atributo para gestionar si es en linea o bloque(existen muchos mas displays, ej:
            flex)
        </p>
        <p>*trick: usar inspector para verlo</p>
        <dl>
            <dt>block</dt>
            <dd>Elemento que ocupa todo el ancho del elemento padre</dd>
            <dt>inline</dt>
            <dd>Elemento que ocupa lo que tenga su contenido</dd>
            <dt>inline-block</dt>
            <dd>Es una cosa hibrida de las 2 anteriores.</dd>
        </dl>

        <h2>Ejemplo inline-block</h2>
        <p><span>Lorem ipsum dolor sit amet consectetur adipisicing elit.</span> Minus architecto accusantium
            doloremque,
            eveniet illo
            cumque sunt distinctio ipsum nemo perspiciatis! Earum numquam similique inventore ipsum cupiditate doloribus
            assumenda rerum eveniet.</p>
        <div class="box">
            1
        </div>
        <div class="box">
            2
        </div>
    </section>

    <section>
        <h2>Visibility</h2>
        <p>Existen dos formas de ocultar elementos de HTML</p>
        <p>Usando Visibility</p>
        <div class="box">1</div>
        <div class="box" style="visibility: hidden;">2</div>
        <div class="box">3</div>
        <p>Usando <code>display: none</code></p>
        <div class="box">1</div>
        <div class="box" style="display: none;">2</div>
        <div class="box">3</div>
    </section>

    <section>
        <h2>Overflow</h2>
        <p>Como se muestra la información cuando no entra en el contenedor padre
            <code>visible | hidden | scroll | auto</code></p>
        <p>Tambien se puede udar <code>overflow-x</code> y <code>overflow-y</code></p>
        <div class="box-texto" style="overflow: hidden;">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem enim sint suscipit illo inventore
                deleniti doloremque, sed doloribus maxime quidem officiis fugit placeat. Dolores, eligendi amet minus
                praesentium consectetur minima.</p>
        </div>
        <div class="box-texto" style="overflow: scroll;">
            <p>Molestiae quo laudantium autem necessitatibus iusto aut iure distinctio. Ratione optio eaque soluta
                praesentium laborum, similique perferendis aliquid obcaecati exercitationem reprehenderit nemo dolorem
                voluptates ab illo culpa molestiae ad vel!</p>
        </div>
        <div class="box-texto" style="overflow: auto;">
            <p>Numquam delectus cumque harum cupiditate soluta est itaque perspiciatis veniam? Corporis id repellendus
                expedita earum sit rerum, harum dolorum similique, quae vero ipsam blanditiis consectetur alias quasi
                voluptas doloribus magni.</p>
        </div>
        <div class="box-texto" style="overflow: visible;">
            <p>Ratione quaerat aspernatur temporibus dignissimos commodi. Pariatur tempore nam vitae omnis. Omnis
                dignissimos illo consectetur dicta quod distinctio aut optio, tenetur, alias voluptatem voluptates
                dolore voluptatum assumenda fuga fugit sunt.</p>
        </div>
    </section>

    <section>
        <h2>z-index</h2>
        <p>Se encarga de la profundidad de los elementos que se solapan</p>
        <div class="box">1</div>
        <div class="box" style="z-index: 0; position: relative; top: -10px; left:30px; background-color: red;">2</div>
        <div class="box" style="z-index: 1; position: relative;">3</div>
    </section>
</main>

<%@include file="/includes/pie.jsp"%>