<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String titulo = "Productos";
	String estilo = "";
%>

<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegador.jsp"%>


<h1>Productos</h1>


<div class="container">
	<c:if test="${not empty mensaje}">
		<p class="alert alert-success">${mensaje}</p>
	</c:if>

	<!-- Page Heading -->
	<h1 class="h3 mb-2 mt-4 text-gray-800 text-white">Listado de
		Productos</h1>
	<p class="mb-4 text-white">En esta tabla aparece un listado de los
		Productos dados de alta en el sistema.</p>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-center">Productos</h6>
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
							<th>Precio</th>
							<th>Descripción</th>
							<th>Descuento</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>Id</th>
							<th>Foto</th>
							<th>Nombre</th>
							<th>Precio</th>
							<th>Descripción</th>
							<th>Descuento</th>
							<th>Acciones</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach items="${productos}" var="p">
							<tr>
								<td>${p.id}</td>
								<td><img class="img-thumbnail rounded-circle" src="${foto}"></td>
								<td>${p.nombre}</td>
								<td>${p.precio}</td>
								<td>${p.descripcion}</td>
								<td>${p.descuento}</td>
								<td>
									<a class="btn btn-primary" href="productos?id=${p.id}&accion=editar">Editar</a>
									<a class="btn btn-danger" href="productos?id=${p.id}&accion=eliminar">Eliminar</a>
									</td>
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

