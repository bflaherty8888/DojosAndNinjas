<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<div class="container my-4">
		<h1>New Dojo</h1>
		<form:form action="/dojos/create" method="post" modelAttribute="dojo"
			class="form-control">
			<p>
				<form:label path="name" class="form-label">Name:</form:label>
				<form:input path="name" class="form-control" />
				<form:errors path="name"
					class="form-text alert alert-danger p-1 border-top-0" />
			</p>
			<input type="submit" class="form-control btn btn-primary mt-3">
		</form:form>
	</div>
</body>
</html>