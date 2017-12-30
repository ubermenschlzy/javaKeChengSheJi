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
</body>
</html>
