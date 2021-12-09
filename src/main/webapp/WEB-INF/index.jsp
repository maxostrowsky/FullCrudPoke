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
<div class="container mt-5">
	<h1>PokeBook</h1>
</div>
	<div class="container mt-5">
		<table class="table tale-striped">
		<thead>
			<tr>
				<th>Expense</th>
				<th>Vendor</th>
				<th>Amount</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="expense" items="${expenses }">
				<tr>
					<td><a href="/show/${expense.id}">${expense.name }</a></td>
					<td>${expense.vendor }</td>
					<td>$${expense.amount }</td>
					<td class="d-flex">
						<a href="/edit/${expense.id}/one" class="btn btn-warning me-3">Edit</a>
						<form action="/trip/${expense.id}/delete" method="post">
    					<input type="hidden" name="_method" value="delete">
    					<input type="submit" value="Delete" class="btn btn-danger"></form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		<div class="container mt-5">
			<form:form action="/newExpense" method="post" modelAttribute="newExpense" class="form">
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
	</div>
</body>
</html>