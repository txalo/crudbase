<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>

<meta charset="UTF-8" />
<title>Inicio</title>

<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/partials/nav.jsp"></jsp:include>
	</header>
	<main class="container">
		<div class="row">
			<a href="/crudbase/usuario/agregar.do"
				class="btn btn-primary col-2 my-3"><i class="fas fa-user"></i>
				Agregar</a> <a href="/crudbase/salir"
				class="btn btn-danger col-2 my-3 mx-3"><i
				class="fas fa-sign-out-alt"></i> Salir</a>
		</div>
		<div class="row">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Foto</th>
						<th>Nombre</th>
						<th>Dinero</th>
						<th>Tiempo</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${usuarios}" var="usr">
						<tr>
							<td><c:out value="${usr.ID}" /></td>
							<td><img src=<c:out value="/crudbase/assets/imgs/${usr.nombre}.jpg" /> alt="" height=50
								style="border-radius: 50%" /></td>
							<td><c:out value="${usr.nombre}" /></td>
							<td><c:out value="${usr.monedas}" /></td>
							<td><c:out value="${usr.tiempo}" /></td>
							<td>
								<a href="/crudbase/usuarios/editar.do?ID=<c:out value="${usr.ID}" />" class="btn btn-warning">
									<i class="fa fa-edit"></i>
								</a> 
								<a href="/crudbase/usuarios/borrar.do?ID=<c:out value="${usr.ID}" />" class="btn btn-danger">
									<i class="fas fa-trash"></i>
								</a>
							</td>
						</tr>
					</c:forEach>					
				</tbody>
			</table>
		</div>
	</main>
</body>
</html>

