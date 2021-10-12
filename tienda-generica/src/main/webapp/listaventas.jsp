<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Lista de ventas</title>
<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="fondo.css" rel="stylesheet" type="text/css" />


<script>

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

	var baseurl =baseUrl+"/listaventas";
	function loadventas() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var ventas = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-secondary table-striped'><tr><th>codigo_venta</th><th>cedula_cliente</th><th>cedula_usuario</th><th>ivaventa</th><th>total_venta</th><th>valor_venta</th></tr>";
				var main = "";
				for (i = 0; i < ventas.length; i++) {
					main += "<tr><td>" + ventas[i].codigo_venta
							+ "</td><td>" + ventas[i].cedula_cliente
							+ "</td><td>" + ventas[i].cedula_usuario
							+ "</td><td>" + ventas[i].ivaventa 
							+ "</td><td>" + ventas[i].total_venta
							+ "</td><td>" + ventas[i].valor_venta 
							+ "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("ventasinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadventas();
	}
</script>

</head>


<body>
	<!-- Navbar-->
<nav class="navbar navbar-light" style="background-color: #9a8f97;">
  <div class="container-fluid">
  <a class="navbar-brand links" href="index.html"> <i
		class="fas fa-cart-plus"></i> Tienda Generica
	</a>
	<li class="nav-item">
		<a class="navbar-brand links" href="listausuarios.jsp">
		<i class="fas fa-users"></i> Usuarios</a> 
	</li>
  	<li class="nav-item">
			<a class="navbar-brand links" href="listacliente.jsp">
			<i class="fas fa-address-book"></i> Clientes</a>
	</li>
 	<li class="nav-item">
			<a class="navbar-brand links" href="listaproveedor.jsp">
			<i class="fas fa-truck"></i> Proveedores</a>
	</li>
  	<li class="nav-item">
			<a class="navbar-brand links" href="listaproductos.jsp">
			<i class="fas fa-apple-alt"></i> Productos</a>
	</li>
  	<li class="nav-item">
			<a class="navbar-brand links" href="listaventas.jsp">
			<i class="fas fa-money-check-alt"></i> Ventas</a>
	</li>
    <li class="nav-item">
			<a class="navbar-brand links" href="listareportes.jsp">
			<i class="fas fa-clipboard-list"></i> Reportes</a>
	  </li>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button type="button" class="btn btn-outline-info">Search</button>
    </form>
  </div>
</nav>

	<!-- contenido  -->
	

	
		<h5><i class="fas fa-cogs"></i> Operaciones</h5>
			<div class="container">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button type="button" class="btn btn-outline-success" 
						onclick="window.location.href='<%=request.getContextPath()%>/insertarventa.jsp'">
					<i class="fas fa-plus-circle"></i> Agregar venta</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='<%=request.getContextPath()%>/eliminarventa.jsp'">
					<i class="fas fa-trash"></i> Eliminar venta</button>
					<button type="button" class="btn btn-outline-secondary" 
						onclick="window.location.href='<%=request.getContextPath()%>/actualizarventa.jsp'">
					<i class="fas fa-pen-alt"></i> Actualizar venta</button>
					<button type="button" class="btn btn-primary" 
						onclick="window.location.href='<%=request.getContextPath()%>/buscarventa.jsp'">
					<i class="fas fa-search"></i> Buscar una venta</button>
					<button type="button" class="btn btn-outline-dark"
						onclick="window.location.href='<%=request.getContextPath()%>/listaventas.jsp'">
					<i class="fas fa-list"></i> Listar todas las ventas</button>
				</div>
			</div>
	
	<div style="padding-left: 5px;">
	
		<h5><i class="fas fa-list-ol"></i> Tabla de ventas</h5>
			<div class="container">
				<div class="row">
					<!--  Aqui es donde se autogenera la tabla basado en el script -->
					<div class="col align-self-center" id="ventasinfo">
					
					</div>
	
				</div>
			</div>
	</div>
	
	<nav class="navbar fixed-bottom navbar-light" style="background-color: #9a8f97;">
		<div class="grid" style="--bs-columns: 18; --bs-gap: .5rem;">
  			<div class="g-col-4">
  			</div>
		</div>
			<a class="navbar-brand links" href="#"><i class="fas fa-cubes"></i>Diseñado y programado por Scrum 7 
			</a>
  	</nav>


</body>
</html>