<jsp:useBean id="cart" class="com.bitwise.jsp.beans.MyBean" scope="session"></jsp:useBean>
<%
	cart.reset();
	session.invalidate();
	response.sendRedirect("/ShoppingCart/login.jsp");
%>