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
		<table class="table table-dark text-center">
			<c:forEach var="dojo" items="${ dojos }">
				<tr>
					<td><a href="/dojos/${ dojo.id }" class="link-light"><c:out
								value="${ dojo.name }"></c:out></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>