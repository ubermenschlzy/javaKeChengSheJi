<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>登陆</title>
	<link href="css/jqueryui.css" rel="stylesheet" type="text/css" />
	<link href="css/vjpublic.css" rel="stylesheet" type="text/css" />
	<link href="css/vjpage.css" rel="stylesheet" type="text/css" />
	<link href="css/config.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/public.js"></script>
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
</head>
<body data-curpagename="page3" class="body_style1" style="background-image: url(images/jloginbg04.jpg); background-repeat: repeat-y; background-size: cover;">
<div id="page3_jPanel1" class="Panel Panel_Null">
	<div id="page3_jHtmlForm1_form">
		<form id="page3_jHtmlForm1" name="page3_jHtmlForm1" method="post" action="/LoginServlet">
			<div id="page3_jPanel2" class="Panel Panel_Null border_radius_5">
				<div id="page3_jLabel2" class="text">账 号：</div>
				<input type="text" name="id" class="Edit Edit_style1" value="" id="page3_jEdit1" tabindex="1"/></div>
			<div id="page3_jPanel3" class="Panel Panel_Null border_radius_5">
				<div id="page3_jLabel7" class="text">密 码：</div>
				<input type="password" name="password" class="Edit Edit_style4" value="" id="page3_jEdit2" tabindex="2"/></div>
			<div id="page3_jButton1" class="vjbutton border_radius_3 vjbutton_c_style4" tabindex="4">
				<div class="vjbutton_txtR">
					<input type="submit"  name = "submit" value = "登录" />
				</div>
			</div>	</form>
	</div>
	
	<div id="page3_jLabel5" class="text">
		<%
			String result= (String) request.getAttribute("result");
			if(result != null && result.trim().equals("登陆失败")){
		%>
		登陆失败,重新登陆
		<%
		}
		else{
		%>
		用户登陆
		<%
			}
		%>
	</div>

</div>
<div id="page3_jPanel5" class="Panel Panel_Null">
	<div id="page3_jLabel3" class="text">数据挖掘</div>
	<div id="page3_jImages1" class="Timage Timage_style1 Timage_auto"><img src="images/jlogosmall.png" alt="images/jlogosmall.png" title=""/></div>
	<map name="page3_jImages1_map" id="page3_jImages1_map">
	</map></div>

</body>
<script type="text/javascript" src="js/Timage.js"></script>
</html>
