<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
<meta http-equiv="refresh" content="1;url=jump?url=WEB-INF/showtext.jsp" >
<body>
<%
if(application.getAttribute("words")!=null)
out.println(application.getAttribute("words"));
%>
</body>
</html>