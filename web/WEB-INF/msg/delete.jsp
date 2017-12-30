<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--<%
    String number = request.getParameter("number");
    String flag = request.getParameter("flag");  
    request.setAttribute("number", "1");
    request.setAttribute("flag",flag);

    %>-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <body>
  	<h1>删除确认：</h1>
    <form action="<%=request.getContextPath()%>/Delete" method="post">
    <%= flag%>
    <br>
    	请输入你的ID：<br><input type="text" name="ID"><br>
    	请输入你的密码：<br><input type="text" name="PASS"><br>
		<br><br>   	
        是否确认删除第<%= number%>条留言:
    <br> 
     <input type="text" name="numb" value="<%= number%>">   
    <br>
    <br>
    	<input type="submit" value="确认"><br>
    </form>
</body>
</html>
