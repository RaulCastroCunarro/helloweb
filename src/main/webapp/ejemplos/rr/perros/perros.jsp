
<%
	String titulo = "Perros";
	String estilo = "";
%>

<%@page import="com.ipartek.formacion.model.pojo.Perro"%>
<%@page import="java.util.ArrayList"%>

<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegador.jsp"%>

<%
	String mensaje = (String) request.getAttribute("mensaje");
%>


<%
	ArrayList<Perro> perros = (ArrayList<Perro>) request.getAttribute("perros");
%>

<!--listado-->
<div class="container">
	<p class="alert alert-success"><%=mensaje%></p>

	<!-- Page Heading -->
	<h1 class="h3 mb-2 mt-4 text-gray-800 text-white">Listado de
		Perros</h1>
	<p class="mb-4 text-white">En esta tabla aparece un listado de los
		Perros dados de alta en el sistema.</p>
	<%
		Perro perroEditar = (Perro) request.getAttribute("perroEditar");
		if (perroEditar == null) {
			perroEditar = new Perro();
		}
	%>
	<form action="perros" method="post">

		<input type="number" name="id" value="<%=perroEditar.getId()%>" required> <input
			type="text" name="nombre" value="<%=perroEditar.getNombre()%>" placeholder="Nombre del Perro" required>
		<input type="url" name="imagen" value="<%=perroEditar.getFoto()%>" placeholder="URL de la imagen del Perro"
			required> <input type="submit" value="Inscribir">
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
						<%
							for (Perro p : perros) {
						%>

						<tr>
							<td><%=p.getId()%></td>
							<td><img class="img-thumbnail rounded-circle"
								src="<%=p.getFoto()%>"></td>
							<td><%=p.getNombre()%></td>
							<td><a href="perros?id=<%=p.getId()%>&accion=adoptar">Adoptar</a></td>
							<td><a href="perros?id=<%=p.getId()%>&accion=editar">Editar</a></td>
						</tr>

						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container -->

<hr>

<!--formulario-->


<%@include file="/includes/pie.jsp"%>