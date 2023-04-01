<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<title>Save Travels</title>
</head>
<body>
	<div class="container-fluid">
		<div class="mb-3 d-flex align-items-center">
			<h1 class="me-5">Expense Details</h1>
			<a class="ms-3" href="/expenses">Go back</a>
		</div>
		<div class="fw-bold">
			<p>Expense Name: <span class="fw-normal"><c:out value="${travel.name}"></c:out></span></p>
			<p>Expense Description: <span class="fw-normal"><c:out value="${travel.description}"></c:out></span></p>
			<p>Expense Vendor: <span class="fw-normal"><c:out value="${travel.vendor}"></c:out></span> </p>
			<p>Expense Amount: <span class="fw-normal"><c:out value="${travel.amount}"></c:out></span> </p>
		</div>
		
		
		
	</div>
</body>
</html>