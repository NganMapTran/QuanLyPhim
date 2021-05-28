<%@page contentType="text/html" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<a class="nav-item nav-link" href="admin-home">Home<span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="admin-user">User</a> <a class="nav-item nav-link active"
					href="admin-video ">Video </a> <a class="nav-item nav-link"
					href="favorites-thongke1">Favorites</a>
			</div>
		</div>
	</nav>



	<div class="mx-auto" style="width: 400px;">

		<c:choose>
			<c:when test="${empty sessionScope.user}">
		Welcome you
	</c:when>
			<c:otherwise>
		Welcome ${sessionScope.user.fullname}
		<a href="sign-out">Đăng xuất</a>
				<c:if test="${sessionScope.user.admin}">
					<a href="admin-home">Quản trị</a>
				</c:if>
			</c:otherwise>
		</c:choose>

		<hr>

		<!-- Thông báo -->
		${message}

		<c:url var="url" value="/" />
		<!-- Form -->
		<hr>



		<form action="${url}/index" method="post">

			<input value="${form.id}" name="id" type="text" class="form-control"
				placeholder="Id" aria-label="Recipient's username"
				aria-describedby="basic-addon2"><br> <input
				value="${form.title}" name="title" type="text" class="form-control"
				placeholder="Title" aria-label="Recipient's username"
				aria-describedby="basic-addon2"><br> <input
				value="${form.poster}" name="poster" type="text"
				class="form-control" placeholder="Poster"
				aria-label="Recipient's username" aria-describedby="basic-addon2"><br>
			<input value="${form.description}" name="description" type="text"
				class="form-control" placeholder="Description"
				aria-label="Recipient's username" aria-describedby="basic-addon2"><br>

			<div class="form-check">
				<input ${form.active?'checked':''} value="true"
					class="form-check-input" type="radio" name="active"
					id="flexRadioDefault1"> <label class="form-check-label"
					for="flexRadioDefault1"> True </label>
			</div>
			<div class="form-check">
				<input ${form.active?'':'checked'} value="false"
					class="form-check-input" type="radio" name="active"
					id="flexRadioDefault2" checked> <label
					class="form-check-label" for="flexRadioDefault2"> False </label>
			</div>
			<br> <input value="${form.views}" name="views" type="text"
				class="form-control" placeholder="Views"
				aria-label="Recipient's username" aria-describedby="basic-addon2"><br>

			<div class="form-group">
				<label for="exampleFormControlTextarea2"></label>
				<textarea name="urlVideo" class="form-control rounded-0"
					id="exampleFormControlTextarea2" rows="3">${form.urlVideo}</textarea>
			</div>



			<%-- <input value="${form.urlVideo}" name="urlVideo" type="text"
				class="form-control" placeholder="UrlVideo"
				aria-label="Recipient's username" aria-describedby="basic-addon2"><br> --%>








			<hr>
			<button formaction="${url}/video-create"
				class="btn btn-outline-success">Create</button>
			<button formaction="${url}/video-update"
				class="btn btn-outline-success">Update</button>
			<button formaction="${url}/video-delete"
				class="btn btn-outline-success">Delete</button>
			<button formaction="${url}/admin-video"
				class="btn btn-outline-success">Reset</button>
		</form>


		<br>
		<!-- Bảng -->
		<form action="search-video" method="post">
			<div class="input-group mb-3">
			<input type="text" class="form-control" name="title"
				placeholder="Search title username" aria-label="Recipient's username"
				aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="submit">Search</button>
			</div>
		</div>
		</form>
	</div>

	<br>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Title</th>
				<th scope="col">Poster</th>
				<th scope="col">Description</th>
				<th scope="col">Active</th>
				<th scope="col">Views</th>
				<th scope="col">urlVideo</th>
				<th scope="col">EDIT</th>
			</tr>
		</thead>
		<c:forEach var="video" items="${videos}">
			<tr>
				<td>${video.id}</td>
				<td>${video.title}</td>
				<!-- 
				
				
					<td>${video.poster}</td>
				 -->
				<td><img style="width: 250px; height: 300px" class="img-fluid"
					src='<c:url value="/views/ASM/images/${video.poster}"></c:url>'
					alt=""></td>
				<td>${video.description}</td>
				<td>${video.active}</td>
				<td>${video.views}</td>
				<td>${video.urlVideo}</td>
				<td><a href="${url}/video-edit/${video.id}">Edit</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>




</body>
</html>