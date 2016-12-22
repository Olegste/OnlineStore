<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/7/2016
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Administrator page</h1>

			<p class="lead">This is the administrator page!</p>
		</div>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<!-- By default, spring auto generates and configures a UsernamePasswordAuthenticationFilter bean.
			 This filter, by default, responds to the URL /j_spring_security_check
			  when processing a login POST from your web-form -->
			<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>
		</c:if>

		<h3>
			<a href="<c:url value="/admin/productInventory" />">-Product
				Inventory</a>
				 <br/> 
				 <br/> 
			<a href="<c:url value="/admin/customerManagement" />">-Customer
				management</a>

		</h3>

		<p>Here you can view, check and modify the product inventory!</p>


		<%@include file="/WEB-INF/views/template/footer.jsp"%>