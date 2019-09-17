<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = (String) session.getAttribute("id");
		String ip = (String) session.getAttribute("ip");

		String sessionId = null;
		String sessionIp = null;

		if (id == null || id == "") {
			out.println("<script>");
			out.println("alert('잘못된 경로입니다.')");
			out.println("location.href='logout.jsp'");
			out.println("</script>");
		}
		System.out.println("\n 전 --------------------------------------------------\n" + sessionId);
		System.out.println(sessionIp);
		if ((id != null || id != "") && (sessionIp == null || sessionIp == "")) {
			out.println(id + "님이 로그인 하셨습니다." + "<br/>");
			out.println(ip + "<br/>");

			sessionIp = ip;
			sessionId = id;

			System.out.println("\n 후 --------------------------------------------------\n" + sessionId);
			System.out.println(sessionIp);

		}
	%>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>