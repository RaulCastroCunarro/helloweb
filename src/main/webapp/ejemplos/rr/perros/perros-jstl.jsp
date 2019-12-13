<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String titulo = "Perros";
	String estilo = "";
%>

<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegador.jsp"%>


<h1>Perros con JSTL</h1>

<p>El mismo ejemplo para hacer un CRUD pero usando taglib y EL</p>


<div class="container">
	<c:if test="${not empty mensaje}">
		<p class="alert alert-success">${mensaje}}</p>
	</c:if>

	<!-- Page Heading -->
	<h1 class="h3 mb-2 mt-4 text-gray-800 text-white">Listado de
		Perros</h1>
	<p class="mb-4 text-white">En esta tabla aparece un listado de los
		Perros dados de alta en el sistema.</p>

	<c:if test="${empty perroEditar}">
		<!--No tenemos perro para Editar, vamos a Inicializarlo-->
		<jsp:useBean id="perroEditar" class="com.ipartek.formacion.model.pojo.Perro"></jsp:useBean>
	</c:if>
	
	<form action="perros" method="post">

		<input type="number" name="id" value="${perroEditar.id}" required>
		<input type="text" name="nombre" value="${perroEditar.nombre}"
			placeholder="Nombre del Perro" required> <input type="url"
			name="imagen" value="${perroEditar.foto}"
			placeholder="URL de la imagen del Perro" required> <input
			type="submit" value="Inscribir">
	</form>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-center">Perros</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered text-center" id="dataTable"
					width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>Id</th>
							<th>Foto</th>
							<th>Nombre</th>
							<th>Raza</th>
							<th>Fecha Nacimiento</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>Id</th>
							<th>Foto</th>
							<th>Nombre</th>
							<th>Raza</th>
							<th>Fecha Nacimiento</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach items="${perros}" var="p">
							<tr>
								<td>${p.id}</td>
								<td><img class="img-thumbnail rounded-circle" src="${foto}"></td>
								<td>${p.nombre}</td>
								<td><a href="perros2?id=${p.id}&accion=adoptar">Adoptar</a></td>
								<td><a href="perros2?id=${p.id}&accion=editar">Editar</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container -->

<hr>

<%@include file="/includes/pie.jsp"%>

