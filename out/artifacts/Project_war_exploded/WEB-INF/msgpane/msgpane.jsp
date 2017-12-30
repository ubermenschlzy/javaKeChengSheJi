<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<body>
	<h2>发布成功！</h2>
	<br>
	<a href="<%=request.getContextPath()%>/msgpane/submit.jsp">查看发布</a>
	<br>
	<div style="word-break:break-all">
	<%
		if (session.getAttribute("msg") != null) {
			String msg = (String) session.getAttribute("msg");
			out.print(msg);
		}else{
			request.getRequestDispatcher(request.getContextPath()+
					"/msgpane/submit.jsp").forward(request, response);
		}
	%>
	</div>
	<a></a>
</body>
</html>
