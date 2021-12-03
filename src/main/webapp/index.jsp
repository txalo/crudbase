<!doctype html>
<html lang="en">
<head>

<meta charset="UTF-8" />
<title>Inicio</title>

<jsp:include page="partials/head.jsp"></jsp:include>
</head>
<body>
	<main class="container">
		<div class="row col-2 my-3">
			<a href="#" class="btn btn-primary"><i class="fas fa-user"></i> Agregar</a>
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
					<tr>
						<td>1</td>
						<td><img src="assets/imgs/sam.jpg" alt="" height=50
							style="border-radius: 50%" /></td>
						<td>Sam</td>
						<td>100</td>
						<td>2.5</td>
						<td><a href="#" class="btn btn-warning"><i
								class="fa fa-edit"></i></a> <a href="#" class="btn btn-danger"><i
								class="fas fa-trash"></i></a></td>
					</tr>
					<tr>
						<td>2</td>
						<td><img src="assets/imgs/gandalf.jpg" alt="" height=50
							style="border-radius: 50%" /></td>
						<td>Gandalf</td>
						<td>150</td>
						<td>5</td>
						<td><a href="#" class="btn btn-warning"><i
								class="fa fa-edit"></i></a> <a href="#" class="btn btn-danger"><i
								class="fas fa-trash"></i></a></td>
					</tr>
					<tr>
						<td>3</td>
						<td><img src="assets/imgs/legolas.jpg" alt="" height=50
							style="border-radius: 50%" /></td>
						<td>Legolas</td>
						<td>50</td>
						<td>5.5</td>
						<td><a href="#" class="btn btn-warning"><i
								class="fa fa-edit"></i></a> <a href="#" class="btn btn-danger"><i
								class="fas fa-trash"></i></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
</body>
</html>

