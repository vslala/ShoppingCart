<%@ taglib prefix="s" uri="WEB-INF/customTags.tld" %>
<<s:validateSession/>
<jsp:useBean id="cart" scope="session"
	class="com.bitwise.jsp.beans.MyBean" />

<jsp:setProperty name="cart" property="*" />
<%
	cart.processRequest(request);
%>


<FONT size=5 COLOR="#CC0000"> <br> You have the following
	items in your cart:
	<ol>
		<%
			String[] items = cart.getItems();
			for (int i = 0; i < items.length; i++) {
		%>
		<li>
			<%
				out.print(com.bitwise.jsp.beans.HTMLFilter.filter(items[i]));
			%> <%
 	}
 %>
		
	</ol>

</FONT>

<a href="index.jsp" class="btn blue">Go Back</a>

</html>