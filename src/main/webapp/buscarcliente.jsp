<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama�o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta�a -->
<title>Buscar cliente</title>
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
<link href="style1.css" rel="stylesheet" type="text/css" />



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
			<a class="navbar-brand links" href="listaproveedores.jsp">
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
						onclick="window.location.href='/insertarcliente.jsp'">
						<i class="fas fa-plus-circle"></i> Agregar cliente
					</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='/eliminarcliente.jsp'">
						<i class="fas fa-trash"></i> Eliminar cliente
					</button>
					<button type="button" class="btn btn-outline-secondary" 
						onclick="window.location.href='/actualizarcliente.jsp'">
						<i class="fas fa-pen-alt"></i> Actualizar cliente
					</button>
					<button type="button" class="btn btn-primary" 
						onclick="window.location.href='/buscarcliente.jsp'">
						<i class="fas fa-search"></i> Buscar un cliente
					</button>
					<button type="button" class="btn btn-outline-dark"
					onclick="window.location.href='/listacliente.jsp'">
						<i class="fas fa-list"></i> Listar todos los clientes
					</button>
				</div>

			</div>
		</div>

	</div>

	<div style="padding-left: 5px">
		<h5>
			<i class="fas fa-plus-circle"></i> Buscando un cliente
		</h5>
		<div class="container">
		
		
			<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al buscar el cliente, el cliente no existe</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Cliente encontrado con exito</div>

			<form id="form1">
			
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Cliente a buscar</span> <input
						type="text" class="form-control"
						placeholder="Inserte cedula del cliente aqui..."
						aria-describedby="basic-addon4" required id="cedula_cliente" >
				</div>
				<br>
				<br>
				<br>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Cedula</span> <input
						type="text" class="form-control"
						placeholder="Inserte cedula aqui..."
						aria-describedby="basic-addon1" required id="cedula_cliente" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Direccion</span> <input
						type="text" class="form-control"
						placeholder="Inserte direccion del cliente aqui..."
						aria-describedby="basic-addon2" required id="direccion_cliente" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Email</span>
					<input type="text" class="form-control"
						placeholder="Inserte email aqui..."
						aria-describedby="basic-addon3" required id="email_cliente" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre</span> <input
						type="text" class="form-control"
						placeholder="Inserte nombre del cliente aqui..."
						aria-describedby="basic-addon4" required id="nombre_cliente" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Telefono</span> <input
						type="text" class="form-control"
						placeholder="Inserte numero de telefono aqui..."
						aria-describedby="basic-addon5" required id="telefono_cliente" disabled="disabled">
				</div>



			</form>

			<button type="button" class="btn btn-primary" onclick="enviar()">
				<i class="fas fa-search-plus"></i> Buscar cliente
			</button>
			<br>
			<br>
			<br>

	<nav class="navbar fixed-bottom navbar-light" style="background-color: #9a8f97;">
		<div class="grid" style="--bs-columns: 18; --bs-gap: .5rem;">
  			<div class="g-col-4">
  			</div>
		</div>
			<a class="navbar-brand links" href="#"><i class="fas fa-cubes"></i>Dise�ado y programado por Scrum 7 
			</a>
  	</nav>
	<script>
		function enviar() {

				
				var req = new XMLHttpRequest();
				var coincidencia = false;
				var cedula_cliente=   document.getElementById("cedula_cliente").value;
				req.open('GET', 'http://localhost:8080/consultarcliente?cedula_cliente='+cedula_cliente, false);
				req.send(null);
				var cliente = null;
				if (req.status == 200)
					cliente = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));
				
			

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				console.log(cliente.toString());
				
			if (cliente.toString()!=""){

				document.getElementById("cedula_cliente").value = cliente[0].cedula_cliente;
				document.getElementById("direccion_cliente").value = cliente[0].direccion_cliente;
				document.getElementById("email_cliente").value = cliente[0].email_cliente;
				document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;
				document.getElementById("telefono_cliente").value = cliente[0].telefono_cliente;
				
				document.getElementById("cedula_cliente").value = "";
			

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_cliente").value = "";
				document.getElementById("direccion_cliente").value = "";
				document.getElementById("email_cliente").value = "";
				document.getElementById("nombre_cliente").value = "";
				document.getElementById("telefono_cliente").value = "";
			}
		}
	</script>

</body>
</html>