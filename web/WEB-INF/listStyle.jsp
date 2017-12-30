<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="style1.css" rel="stylesheet" type="text/css">
    <title>重点难点</title>


    <script type="text/javascript">

        function showLogin() {

            var loginDiv = document.getElementById("loginDiv");



            var clientx = document.documentElement.clientWidth;

            var clienty = document.documentElement.clientHeight;

            var l_margin = (clientx - parseInt(loginDiv.style.width)) / 2;

            var t_margin = (clienty - parseInt(loginDiv.style.height)-200) / 2

            loginDiv.style.left = l_margin + "px";

            loginDiv.style.top = t_margin +"px";

            loginDiv.style.display = "block";
            draggable: true;


        }

        function hidLogin() {

            var loginDiv = document.getElementById("loginDiv");



            loginDiv.style.display = "none";


        }

        function titleMove() {

            var moveable = true;

            var loginDiv = document.getElementById("loginDiv");

            //以下变量提前设置好                        var clientX = window.event.clientX;

            var clientY = window.event.clientY;

            var moveTop = parseInt(loginDiv.style.top);

            var moveLeft = parseInt(loginDiv.style.left);

            document.onmousemove = function MouseMove() {

                if (moveable) {

                    var y = moveTop + window.event.clientY - clientY;

                    var x = moveLeft + window.event.clientX - clientX;

                    if (x > 0 && y > 0) {

                        loginDiv.style.top = y + "px";

                        loginDiv.style.left = x + "px";

                    }

                }

            }

            document.onmouseup = function Mouseup() {

                moveable = false;

            }

        }

    </script>



</head>
<body>
<div id="bg">


    <!--header结束-->

    <div id="main_wrapper">

        <div id="content_top">
        </div>
        <div id="content_bg">
            <div id="contents">
                <div id="con_title">重点难点</div>
                <div id="con_c">
                    <ul class="list_c">
                        <!--分页条数：15-->
                        <c:url value="/ListFileServlet"  var="a1">
                            <c:param name="type" value="1"></c:param>
                        </c:url>
                        <c:url value="/ListFileServlet"  var="a2">
                            <c:param name="type" value="2"></c:param>
                        </c:url>
                        <c:url value="/ListFileServlet"  var="a3">
                            <c:param name="type" value="3"></c:param>
                        </c:url>
                        <c:url value="/ListFileServlet"  var="a4">
                            <c:param name="type" value="4"></c:param>
                        </c:url>
                        <c:url value="/ListFileServlet"  var="a5">
                            <c:param name="type" value="5"></c:param>
                        </c:url>
                        <c:url value="/ListFileServlet"  var="a6">
                            <c:param name="type" value="6"></c:param>
                        </c:url>
                        <c:url value="/ListFileServlet"  var="a7">
                            <c:param name="type" value="7"></c:param>
                        </c:url>
                        <li><a href="${a1}" target="_blank" >1.KDD过程的步骤 </a>    </li>
                        <li><a href="${a2}" target="_blank">2.何种数据上进行数据挖掘</a>    </li>
                        <li><a href="${a3}" target="_blank">3.模式兴趣度度量</a>    </li>
                        <li><a href="${a4}" target="_blank">4.数据挖掘和数据仓库结合</a>    </li>
                        <li><a href="${a5}" target="_blank">5.数据仓库和异源DBMS</a>    </li>
                        <li><a href="${a6}" target="_blank">6.OLTP和OLAP的区别</a>    </li>
                        <li><a href="${a7}" target="_blank">7.为什么需要一个分离的数据仓库</a>    </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>

<div id="footer">
    <div id="kongbai"></div>
    <div id="cfooter">
        <a href="javascript:showLogin()">点击上传指导文件</a>

    </div>

</div>

<div id="loginDiv" style="background-color:white;width:450px;height:200px;border:1px solid grey;z-index:2;display:none;position:absolute;border-top:none">

    <div onmousedown="titleMove()" id="login_title" style="width:450px;height:25px;background-color:grey;border:1px solid silver;border-left:none;border-right:none">

        <!--<img src="../images/close.jpg" style="float:right" onclick="hidLogin()"/>-->

        <a href="javascript:hidLogin()" style="float:right;text-decoration:none;color:white;margin-right:2px;font-size:20px">×</a>

    </div>

    <form action="${pageContext.request.contextPath}/UpLoadHandleServlet" enctype="multipart/form-data" method="post">
        资料对应的题号：<input type="text" name="username"><br/><br/>
        上传文件1：<input type="file" name="file1"><br/><br/>
        上传文件2：<input type="file" name="file2"><br/><br/>
        <input type="submit" value="上传">
    </form>
</div>

</body></html>