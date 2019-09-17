<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<%
		String id = (String) session.getAttribute("id");
		String ip = (String) session.getAttribute("ip");
		
		if (id == null || id == "") {
	%>
	<form action="loginActionTest.jsp" method="post">


		<span>ID&nbsp;</span> <input type="text" name="id" /> <br /> <br />
		<span>PW</span> <input type="text" name="pw" /> <input type="submit"
			value="로그인" />
	</form>
	<%
		} else {
			out.println("<script>");
			out.println("location.href='succeseLogIn.jsp'");
			out.println("</script>");
		}
	%>
</body>
</html>