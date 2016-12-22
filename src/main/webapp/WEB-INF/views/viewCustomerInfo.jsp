<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Customer information</h1>

			<p class="lead">Here is the detail information about the customer</p>
		</div>

		<div class="container">
			<div class="row">


				<div class="col-md-4">
					<h3>Customer</h3>
					<p>
						<strong>Name:</strong> ${customer.customerName}
					</p>
					<p>
						<strong>Username:</strong> ${customer.username}
					</p>
					<p>
						<strong>Password:</strong> ${customer.password}
					</p>
					<p>
						<strong>Email:</strong> ${customer.customerEmail}
					</p>
					<p>
						<strong>Phone number:</strong> ${customer.customerPhone}
					</p>
				</div>
				<div class="col-md-4">
					<h3>Billing address</h3>
					<p>
						<strong>Street name:</strong>
						${customer.billingAddress.streetName}
					</p>
					<p>
						<strong>Apartment number:</strong>
						${customer.billingAddress.apartmentNumber}
					</p>
					<p>
						<strong>City:</strong> ${customer.billingAddress.city}
					</p>
					<p>
						<strong>State:</strong> ${customer.billingAddress.state}
					</p>
					<p>
						<strong>Country:</strong> ${customer.billingAddress.country}
					</p>
					<p>
						<strong>Zip Code:</strong> ${customer.billingAddress.zipCode}
					</p>
				</div>
				<div class="col-md-4">
					<h3>Shipping address</h3>
					<p>
						<strong>Street name:</strong>
						${customer.shippingAddress.streetName}
					</p>
					<p>
						<strong>Apartment number:</strong>
						${customer.shippingAddress.apartmentNumber}
					</p>
					<p>
						<strong>City:</strong> ${customer.shippingAddress.city}
					</p>
					<p>
						<strong>State:</strong> ${customer.shippingAddress.state}
					</p>
					<p>
						<strong>Country:</strong> ${customer.shippingAddress.country}
					</p>
					<p>
						<strong>Zip Code:</strong> ${customer.shippingAddress.zipCode}
					</p>
				</div>

				<br>

			</div>
		</div>
		<br /> <br /> <br /> <br />

		<div>
			<a href="<c:url value="/admin/customerManagement" />"
				class="btn btn-default">Back</a>
		</div>



		<script src="<c:url value="/resources/js/controller.js" /> "></script>
		<%@include file="/WEB-INF/views/template/footer.jsp"%>