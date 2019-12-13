
<%
	String titulo = "Arkanoid";
	String estilo = "ejemplos/js/game/game.css";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegador.jsp"%>
<main>	
	<h1>Arkanoid</h1>
    <canvas id="canva" width="500px" height="500px"></canvas>
    <audio src="/helloweb/assets/B.E.R. La Noche Empieza A Brillar (VideoClip Oficial).mp3" preload="auto"
        autoplay="true"></audio>
    <script src="/helloweb/ejemplos/js/game/game.js"></script>
</main>

<%@include file="/includes/pie.jsp"%>