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
	<div class="container-fluid" >
		<h1>Save Travels</h1>
		<table class="table table-hover table-borderless">
			<thead>
				<tr>
					<th>Expense</th>
					<th>Vendor</th>
					<th>Amount</th>	
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="travels" items = "${travels}">
					<tr>
						<td><a href="/expenses/${travels.id}"><c:out value="${travels.name}"></c:out></a></td>
						<td><c:out value="${travels.vendor}"></c:out></td>
						<td>$<c:out value="${travels.amount}"></c:out></td>
						<td class="d-flex align-items-center">
							<a class="me-5" href="/expenses/${travels.id}/edit">edit</a> 
							<form action="/expenses/${travels.id}" method="post">
							    <input type="hidden" name="_method" value="delete">
							    <input class="btn btn-danger" type="submit" value="Delete">
							</form>
						</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h1>Create an Expense</h1>
		<form:form class="" action="/travels" method="post" modelAttribute="travel">
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