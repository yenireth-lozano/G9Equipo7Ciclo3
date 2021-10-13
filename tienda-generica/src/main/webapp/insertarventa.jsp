<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Ventas</title>
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
						<i class="fas fa-plus-circle"></i> Agregar Venta
					</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='<%=request.getContextPath()%>/eliminarcliente.jsp'">
						<i class="fas fa-trash"></i> Anular cliente
					</button>
					<button type="button" class="btn btn-primary" 
						onclick="window.location.href='<%=request.getContextPath()%>/buscarcliente.jsp'">
						<i class="fas fa-search"></i> Buscar un cliente
					</button>
					<button type="button" class="btn btn-outline-dark"
					onclick="window.location.href='<%=request.getContextPath()%>/listaventas.jsp'">
						<i class="fas fa-list"></i> Listar todos las ventas
					</button>
				</div>

			</div>
		</div>

	</div>

	<div style="padding-left: 5px">
		<h5>
			<i class="fas fa-plus-circle"></i> Registar Ventas
		</h5>
		<div class="container">
		
   <div class="container">         

  <table class="table">
    <tbody>
      <tr>
        <td><span class="input-group-text" id="basic-addon4">Cedula</span></td>
        <td><input
						type="text" class="form-control"
						placeholder="Inserte cedula del cliente a facturar..."
						aria-describedby="basic-addon4" required id="cedula_cliente" ></td>
        <td><button type="submit" class="btn btn-primary   mb-3">Consultar</button></td>
        <td><label for="validationCustom01" class="form-label">Cliente</label></td>
        <td><input type="text" class="form-control" required id="nombre_cliente" disabled="disabled"></td>
        <td><label for="validationCustom02" class="form-label">Consecutivo</label></td>
        <td><input type="text" class="form-control" required id="contador" disabled="disabled"></td>
      </tr>


    </tbody>
  </table>

  <table class="table">
    <thead>
      <tr>
        <th>Cod.producto</th>
        <th>       </th>
        <th>Nombre Producto</th>
        <th>Cantidad</th>
        <th>Valor total</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input
				type="text" class="form-control"
				placeholder="Inserte codigo del producto..."
				aria-describedby="basic-addon4" required id="cedula_cliente" ></td>
        <td><button type="submit" class="btn btn-primary   mb-3">Consultar</button></td>
        <td><input
				type="text" class="form-control" aria-describedby="basic-addon4" required id="nombre_producto" disabled="disabled" ></td>
        <th><input
				type="text" class="form-control"
				placeholder="Inserte cantidad a facturar..."
				aria-describedby="basic-addon4" required id="cantidad_producto" ></th>
        <th><input type="text" class="form-control" aria-describedby="basic-addon4" required id="valor_total" disabled="disabled" ></th>
      </tr>
      <tr>
        <td><input
				type="text" class="form-control"
				placeholder="Inserte codigo del producto..."
				aria-describedby="basic-addon4" required id="cedula_cliente" ></td>
        <td><button type="submit" class="btn btn-primary   mb-3">Consultar</button></td>
        <td><input
				type="text" class="form-control" aria-describedby="basic-addon4" required id="nombre_producto" disabled="disabled" ></td>
        <th><input
				type="text" class="form-control"
				placeholder="Inserte cantidad a facturar..."
				aria-describedby="basic-addon4" required id="cantidad_producto" ></th>
        <th><input type="text" class="form-control" aria-describedby="basic-addon4" required id="valor_total" disabled="disabled" ></th>
      </tr>
      <tr>
        <td><input
				type="text" class="form-control"
				placeholder="Inserte codigo del producto..."
				aria-describedby="basic-addon4" required id="cedula_cliente" ></td>
        <td><button type="submit" class="btn btn-primary   mb-3">Consultar</button></td>
        <td><input
				type="text" class="form-control" aria-describedby="basic-addon4" required id="nombre_producto" disabled="disabled" ></td>
        <th><input
				type="text" class="form-control"
				placeholder="Inserte cantidad a facturar..."
				aria-describedby="basic-addon4" required id="cantidad_producto" ></th>
        <th><input type="text" class="form-control" aria-describedby="basic-addon4" required id="valor_total" disabled="disabled" ></th>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td><label for="validationCustom02" class="form-label">Total venta</label></td>
        <td><input type="text" class="form-control" aria-describedby="basic-addon4" required id="valor_total" disabled="disabled" ></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td><label for="validationCustom02" class="form-label">Total Iva</label></td>
        <td><input type="text" class="form-control" aria-describedby="basic-addon4" required id="valor_total" disabled="disabled" ></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td><button type="button" class="btn btn-primary" onclick="enviar()">
				<i class="fas fa-search-plus"></i> Confirmar
			</button></td>
        <td><label for="validationCustom02" class="form-label">Total con Iva</label></td>
        <td><input type="text" class="form-control" aria-describedby="basic-addon4" required id="valor_total" disabled="disabled" ></td>
      </tr>
    </tbody>
  </table>
</div>

<div style="height: 200px; width: 100%;"></div>
 
	<script>
	function enviar() {

		var getUrl = window.location;
		var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
				+ getUrl.pathname.split('/')[1];
		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var cedula_cliente=   document.getElementById("cedula_cliente").value;
		req.open('GET',baseUrl+'/consultarcliente?cedula_cliente='+cedula_cliente, false);
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

		document.getElementById("cedula_cliente2").value = cliente[0].cedula_cliente;
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
		document.getElementById("cedula_cliente2").value = "";
		document.getElementById("direccion_cliente").value = "";
		document.getElementById("email_cliente").value = "";
		document.getElementById("nombre_cliente").value = "";
		document.getElementById("telefono_cliente").value = "";
	}
}
</script>

</body>
</html>