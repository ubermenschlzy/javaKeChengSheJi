<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>下载文件显示页面</title>
</head>

<body>
<!-- 遍历Map集合 -->
<c:set var="chapter" value="?"/>
<c:set var="subchapter" value="??"/>
<c:set var="subname" value="???"/>
<c:forEach var="me" items="${fileNameMap}">
    <c:forTokens items="${me.key}" delims="/" begin="0" end="0" var="divide">
        <c:set var="subchapter" value="${divide}"/>
    </c:forTokens>
    <c:forTokens items="${me.key}" delims="/" begin="1" end="1" var="divide">
        <c:set var="subname" value="${divide}"/>
    </c:forTokens>
    <c:forTokens items="${me.key}" delims="/" begin="2" end="2" var="divide">
        <c:set var="discribe" value="${divide}"/>
    </c:forTokens>
    <c:if test="${ subchapter != chapter}">
        <c:set var="chapter" value="${subchapter}"/>
        <c:out value="第${chapter}章"/>
        <br/>
    </c:if>
    <c:url value="/servlet/DownloadServlet" var="downurl">
        <c:param name="filename" value="${chapter}/${subname}"></c:param>
        <c:param name="chapter" value="${chapter}"></c:param>
        <c:param name="subname" value="${subname}"></c:param>
    </c:url>
    ${subname}<a href="${downurl}" >下载</a>
    <a > 下载次数为${me.value}</a>
    <form action="/servlet/DownloadServlet"  method="get">
        <textarea name="comment">${discribe}</textarea>
        <input type="hidden" name="filename" value="${chapter}/${subname}">
        <input type="hidden" name="chapter" value="${chapter}">
        <input type="hidden" name="subname" value="${subname}">
        <input type="submit">
    </form>
    <br><br/>
</c:forEach>
</body>
</html>