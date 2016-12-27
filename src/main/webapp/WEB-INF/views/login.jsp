<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
	<div class="login-container">
		<div id="login-box">
			<h2>Login with Username and Password</h2>
			<p>
				<strong>Administrator page - login:admin, password:admin</strong>
			</p>
			<p>
				<strong>User page - login:OlegStefaniv, password:0000aaaa,
					or register</strong>
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
					<label for="usarname" class="cols-sm-2 control-label">User:</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
								type="text" class="form-control" id="username" name="username"
								placeholder="Enter your Username" required="required" />
						</div>
					</div>
				</div>



				<div class="form-group">
					<label for="password" class="cols-sm-2 control-label">Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="Enter your Password"
								required="required" />
						</div>
						<!-- Show password use JS (main.js) -->
						<div class="checkbox">
							<label> <input id="showPassword" type="checkbox" />Show
								Password
							</label>
						</div>
					</div>
				</div>




				<!-- !!!! -->
				<input type="submit" value="Login" class="btn btn-default" /> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>