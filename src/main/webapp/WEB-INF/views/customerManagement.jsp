<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Customer management page</h1>

			<p class="lead">All registered customer</p>
		</div>

		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Customer Id</th>
					<th>Customer Name</th>
					<th>Customer Email</th>
					<th>Customer Phone</th>
					<th>UserName</th>
					<th>Password</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${customers}" var="customer">
				<tr>
					<td>${customer.customerId}</td>
					<td>${customer.customerName}</td>
					<td>${customer.customerEmail}</td>
					<td>${customer.customerPhone}</td>
					<td>${customer.username}</td>
					<td>${customer.password}</td>
					<!-- Add view product icon -->
					<td><a
						href="<spring:url value="/admin/customerManagement/deleteCustomer/${customer.customerId}" />"><span
							class="glyphicon glyphicon-remove"></span></a>
							<a
						href="<spring:url value="/admin/customerManagement/viewCustomerInfo/${customer.customerId}" />"><span
							class="glyphicon glyphicon-info-sign"></span></a>
							</td>
				</tr>
			</c:forEach>
		</table>


		<%@include file="/WEB-INF/views/template/footer.jsp"%>