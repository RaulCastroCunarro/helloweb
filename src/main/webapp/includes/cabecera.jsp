<!DOCTYPE html>
<!-- html5 -->
<html lang="es">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- <META HTTP-EQUIV="REFRESH" CONTENT="10"> -->
<!-- La base para construir todas las rutas de esta pagina -->
<title><%=titulo%></title>
<base href="${pageContext.request.contextPath}/">
<!-- Estilos -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="css/styles.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href=<%=estilo%>>
</head>

<body class="text-center w-100 h-100 mb-3">
	
	