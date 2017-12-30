<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
<body>
<%   
try{
request.setCharacterEncoding("UTF-8");
String mywords=request.getParameter("message");
String t="";
if(application.getAttribute("words")==null && mywords!=null){
t= (String)request.getRemoteAddr() + ":" + mywords + "<br/>";
application.setAttribute("words",(Object)t);
}
else if(mywords!=null){
t=(String)application.getAttribute("words");
t += (String)request.getRemoteAddr() + ":" + mywords + "<br/>";
application.setAttribute("words",(Object)t);
}
}
catch(Exception e){
}
%>
<form method="post" action="jump?url=WEB-INF/send.jsp" >
<input name="message" type="text" size=50 >
<input type="submit" value="send" > 
</form> 
</body>
</html>
