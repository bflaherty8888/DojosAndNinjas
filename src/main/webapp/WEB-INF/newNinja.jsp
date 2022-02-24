<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Ninjas and Dojos</title>
</head>
<body>
	<div class="container my-4">
		<h1>New Ninja</h1>
		<form:form action="/ninjas/create" method="post"
			modelAttribute="ninja" class="form-control">
			<p>
				<form:label path="dojo" class="form-label">Dojo:</form:label>
				<form:select path="dojo" class="form-control">
					<c:forEach var="dojo" items="${ dojos }">
						<form:option value="${ dojo }">
							<c:out value="${ dojo.name }"></c:out>
						</form:option>
					</c:forEach>
				</form:select>
				<form:errors path="dojo"
					class="form-text alert alert-danger p-1 border-top-0" />
			</p>
			<p>
				<form:label path="firstName" class="form-label">First Name:</form:label>
				<form:input path="firstName" class="form-control" />
				<form:errors path="firstName"
					class="form-text alert alert-danger p-1 border-top-0" />
			</p>
			<p>
				<form:label path="lastName" class="form-label">Last Name:</form:label>
				<form:input path="lastName" class="form-control" />
				<form:errors path="lastName"
					class="form-text alert alert-danger p-1 border-top-0" />
			</p>
			<p>
				<form:label path="age" class="form-label">First Name:</form:label>
				<form:input path="age" class="form-control" type="number" />
				<form:errors path="age"
					class="form-text alert alert-danger p-1 border-top-0" />
			</p>
			<input type="submit" class="form-control btn btn-primary mt-3">
		</form:form>
	</div>
</body>
</html>