<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>注册</title>
	<link href="css/jqueryui.css" rel="stylesheet" type="text/css" />
	<link href="css/vjpublic.css" rel="stylesheet" type="text/css" />
	<link href="css/vjpage.css" rel="stylesheet" type="text/css" />
	<link href="css/config.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/public.js"></script>
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
</head>

<body data-curpagename="page1" class="body_style1" style="background-image: url(images/jloginbg04.jpg); background-repeat: repeat-y; background-size: cover;">
<div id="page1_jPanel1" class="Panel Panel_Null">
	<div id="page1_jHtmlForm1_form">
		<form id="page1_jHtmlForm1" name="page1_jHtmlForm1" method="post" action="/RegisterServlet">
			<div id="page1_jPanel9" class="Panel Panel_Null border_radius_5">
				<div id="page1_jLabel11" class="text">用户名：</div>
				<input type="text" name="name" class="Edit Edit_style1" id="page1_jEdit6" tabindex="1"/></div>

			<div id="page1_jPanel2" class="Panel Panel_Null border_radius_5">
				<div id="page1_jLabel2" class="text">账 号：</div>
				<input type="text" name="id" class="Edit Edit_style1" id="page1_jEdit1" tabindex="1"/></div>

			<div id="page1_jPanel3" class="Panel Panel_Null border_radius_5">
				<div id="page1_jLabel7" class="text">密 码：</div>
				<input type="password" name="password" class="Edit Edit_style4" id="page1_jEdit2" tabindex="2"/></div>

			<div id="page1_jPanel4" class="Panel Panel_Null border_radius_5">
				<div id="page1_jLabel1" class="text">身 份：</div>
				<div id="page1_jComboBox1">
					<select name="strType" size="1" id="page1_jComboBox1_select" style="width:inherit">
						<option value="1" selected="selected" id="page1_jComboBox1_option1">教师</option>
						<option value="2" id="page1_jComboBox1_option2">学生</option>
					</select>
				</div></div>
			<div id="page1_jButton2" class="vjbutton vjbutton_c_style1 btn_font2 border_radius_3" tabindex="5">
				<div class="vjbutton_txtR">
					<input type="submit" name = "submit" value = "注册" />
				</div>
			</div>
		</form>
	</div>
	
	<div id="page1_jLabel5" class="text">

		<%
		String result= (String) request.getAttribute("result");
		if(result != null && result.trim().equals("注册失败")){
		    %>
			注册失败,重新注册
		<%
		}
			else{
		    %>
			用户注册
		<%
		}
		%>
	</div>
	</div>
<div id="page1_jPanel5" class="Panel Panel_Null">
	<div id="page1_jImages1" class="Timage Timage_style1 Timage_auto"><img src="images/jlogosmall.png" alt="images/jlogosmall.png" title=""/></div>
	<map name="page1_jImages1_map" id="page1_jImages1_map">
	</map>
	<div id="page1_jLabel3" class="text">数据挖掘</div>
	<div id="page1_jLabel4" class="text"></div></div>

</body>
<script type="text/javascript" src="js/Timage.js"></script>
</html>
