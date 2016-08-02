<%@ taglib prefix="s" uri="../WEB-INF/customTags.tld" %>

<%
	if (session.getAttribute("username") == null || 
			session.getAttribute("username").equals("")
			) {
		response.sendRedirect("/ShoppingCart/login.jsp");
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
