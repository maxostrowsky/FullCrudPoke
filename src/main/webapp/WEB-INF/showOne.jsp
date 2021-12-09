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
<div class="container d-flex justify-content-between">
	<h1>Expense Details</h1>
	<a href="/dashboard" class="btn btn-success">Go Back</a>
</div>
<div class="container d-flex flex-column">
	<p>Expense Name: ${expense.name }</p>
	<p>Expense Description: ${expense.description }</p>
	<p>Vendor: ${expense.vendor }</p>
	<p>Amount Spent: ${expense.amount }</p>
</div>
</body>
</html>