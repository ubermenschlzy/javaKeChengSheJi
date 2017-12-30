<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <body>
    <h1>共性问题解答：</h1>
    <br>
    <br>
    <div style="word-break:break-all">
    <%
            List<String> msgs = (List<String>) application
                    .getAttribute("msgs");
            if(msgs != null)
            {
                for (String s : msgs) {
                    out.println(s);
                    out.println("<br>-------------------------------------<br>");
                }
            }   
    %>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br>
    <form action="<%=request.getContextPath()%>/MsgPane" method="post">
    	请输入问题标题：<br><input type="text" name="name"><br>
    	请输入问题描述：<br><input type="text" name="title"><br>
    	问题解答：<br><textarea rows="5" cols="50" name="message"></textarea><br>
        <br>   	
    	<input type="submit" value="提交信息"><br>
    </form>
 </body>
</html>
