<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
	<h1>留言板：</h1>
	<br>
	<a href="jump?url=/WEB-INF/msg/sub.jsp">写留言</a>
	<br>
	<%
			int i = 0;
			List<String> msgs = (List<String>) application
					.getAttribute("msgs");
			for (String s : msgs) {
				out.println(i + s);
				out.println("<br>-------------------------------------<br>");
				i++;
		}
	%>
</body>
</html>
