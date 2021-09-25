<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
      <title>Formulario Login</title>
      <!-- bootstrap-->
      <link
	          href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	          rel="stylesheet"
	          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	          crossorigin="anonymous">
      <!-- font awesome -->      
      <link rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
            integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
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
  	<div class="col-4">
	    <a class="navbar-brand links" href="login.jsp"><i class="fas fa-sign-in-alt"></i> Iniciar sesión</a>
	  </div>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button type="button" class="btn btn-outline-info">Search</button>
    </form>
  </div>
</nav>
  <!-- Contenedor de los botones y texto -->
    <section class="formulario_login">
      <form action="listausuarios.jsp">
				<img class="avatar"src="avatar9.svg">
      <h4 class="titulologin">
              <i class="fas fa-hand-holding-usd"></i> Bienvenidos a la Tienda Genérica
              </h4>
       <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i
					class="fas fa-user-check"></i></span> 
					<input id="inputuser" type="text"
					class="form-control" placeholder="Usuario" aria-label="Usuario"
					aria-describedby="basic-addon1">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1"><i
					class="fas fa-key"></i> </span> <input id="inputpass" type="password"
					class="form-control" placeholder="Contraseña" aria-label="Contraseña"
					aria-describedby="basic-addon1">
			</div>
			<div style="margin: auto; text-align: center;">
				<button type="buttons" class="btn btn-outline-primary" onclick="comparar()">
					<i class="fas fa-sign-in-alt"></i> Ingresar
				</button>
				<button type="buttons" class="btn btn-outline-success">
					<i class="fas fa-th-list"></i> Registrarse
				</button>
				<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Usuario o contraseña incorrecta!</div>
			</div>
		</div>
	</div>
    <p><a href="#">¿Ha olvidado la Contraseña?</a></p>
	<nav class="navbar fixed-bottom navbar-light" style="background-color: #9a8f97;">
<div class="grid" style="--bs-columns: 18; --bs-gap: .5rem;">
  <div class="g-col-4"></div>
</div>
	      <a class="navbar-brand links" href="#"><i class="fas fa-cubes"></i>Diseñado y programado por Scrum 7 
	    </div>
			<!--  
			<div class="col-4">
				<a class="navbar-brand links" href="https://github.com/roca12"><i
					class="fab fa-github-square"></i> Github</a> <a
					class="navbar-brand links" href=""><i class="fab fa-twitter"></i>
					Twitter</a>
			</div>
			-->
		</div>
	</nav>
	
	<!-- Script que trae la informacion de la api y la compara con las entradas -->
	<script>
		function comparar() {
			//trayendo texto de input de username
			var x = document.getElementById("inputuser").value;
			//trayendo texto de input de password
			var y = document.getElementById("inputpass").value;
			//url de la api 
			var baseurl = "http://localhost:8080/listarusuarios";
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			//funcion interna que compara la información
			xmlhttp.onreadystatechange = function() {
				//si se obtiene un 200 (Conexion correcta)
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					//convirtiendo JSON en variable javascrip
					var usuarios = JSON.parse(xmlhttp.responseText);
					
					//verificando uno por uno si existe ese usuario
					for (i = 0; i < usuarios.length; i++) {
						
						//imprimiendo en la consola del navegador pata verificar
						console.log(usuarios);
						console.log(x);
						console.log(usuarios[i].usuario);
						console.log(y);
						console.log(usuarios[i].password);
						
						//si el nombre coincide
						if (usuarios[i].usuario === x) {
							//si la clave coincide
							if (usuarios[i].password === y) {
								console.log("si");
								var element = document.getElementById("error");
								element.classList.add("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								window.location.href = "listausuarios.jsp";
								return;
							} else {
								//si la clave NO coincide
								console.log("error clave");
								var element = document.getElementById("error");
								element.classList.remove("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								return;
							}
						}
					}
					//Si no existe el usuario
					console.log("no encontrado");
					
					//quitando la capacidad de ocultacion del error para mostrarlo
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
					document.getElementById("inputuser").value = "";
					document.getElementById("inputpass").value = "";
					return;
				}
			};
			//ejecutando
			xmlhttp.send();
		}
   
    </script>
  </body>
</html>