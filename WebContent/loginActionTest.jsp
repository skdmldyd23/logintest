<%@page import="java.sql.Time"%>
<%@page import="java.util.concurrent.Delayed"%>
<%@page import="java.util.HashSet"%>
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
	<script language="javascript">
		
	</script>
	<%
		String[] idArr = { "wldnjs", "dmlfud", "rlqja", "rlgks" };
		String[] pwArr = { "wjd", "cjs", "rla", "tls" };

		String id, pw, ip;
		String redirectValue = null;
	%>

	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		ip = request.getRemoteAddr();
		for (int i = 0; i < idArr.length; ++i) {
			if (id.equals(idArr[i]) && pw.equals(pwArr[i])) {
				if (application.getAttribute(id) != "1") {
					application.setAttribute(id, "1");
					session.setAttribute("id", id); //세션에 아이디 저장
					session.setAttribute("ip", ip);
					redirectValue = "succeseLogIn.jsp";
					System.out.println("\n" + id);
					application.setAttribute("id", id);
					System.out.println(pw);
					System.out.print(ip);
					break;
				}
			} else {
				redirectValue = "index.jsp";
			}
		}

		response.sendRedirect(redirectValue);
	%>
</body>
</html>