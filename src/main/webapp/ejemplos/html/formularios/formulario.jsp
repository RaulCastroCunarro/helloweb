
<%
	String titulo = "Formulario";
	String estilo = "/helloweb/ejemplos/html/html.css";
%>

<%@include file="/includes/cabecera.jsp"%>
<main class="formulario">
	
	<%@include file="/includes/navegador.jsp"%>
	
	<h1>Formulario</h1>
    <section>
        <p>Usar siempre la etiqueta <code>form</code> junto con botón de summit.</p>
        <p>El atributo <code>action</code> sirve para indicar el nombre del controlador en el backend o servidor.</p>
        <p>El atributo <code>name</code> de un <code>input</code> sirve para especificar el nombre del parametro a
            enviar el servidor.</p>
        <form action="#" method="post">
            <fieldset>
                <legend>Datos Personales</legend>
                <label for="nombre">Nombre: </label>
                <input type="text" name="" id="nombre" autofocus placeholder="mínimo 3 letras, máximo 10" required
                    pattern=".{3,10}">
                <br>
                <label for="edad">Edad: </label>
                <input type="number" name="edad" id="edad" required placeholder="Número de años" min="0" max="99"
                    step="2">
                <br>
                <label for="sexo">Sexo</label>
                <select name="sexo" id="sexo" required>
                    <option value="h">Hombre</option>
                    <option value="m">Mujer</option>
                    <option value="nb" selected>No Binario</option>
                </select>
                <label for="contrasenya">password: </label>
                <input type="password" name="contrasenya" id="contrasenya" autofocus
                    placeholder="entre 5 y 8 caracetres" required pattern=".{5,8}">
                <button onclick="mostrarTexto()">Ver</button>
                <br>
            </fieldset>
            <br>

            <label for="deportes">Deportes</label> <br>
            <input type="checkbox" name="deportes" value="1" id="deportes">Surf <br>
            <input type="checkbox" name="deportes" value="2" id="deportes" checked>Quidditch <br>
            <input type="checkbox" name="deportes" value="3" id="deportes">Jugger <br>
            <input type="checkbox" name="deportes" value="4" id="deportes">Petanca <br>
            <br>

            <label for="situacion">Situacion Laboral</label> <br>
            <input type="radio" name="situacion" id="situacion" value="0"> Trabajando <br>
            <input type="radio" name="situacion" id="situacion" value="1"> Desempleado <br>
            <br>

            <label for="observaciones">Observaciones</label>
            <textarea name="observaciones" id="observaciones" cols="50" rows="20"></textarea>
            <br />


            <input type="submit" value="Enviar">
        </form>
    </section>
</main>

<%@include file="/includes/pie.jsp"%>