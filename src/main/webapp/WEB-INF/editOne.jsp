	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ page isErrorPage="true" %>  
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	</head>
	<body>
		<div class="container">
			<h1>Edit Expense</h1>
			<a href="/dashboard" class="btn btn-success">Go Back</a>
		</div>
		<div class="container mt-5">
			<form:form action="/edit/${expense.id}/one" method="post" modelAttribute="expense" class="form">
			<form:label path="name" class="form-label">Expense</form:label>
			<form:errors path="name" class="text-danger" />
			<form:input path="name" type="text" class="form-control" />
			
			<form:label path="vendor" class="form-label">Vendor</form:label>
			<form:errors path="vendor" class="text-danger" />
			<form:input path="vendor" type="text" class="form-control" />
			
			<form:label path="amount" class="form-label">Amount</form:label>
			<form:errors path="amount" class="text-danger" />
			<form:input path="amount" type="number" class="form-control" />
			
			<form:label path="description" class="form-label">Description</form:label>
			<form:errors path="description" class="text-danger" />
			<form:input path="description" type="text" class="form-control" />
			
			<button class="btn btn-primary mt-3">Submit</button>
			</form:form>
		</div>
	</body>
	</html>