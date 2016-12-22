<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';

		$('.table').DataTable({
			"lengthMenu" : [ [ 5, 10, -1 ], [ 5, 10, "All" ] ],
		});
	});
</script>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Product Inventory Page</h1>

			<p class="lead">This is the product inventory page!</p>
		</div>

		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Photo Thumb</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Condition</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${products}" var="product">
				<tr>
					<td><img
						src="<c:url value="/resources/images/${product.productId}.png" /> "
						alt="image" style="width: 100%" /></td>
					<td>${product.productName}</td>
					<td>${product.productCategory}</td>
					<td>${product.productCondition}</td>
					<td>${product.productPrice}USD</td>
					<!-- Add view product icon -->
					<td><a
						href="<spring:url value="/product/viewProduct/${product.productId}" />"><span
							class="glyphicon glyphicon-info-sign"></span></a> <!-- Add delete product icon -->
						<a
						href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span
							class="glyphicon glyphicon-remove"></span></a> <!-- Add edit product icon -->
						<a
						href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span
							class="glyphicon glyphicon-pencil"></span></a></td>
				</tr>
			</c:forEach>
		</table>

		<a href="<spring:url value="/admin/product/addProduct" />"
			class="btn btn-primary">Add Product</a>
	
<%@include file="/WEB-INF/views/template/footer.jsp"%>