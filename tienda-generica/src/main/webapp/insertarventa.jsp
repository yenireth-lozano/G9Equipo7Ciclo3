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
<title>Insertando ventas</title>
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
						onclick="window.location.href='<%=request.getContextPath()%>/insertarventa.jsp'">
						<i class="fas fa-plus-circle"></i> Agregar venta
					</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='<%=request.getContextPath()%>/eliminarventa.jsp'">
						<i class="fas fa-trash"></i> Eliminar venta
					</button>
					<button type="button" class="btn btn-outline-secondary" 
						onclick="window.location.href='<%=request.getContextPath()%>/actualizarventa.jsp'">
						<i class="fas fa-pen-alt"></i> Actualizar venta
					</button>
					<button type="button" class="btn btn-primary" 
						onclick="window.location.href='<%=request.getContextPath()%>/buscarventa.jsp'">
						<i class="fas fa-search"></i> Buscar un venta
					</button>
					<button type="button" class="btn btn-outline-dark"
					onclick="window.location.href='<%=request.getContextPath()%>/listaventa.jsp'">
						<i class="fas fa-list"></i> Listar todos las ventas
					</button>
				</div>

			</div>
	<div style="padding-left: 5px">
		<h5>
			<i class="fas fa-plus-circle"></i> Datos de la nueva venta
		</h5>
		<div class="container">
		
		
			<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al crear la venta, verifique que no exista una venta </div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Venta creada con exito</div>

		<form id="form1">
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Codigo venta</span> <input
					type="text" class="form-control"
					placeholder="Inserte codigo de venta aqui..."
					aria-describedby="basic-addon1" required id="codigo_venta">
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon2">Cedula cliente</span> <input
					type="text" class="form-control"
					placeholder="Inserte cedula cliente aqui..."
					aria-describedby="basic-addon2" required id="cedula_cliente">
			</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Cedula usuario</span>
					<input type="text" class="form-control"
					placeholder="Inserte cedula usuario aqui..."
					aria-describedby="basic-addon3" required id="cedula_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">IVA venta</span> <input
						type="text" class="form-control"
						placeholder="Inserte IVA venta aqui..."
						aria-describedby="basic-addon4" required id="ivaventa">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Total venta</span> <input
						type="text" class="form-control"
						placeholder="Inserte total venta aqui..."
						aria-describedby="basic-addon5" required id="total_venta">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">valor venta</span> <input
						type="text" class="form-control"
						placeholder="Inserte valor_venta aqui..."
						aria-describedby="basic-addon5" required id="valor_venta">
				</div>
			</div>
		 	</div>
		

			<button type="button" class="btn btn-success" onclick="enviar()">
				<i class="fas fa-check"></i> Insertar nueva Venta
			</button>

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
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			
			var y = document.getElementById("codigo_venta").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET',baseUrl+'/listaventas', false);
			req.send(null);
			var ventas=null;
			if (req.status == 200)
				ventas=JSON.parse(req.responseText);
			  	console.log(JSON.parse(req.responseText));
			  	
			for (i = 0; i < ventas.length; i++) {
				console.log(ventas[i].venta);
				console.log(ventas[i].codigo_venta);

				
				if (ventas[i].codigo_venta ==y ) {
					console.log(ventas[i].codigo_venta +" "+y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);	
			
			if (coincidencia==false){
				var formData = new FormData();
	 			formData.append("codigo_venta", document.getElementById("codigo_venta").value);
	 			formData.append("cedula_cliente", document.getElementById("cedula_cliente").value);
	 			formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
	 			formData.append("ivaventa",document.getElementById("ivaventa").value);
	 			formData.append("total_venta",document.getElementById("total_venta").value);
	 			formData.append("valor_venta",document.getElementById("valor_venta").value);
	 			var xhr = new XMLHttpRequest();
	 			xhr.open("POST",baseUrl+"/registrarventa");
	 			
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				document.getElementById("codigo_venta").value = "";
				document.getElementById("cedula_cliente").value = "";
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("ivaventa").value = "";
				document.getElementById("total_venta").value = "";
				document.getElementById("valor_venta").value = "";
	 			xhr.send(formData);

			}else{
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("codigo_venta").value = "";
				document.getElementById("cedula_cliente").value = "";
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("ivaventa").value = "";
				document.getElementById("total_venta").value = "";
				document.getElementById("valor_venta").value = "";
			}	
		}
	</script>

</body>
</html>