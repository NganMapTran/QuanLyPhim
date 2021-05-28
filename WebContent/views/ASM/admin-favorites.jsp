<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">DHLN - Admin</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="admin-home">Home <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="admin-user">User</a> <a class="nav-item nav-link"
					href="admin-video">Video</a> <a class="nav-item nav-link active"
					href="admin-favorites">Favorites</a>
			</div>
		</div>
	</nav>



	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">VIDEO TITLE</th>
				<th scope="col">FAVORITE COUNT</th>
				<th scope="col">LAST DATE</th>
				<th scope="col">OLDEST DATE</th>
			</tr>
		</thead>
		<c:forEach var="list1" items="${list1}">
			<tr>
				<td>${list1.group}</td>
				<td>${list1.likes}</td>
				<td>${list1.newest}</td>
				<td>${list1.oldest  }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<br>
	<hr>


	<!-- Bảng -->


	<br>

	<form action="favorites-thongke2" method="post">
		<div class="input-group mb-3">
			<select class="form-control form-control-sm" name="chon">
				<c:forEach var="titles" items="${titleList}">
					<option value="${titles.title}">${titles.title}</option>
				</c:forEach>
			</select>

			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="submit">Search</button>
			</div>
		</div>
	</form>

	<br>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">USERNAME</th>
				<th scope="col">FULLNAME</th>
				<th scope="col">EMAIL</th>
				<th scope="col">LIKE DATE</th>
			</tr>
		</thead>
		<c:forEach var="item" items="${list2}">
			<tr>
				<td>${item.id}</td>
				<td>${item.fullname}</td>
				<td>${item.email}</td>
				<td>${item.likeDate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>




</body>
</html>