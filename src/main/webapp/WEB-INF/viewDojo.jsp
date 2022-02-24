<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Dojos and Ninjas</title>
</head>
<body>
	<div class="container">
		<h1>
			<c:out value="${ dojo.name }"></c:out>
			Location Ninjas
		</h1>
		<table class="table">
			<thead>
				<tr>
					<th>First name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ninja" items="${ dojo.ninjas }">
					<tr>
						<td><c:out value="${ ninja.firstName }"></c:out></td>
						<td><c:out value="${ ninja.lastName }"></c:out></td>
						<td><c:out value="${ ninja.age }"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>