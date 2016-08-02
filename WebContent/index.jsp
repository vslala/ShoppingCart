<%@ taglib prefix="s" uri="WEB-INF/customTags.tld" %>
<<s:validateSession/>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>carts</title>
</head>

<body bgcolor="white">
	<font size=5 color="#CC0000">

		<form type=POST action=carts.jsp>
			<BR> Please enter item to add or remove: <br> Add Item: <SELECT
				NAME="item">
				<OPTION>Taylor Swift Video collection
				<OPTION>X-files movie
				<OPTION>Pokemon
				<OPTION>Caprese Pink Purse
				<OPTION>JSP Book
				<OPTION>Concert tickets
				<OPTION>Love life
				<OPTION>Switch blade
				<OPTION>Rex, Rugs & Rock n' Roll
			</SELECT> <br> <br> <INPUT TYPE=submit name="submit" value="add">
			<INPUT TYPE=submit name="submit" value="remove">

		</form>
		
		<br/>
		<a href="process/logout.jsp" class="btn red">Logout</a>

	</FONT>
</body>
</html>