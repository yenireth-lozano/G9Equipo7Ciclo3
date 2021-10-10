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
<title>Buscar proveedor</title>
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

<h5><i class="fas fa-cogs"></i> Operaciones	</h5>
		<div class="container">
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button type="button" class="btn btn-outline-success"
						onclick="window.location.href='<%=request.getContextPath()%>/insertarproveedor.jsp'">
						<i class="fas fa-plus-circle"></i> Agregar proveedor
					</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='<%=request.getContextPath()%>/eliminarproveedor.jsp'">
						<i class="fas fa-trash"></i> Eliminar proveedor
					</button>
					<button type="button" class="btn btn-outline-secondary" 
						onclick="window.location.href='<%=request.getContextPath()%>/actualizarproveedor.jsp'">
						<i class="fas fa-pen-alt"></i> Actualizar proveedor
					</button>
					<button type="button" class="btn btn-primary" 
						onclick="window.location.href='<%=request.getContextPath()%>/buscarproveedor.jsp'">
						<i class="fas fa-search"></i> Buscar un proveedor
					</button>
					<button type="button" class="btn btn-outline-dark"
					onclick="window.location.href='<%=request.getContextPath()%>/listaproveedor.jsp'">
						<i class="fas fa-list"></i> Listar todos los proveedores
					</button>
				</div>

			</div>
		</div>

	</div>

	<div style="padding-left: 5px">
		<h5>
			<i class="fas fa-plus-circle"></i> Buscando un proveedor
		</h5>
		<div class="container">
		
		
			<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al buscar el proveedor, el proveedor no existe</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">proveedor encontrado con exito</div>

			<form id="form1">
			
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">proveedor a buscar</span> <input
						type="text" class="form-control"
						placeholder="Inserte nit del proveedor aqui..."
						aria-describedby="basic-addon4" required id="nit_proveedor" >
				</div>
				<br>
				<br>
				<br>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Nit proveedor</span> <input
						type="text" class="form-control"
						placeholder="Inserte nit aqui..."
						aria-describedby="basic-addon1" required id="nit_proveedor2" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Ciudad</span> <input
						type="text" class="form-control"
						placeholder="Inserte ciudad del proveedor aqui..."
						aria-describedby="basic-addon2" required id="ciudad_proveedor" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Direccion</span>
					<input type="text" class="form-control"
						placeholder="Inserte direccion aqui..."
						aria-describedby="basic-addon3" required id="direccion_proveedor" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre</span> <input
						type="text" class="form-control"
						placeholder="Inserte nombre del proveedor aqui..."
						aria-describedby="basic-addon4" required id="nombre_proveedor" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Telefono</span> <input
						type="text" class="form-control"
						placeholder="Inserte numero de telefono aqui..."
						aria-describedby="basic-addon5" required id="telefono_proveedor" disabled="disabled">
				</div>



			</form>

			<button type="button" class="btn btn-primary" onclick="enviar()">
				<i class="fas fa-search-plus"></i> Buscar proveedor
			</button>
			<br>
			<br>
			<br>

	<nav class="navbar fixed-bottom navbar-light" style="background-color: #9a8f97;">
		<div class="grid" style="--bs-columns: 18; --bs-gap: .5rem;">
  			<div class="g-col-4">
  			</div>
		</div>
			<a class="navbar-brand links" href="#"><i class="fas fa-cubes"></i>Diseñado y programado por Scrum 7 
			</a>
  	</nav>
	<script>
	function enviar() {

		var getUrl = window.location;
		var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
				+ getUrl.pathname.split('/')[1];
		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var nit_proveedor=   document.getElementById("nit_proveedor").value;
		req.open('GET', baseUrl+'/consultarproveedor?nit_proveedor='+nit_proveedor, false);
		req.send(null);
		var proveedor = null;
		if (req.status == 200)
			proveedor = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		
	

		var element = document.getElementById("error");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.remove("visually-hidden");
		
		console.log(proveedor.toString());
		
	if (proveedor.toString()!=""){

		document.getElementById("nit_proveedor2").value = proveedor[0].nit_proveedor;
		document.getElementById("ciudad_proveedor").value = proveedor[0].ciudad_proveedor;
		document.getElementById("direccion_proveedor").value = proveedor[0].direccion_proveedor;
		document.getElementById("nombre_proveedor").value = proveedor[0].nombre_proveedor;
		document.getElementById("telefono_proveedor").value = proveedor[0].telefono_proveedor;
		
		document.getElementById("nit_proveedor").value = "";
	

	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		document.getElementById("nit_proveedor2").value = "";
		document.getElementById("ciudad_proveedor").value = "";
		document.getElementById("direccion_proveedor").value = "";
		document.getElementById("nombre_proveedor").value = "";
		document.getElementById("telefono_proveedor").value = "";
	}
}
</script>

</body>
</html>