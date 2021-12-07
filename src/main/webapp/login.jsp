<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="partials/head.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="row col-4 mx-auto mt-3">
			<h2>Bienvenidos a Tierra Media</h2>
			<c:if test="${flash != null}">
				<div class="alert alert-danger">
					<p>
						<c:out value="${flash}" />
					</p>
				</div>
			</c:if>
			<form action="login" method="post">
				<!-- Email input -->
				<div class="form-outline mb-4">
					<input type="text" id="form1Example1" class="form-control"
						name="usuario" /> <label class="form-label" for="form1Example1">Usuario</label>
				</div>

				<!-- Password input -->
				<div class="form-outline mb-4">
					<input type="password" id="form1Example2" class="form-control"
						name="clave" /> <label class="form-label" for="form1Example2">Clave</label>
				</div>

				<!-- 2 column grid layout for inline styling -->


				<!-- Submit button -->
				<button type="submit" class="btn btn-primary btn-block">Ingresar</button>
			</form>
		</div>
	</div>
	
	
</body>
</html>