<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <body>
  	<h1>留言板：</h1>
	<br>
	<br>
	<div style="word-break:break-all">
		<form action="<%=request.getContextPath()%>/Msg" method="post">
	<%
			int i = 0;
			List<String> msgs = (List<String>) application
					.getAttribute("msgs");
			if(msgs != null)
			for (String s : msgs) {
				out.println(i + s);
	%>
	<br><br>
	<a href="jump?url=WEB-INF/msg/delete.jsp?number=<%=i%>&flag=t">删除</a>
<!--	<a href="a.jsp?参数名=参数值">
	<input type="submit" value="删除"><br>-->
    	</form>
	<%
				out.println("<br>-------------------------------------<br>");
				i++;
			}
	%>
</div>
	<br><br><br><br><br><br><br><br><br><br><br>
    <form action="/Msg" method="post">
    	请输入你的姓名：<br><input type="text" name="name"><br>
    	请输入你的标题：<br><input type="text" name="title"><br>
    	留言内容：<br><textarea rows="10" cols="50" name="message"></textarea><br><br>   	
    	<input type="submit" value="提交信息"><br>
    </form>
</body>
</html>
