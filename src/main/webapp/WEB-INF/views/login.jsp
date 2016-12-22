<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
	<div class="login-container">
		<div id="login-box">
			<h2>Login with Username and Password</h2>
			<p>
				<strong>Administrator page - login:admin, password:admin</strong>
			</p>
			<p>
				<strong>User page - login:OlegStefaniv, password:0000aaaa, or
					register</strong>
			</p>

			<c:if test="${not empty msg}">
				<div class="msg" style="color: ff0000">${msg}</div>
			</c:if>

			<!-- !!!! -->
			<form name="loginForm"
				action="<c:url value="/j_spring_security_check"/>" method="post">
				<c:if test="${not empty error }">
					<div class="error" style="color: ff0000">${error}</div>
				</c:if>
				<div class="form-group">
					<label for="username">User:</label> <input name="username"
						type="text" id="username" class=" form-control" />
				</div>
				<div class="form-group">
					<label for="password">Password: </label> <input type="password"
						id="password" name="password" class="form-control" />
				</div>

				<!-- !!!! -->
				<input type="submit" value="Login" class="btn btn-default" /> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>