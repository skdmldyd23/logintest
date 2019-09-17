
<%
	String id = (String) session.getAttribute("id");
	application.setAttribute(id, "0");
	session.invalidate();
	response.sendRedirect("index.jsp");


%>