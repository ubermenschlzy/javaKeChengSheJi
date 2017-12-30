<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page import="java.io.*" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>下载文件显示页面</title>

    <style type="text/css">
        .text1{width:800px; height:500px}
    </style>



    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>


</form>
<!-- 遍历Map集合 -->
<c:forEach var="me" items="${fileNameMap}">
    <c:url value="/DownloadServlet" var="downurl">
        <c:param name="filename" value="${me.key}"></c:param>
        <c:param name="fortest" value="${me.value}"></c:param>
    </c:url>

    ${me.value}<a href="${downurl}">下载</a>



    <br/>
</c:forEach>

<%
    //String filePath = request.getSession().getServletContext().getRealPath("/")+"JSP_Ajax"+"\\";
    //System.out.println("filePath=="+filePath);
    String path ="D:\\Documents\\Homework\\Java\\Course Design\\Project\\base\\1";   // 这边文件目录需改成相对路径
    File file = new File(path,"a.txt");
    FileReader fr = new FileReader(file);  //字符输入流
    BufferedReader br = new BufferedReader(fr);  //使文件可按行读取并具有缓冲功能
    StringBuffer strB = new StringBuffer();   //strB用来存储jsp.txt文件里的内容
    String str = br.readLine();
    while(str!=null){
        strB.append(str);   //将读取的内容放入strB
        str = br.readLine();
    }
    br.close();    //关闭输入流
%>
<form action="" method="post">
    <textarea rows="15" cols="20" name="textname" readonly="readonly"><%=strB%></textarea>
</form>




</body>
</html>