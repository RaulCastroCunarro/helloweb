
<%
	String titulo = "Posicionamiento";
	String estilo = "html.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main class="posicionamiento">	
	<h1>Posicionamiento</h1>

    <section>
        <h2>Normal</h2>
        <p>El posicionamiento normal o est�tico es el modelo que utilizan por defecto los navegadores para mostrar los
            elementos de las p�ginas. En este modelo, s�lo se tiene en cuenta si el elemento es de bloque o en l�nea,
            sus propiedades width y height y su contenido.</p>
        <span>De linea</span>
        <p>Este es de bloque</p>
        <span>De linea</span>
        <div style="display: inline-block;">Bloque de linea</div>
    </section>

    <section>
        <h2>Relativo</h2>
        <p>Variante del posicionamiento normal que consiste en posicionar una caja seg�n el posicionamiento normal y
            despu�s desplazarla respecto de su posici�n original.</p>
        <div class="box">1</div>
        <div class="box" style="background: red; position: relative; top: -20px; left: 25px;">2</div>
        <div class="box">3</div>
    </section>

    <section>
        <h2>Absoluto</h2>

        <p>La posici�n de una caja se establece de forma absoluta respecto de su <strong>elemento contenedor</strong> y
            el resto de
            elementos de la p�gina ignoran la nueva posici�n del elemento.</p>
        <div class="contenedor">
            <span class="absoluto">1</span>
            <img src="http://lorempixel.com/200/200/" alt="Imagen Aleatoria">
            <div class="texto">
                <h3>Titulo</h3>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit laboriosam quasi facilis rerum
                    pariatur,
                    delectus impedit amet officia nesciunt reprehenderit, fuga, placeat adipisci quibusdam nulla sed
                    distinctio
                    possimus ipsam officiis.</p>
            </div>
        </div>
    </section>

    <section>
        <h2>Fijo</h2>
        <p>Variante del posicionamiento absoluto que convierte una caja en un elemento inamovible, de forma que su
            posici�n en la pantalla siempre es la misma independientemente del resto de elementos e independientemente
            de si el usuario sube o baja la p�gina en la ventana del navegador.</p>
        <div class="box fijo">1</div>
    </section>
</main>

<%@include file="/includes/pie.jsp"%>