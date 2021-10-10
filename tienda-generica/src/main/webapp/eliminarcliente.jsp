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
<title>Eliminar cliente</title>
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
						onclick="window.location.href='<%=request.getContextPath()%>/insertarcliente.jsp'">
						<i class="fas fa-plus-circle"></i> Agregar cliente
					</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='<%=request.getContextPath()%>/eliminarcliente.jsp'">
						<i class="fas fa-trash"></i> Eliminar cliente
					</button>
					<button type="button" class="btn btn-outline-secondary"
						onclick="window.location.href='<%=request.getContextPath()%>/actualizarcliente.jsp'">
						<i class="fas fa-pen-alt"></i> Actualizar cliente
					</button>
					<button type="button" class="btn btn-primary"
						onclick="window.location.href='<%=request.getContextPath()%>/buscarcliente.jsp'">
						<i class="fas fa-search"></i> Buscar un cliente
					</button>
					<button type="button" class="btn btn-outline-dark"
					onclick="window.location.href='<%=request.getContextPath()%>/listaclientes.jsp'">
						<i class="fas fa-list"></i> Listar todos los clientes
					</button>
				</div>

			</div>
		</div>

	</div>

	<div style="padding-left: 5px">
		<h5>
			<i class="fas fa-plus-circle"></i> Datos del cliente a eliminar
		</h5>
		<div class="container">
		
		
			<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al eliminar el cliente, verifique que 
				exista un cliente con numero de cedula ingresado</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">cliente eliminado con exito</div>

			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Cedula</span> <input
						type="text" class="form-control"
						placeholder="Inserte cedula aqui..."
						aria-describedby="basic-addon1" required id="cedula_cliente">
				</div>
				
			</form>

			<button type="button" class="btn btn-danger" onclick="eliminar()">
				<i class="fas fa-skull-crossbones"></i> Eliminar cliente
			</button>




	
	<nav class="navbar fixed-bottom navbar-light" style="background-color: #9a8f97;">
		<div class="grid" style="--bs-columns: 18; --bs-gap: .5rem;">
  			<div class="g-col-4">
  			</div>
		</div>
			<a class="navbar-brand links" href="#"><i class="fas fa-cubes"></i>
			Diseñado y programado por Scrum 7 
			</a>
  	</nav>
	<script>
		function eliminar() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			
			var y = document.getElementById("cedula_cliente").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET',baseUrl+'/listacliente', false);
			req.send(null);
			var cliente = null;
			if (req.status == 200)
				cliente = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < cliente.length; i++) {
				
				console.log(cliente[i].cedula_cliente);
				if (cliente[i].cedula_cliente == y) {
					console.log(cliente[i].cedula_cliente + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var cedula=document.getElementById("cedula_cliente").value;
				
				var xhr = new XMLHttpRequest();
				xhr.open("DELETE",baseUrl+"/eliminarcliente?cedula_cliente="+cedula);
				
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_cliente").value = "";
				xhr.send();

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				
				document.getElementById("cedula_cliente").value = "";;
			}
		}
	</script>


</body>
</html>