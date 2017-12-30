<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<body>
	<h2>留言成功！</h2>
	<br>
	<a href="jump?url=WEB-INF/msg/mes.jsp">查看留言</a>
	<br>
	<%
		if (session.getAttribute("msg") != null) {
			String msg = (String) session.getAttribute("msg");
			out.print(msg);
		}else{
			request.getRequestDispatcher(request.getContextPath()+
					"/msg/sub.jsp").forward(request, response);
		}
	%>
	<a></a>
</body>
</html>
