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
<body style="background-image: url('images/bg-image.jpeg')">
	<div class="container-fluid">
		<div class="mb-3 d-flex align-items-center">
			<h1 class="me-5">Edit an Expense</h1>
			<a class="ms-3" href="/expenses">Go back</a>
		</div>
		<form:form class="form" action="/expenses/${travel.id}" method="post" modelAttribute="travel">
			<input type="hidden" name="_method" value="put">
			<div>
				<form:label class="fw-bold mt-2 form-label" path='name'>Expense Name:</form:label>
				<form:errors class="text-danger" path="name"/>
	   			<form:input class="form-control" path='name'/>
			</div>
			<div>
				<form:label class="fw-bold mt-2 form-label" path='amount'>Amount:</form:label>
				<form:errors class="text-danger" path="amount"/>
				<form:input class="form-control" type='number' path='amount'/>
			</div>
			<div>
				<form:label class="fw-bold mt-2 form-label" path='vendor'>Vendor Name:</form:label>
				<form:errors class="text-danger" path="vendor"/>
				<form:input class="form-control" path='vendor'/>	    		
			</div>			
	   		<div>
	   			<form:label class="fw-bold mt-2 form-label" path="description">Description:</form:label>
	   			<form:errors class="text-danger" path="description"/>
	   			<form:textarea class="form-control" path="description" cols="20" rows="3"></form:textarea>
	   		</div>
	   		<input class="mt-3 border border-dark rounded" type="submit" value="Submit"/>
   		</form:form>
	</div>

</body>
</html>
