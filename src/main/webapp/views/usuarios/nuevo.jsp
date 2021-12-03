<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>

<meta charset="UTF-8" />
<title>Nuevo Usuario</title>

<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div class="row col-4 m-auto">
			<h2>Nuevo Usuario</h2>
			<form>
				<!-- Email input -->
				<div class="form-outline mb-4">
					<input type="text" id="form1Example1" class="form-control"
						name="nombre" /> <label class="form-label" for="form1Example1">Nombre</label>
				</div>

				<!-- Password input -->
				<div class="form-outline mb-4">
					<input type="number" id="form1Example2" class="form-control"
						name="monedas" /> <label class="form-label" for="form1Example2">Monedas</label>
				</div>
				
				<div class="form-outline mb-4">
					<input type="number" id="form1Example3" class="form-control"
						name="tiempo" /> <label class="form-label" for="form1Example3">Tiempo</label>
				</div>

				<!-- 2 column grid layout for inline styling -->


				<!-- Submit button -->
				<button type="submit" class="btn btn-primary btn-block">Ingresar</button>
			</form>
		</div>
	</div>
</body>
</html>