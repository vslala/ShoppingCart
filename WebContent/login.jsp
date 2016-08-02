<%
	if (session.getAttribute("username") != null ) {
		response.sendRedirect("/ShoppingCart/index.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
<link rel="stylesheet" href="/JSPAssignment/assets/build/css/style.css">
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>

<div class="container">
	<div class="row">
		<h3>Login to Account</h3>
		<%
			if (request.getParameter("login") != null) {
				if (request.getParameter("login").equals("false")) {
					out.println("<h6 style=\"color: red;\">Invalid Credentials!</h6>");
				}
			}
		%>
		<form action="processLogin.jsp" method="post">
			<p>
				<label>Username</label>
			</p>
			<p>
				<input type="text" name="username">
			</p>
			
			<p>
				<label>Password</label>
			</p>
			<p>
				<input type="password" name="password"/>
			</p>	
			
			<p>
				<button type="submit" class="btn blue">Login</button>
			</p>
		
		</form>
	</div>
</div>