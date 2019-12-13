
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="com.ipartek.formacion.model.pojo.Usuario"%>
<%
	String version = "1.1";
%>
<script src="/helloweb/js/main.js"></script>

<nav
	class="navbar navbar-expand-lg bg-navbar sticky-top text-white">
	<section id="usuario" class="position-absolute">
		<%
			Usuario usuario = (Usuario)session.getAttribute("usuario");
			
			if (usuario == null){ %>
		<p>
			No has iniciado sesión, <a class="text-white"
				href="ejemplos/rr/login/login.jsp">Iniciar sesión</a>
		</p>
		<%}else { %>
		<p>
			<%=usuario.getNombre() %></p><a href="<%=usuario.getGithub()%>" ><img class="portrait" src="<%=usuario.getImagen()%>"></a>
		<a class="text-white" href="logout"><i class="fas fa-sign-out-alt"></i></a>
		<%} %>
		<p>Usuarios Conectados: ${applicationScope.numeroUsuariosConectados}</p>
	</section>
	<a class="navbar-brand text-white" href="index.jsp"><i
		class="fas fa-home"></i></a>
	<button class="navbar-toggler text-white" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav m-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> CSS </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="/helloweb/ejemplos/css/animaciones/animacion1.jsp?<%=version%>">Animación1</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/css/selectores/selectoresbasicos.jsp?<%=version%>">Selectores
						Básicos</a> <a class="dropdown-item"
						href="/helloweb/ejemplos/css/selectores/selectoresespecificos.jsp?<%=version%>">Selectores
						Específicos</a> <a class="dropdown-item"
						href="/helloweb/ejemplos/css/selectores/selectoresavanzados.jsp?<%=version%>">Selectores
						Avanzados</a> <a class="dropdown-item"
						href="/helloweb/ejemplos/css/selectores/pseudoselectores.jsp?<%=version%>">Pseudoselectores</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/css/flexbox.jsp?<%=version%>">Flexbox</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/css/mediaqueries.jsp?<%=version%>">Media
						Queries</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> HTML </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="/helloweb/ejemplos/html/box-model.jsp?<%=version%>">Box
						Model</a> <a class="dropdown-item"
						href="/helloweb/ejemplos/html/formularios/formulario.jsp?<%=version%>">Formulario</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/html/formularios/login.jsp?<%=version%>">Login</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/html/formularios/login.jsp?<%=version%>">Login</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/html/posicionamiento.jsp?<%=version%>">Posicionamiento</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/html/etiquetasbasicas.jsp?<%=version%>">Etiquetas
						Básicas</a> <a class="dropdown-item"
						href="https://es.wallapop.com/search?keywords=cafetera
                        &min_sale_price=5&max_sale_price=50">Buscar
						Cafetera</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> JS </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="/helloweb/ejemplos/js/game/game.jsp?<%=version%>">Arkanoid</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> JSP </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="/helloweb/ejemplos/jsp/login/login.jsp?<%=version%>">Login</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/jsp/calculadora/calculadora.jsp?<%=version%>">Calculadora</a>
					<a class="dropdown-item"
						href="/helloweb/ejemplos/jsp/conversor/conversor.jsp?<%=version%>">Conversor</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> R&R </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="/helloweb/ejemplos/rr/controladores/controladores.jsp?<%=version%>">Controladores</a>
					<a class="dropdown-item"
						href="/helloweb/perros">Perros</a>
						<a class="dropdown-item"
						href="/helloweb/perros2">Perros con JSTL</a>
					<a class="dropdown-item"
						href="ejemplos/rr/login/login.jsp?<%=version%>">Login</a>
					<a class="dropdown-item"
						href="ejemplos/rr/formularios/deportes.jsp?<%=version%>">Deportes</a>
					<a class="dropdown-item"
						href="productos/index.jsp?<%=version%>">Productos</a>
				</div></li>
		</ul>
	</div>
</nav>