<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="">
<head>
  <meta charset="utf-8">
	<title>学生界面</title>
	<meta name="description" content="" />
  	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	
	<link href='http://fonts.googleapis.com/css?family=Maven+Pro:700,900|Open+Sans:300italic,400italic,600italic,400,300,600' rel='stylesheet' type='text/css'>
	
	<link href="css/reset.css" rel="stylesheet" type="text/css" />
	<link href="css/960.css" rel="stylesheet" type="text/css" />
	<link href="css/styles.css" rel="stylesheet" type="text/css" />
	<link href="fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/smooth-scroll.js"></script>
	<script type="text/javascript" src="js/jquery.sticky.js"></script>
	<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<script type="text/javascript" src="js/jquery.easing-1.3.pack.js"></script>
	<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="cform.js"></script>
	
<script type="text/javascript"> // sticky nav bar 
  $(document).ready(function(){
    $("nav").sticky({topSpacing:0});
  });
</script>

<script type="text/javascript"> // fancybox
$(document).ready(function() {

	/* This is basic - uses default settings */
	
	$("a.single_image").fancybox();
	
	/* Using custom settings */
	
	$("a#inline").fancybox({
		'hideOnContentClick': true
	});

	/* Apply fancybox to multiple items */
	
	$("a.group").fancybox({
		'transitionIn'	:	'elastic',
		'transitionOut'	:	'elastic',
		'speedIn'		:	600, 
		'speedOut'		:	200, 
		'overlayShow'	:	false
	});
	
});
</script>
	
</head>

<div class="topbar"></div> <!-- top bar -->

<div id="intro">
	<div class="title">
		<h1>hello<br />
		<span class="small">welcome to Data Mining</span><br />
		<span class="name"><%= request.getAttribute("name") %></span><br />
		<span class="intro_line"></span><span class="amp">&</span><span class="intro_line"></span><br />
		<span class="small">you're the best one</span></h1>
	</div> <!-- end .title -->
</div> <!-- end #intro -->


<nav>
	<ul>
		<li><a href="#intro">主页</a></li>
		<li><a href="#work">内容</a></li>
		<li><a href="#services">习题</a></li>
		<li><a href="#contact">联系</a></li>
	</ul>
</nav> <!-- end nav -->


<div id="work">
	<div class="container_16">
		
		<div class="subheader">
			<div class="subheader_line"></div><h2>相关内容</h2><div class="subheader_line"></div>
		</div>
		
		<div class="gallery">
			<div class="grid_5">
				<a href="/servlet/ListFileServletS" ><div class="screenshot1 ss"></div></a>
				<p>PPT下载<br />
				<span class="ss_text">在线浏览、下载</span>
				</p>
			</div>
			<div class="grid_6">
				<a href="jump?url=WEB-INF/listStyleS.jsp"><div class="screenshot2 ss center"></div></a>
				<p>重难点讲解<br />
				<span class="ss_text">在线观看、下载</span>
				</p>
			</div>
			<div class="grid_5">
				<a href="jump?url=WEB-INF/related.jsp" ><div class="screenshot3 ss"></div></a>
				<p>参考资料<br />
				<span class="ss_text">链接、下载</span>
				</p>
			</div>
		
			<div class="spacer">&nbsp;</div>
		
			<div class="grid_5">
				<a href="jump?url=WEB-INF/interactive.jsp"><div class="screenshot4 ss"></div></a>
				<p>实时互动<br />
				<span class="ss_text">在线提问、交流</span>
				</p>
			</div>
			<div class="grid_6">
				<a href="msg/sub.jsp" ><div class="screenshot5 ss center"></div></a>
				<p>留言活动<br />
				<span class="ss_text">留言评价、回复</span>
				</p>
			</div>
			<div class="grid_5">
				<a href="msgpane/messages.jsp" ><div class="screenshot6 ss"></div></a>
				<p>共性问题<br />
				<span class="ss_text" >统一提问、解答</span>
				</p>
			</div>
		</div><!-- end .gallery -->
		
	</div> <!-- end .container_16 -->
</div> <!-- end #work -->

<div class="work_bg_bottom"></div>

<div id="services">
	<div class="container_16">
	
		<div class="subheader">
			<div class="subheader_line"></div><h2>习题</h2><div class="subheader_line"></div>
		</div>
		
		<div class="clear"></div>
		
		<div class="serv_icons">
			<div class="grid_4">
				<div class="serv_icon1"></div>
                <h3><a href="jump?url=WEB-INF/Basic.jsp">基础知识</a>></h3>
				<p>I have traced the Rebel spies to her. Now she is my only link to finding their secret base. I want to come with you to Alderaan.</p>
			</div>
		
			<div class="grid_4">
				<div class="serv_icon2"></div>
				<h3>基础技能</h3>
				<p>I have traced the Rebel spies to her. Now she is my only link to finding their secret base. I want to come with you to Alderaan.</p>
			</div>
		
			<div class="grid_4">
				<div class="serv_icon3"></div>
				<h3>重点内容</h3>
				<p>I have traced the Rebel spies to her. Now she is my only link to finding their secret base. I want to come with you to Alderaan.</p>
			</div>
			
			<div class="grid_4">
				<div class="serv_icon4"></div>
				<h3>难点内容</h3>
				<p>I have traced the Rebel spies to her. Now she is my only link to finding their secret base. I want to come with you to Alderaan.</p>
			</div>
		</div> <!-- end .serv_icons -->
		
	</div> <!-- end .container_16 -->
</div> <!-- end #services -->

<div class="services_bg_bottom"></div>

<div class="about_bg_bottom"></div>

<div id="contact">
	<div class="container_16">
	
		<div class="subheader">
			<div class="subheader_line"></div><h2>contact</h2><div class="subheader_line"></div>
		</div>
		
		<div class="grid_7">
			<div class="contact_form">
				<h4>Get in touch</h4>
				<form method="post">
					<input type="text" name="Name" id="name" value="Name" onFocus="this.value = this.value=='Name'?'':this.value;" onBlur="this.value = this.value==''?'Name':this.value;" />
					<input type="text" name="Email" id="email" value="Email" onFocus="this.value = this.value=='Email'?'':this.value;" onBlur="this.value = this.value==''?'Email':this.value;" />
					<input type="text" value="Subject" id="subject" onFocus="this.value = this.value=='Subject'?'':this.value;" onBlur="this.value = this.value==''?'Subject':this.value;" />
					<textarea name="Message" id="body" onFocus="this.value = this.value=='Message'?'':this.value;" onBlur="this.value = this.value==''?'Message':this.value;">Message</textarea>
					<input type="submit" name="submit" id="submit" value="send" class="submit-button" onClick="return check_values();" />
				</form>
				<div id="confirmation" style="display:none; position: relative; z-index: 600; font-family: 'Open Sans', sans-serif; font-weight: 300; font-size: 16px; color: #4e4e4e;"></div>
			</div> <!-- end .contact_form -->
				
		</div> <!-- end .grid_7 -->
				
		<div class="grid_9">
		
			<div class="contact_info">
				<h4>Contact Information</h4>
				<div class="grid_4 alpha">
					<p><img src="img/icn_phone.png" alt="" /> +351 123 456 789</p>
					<p><img src="img/icn_mail.png" alt="" /> youremail@yoursite.com</p>
				</div>
				<div class="grid_4 omega">
					<p><img src="img/icn_address.png" alt="" /> Fifth Avenue<br />
					<span class="address">767 5th Ave, New York,</span><br />
					<span class="address">NY 10153</span></p>
				</div>
			</div> <!-- end .contact_info -->
		
			<div class="map">
				
			</div> <!-- end .map -->
			
		</div> <!-- end .grid_9 -->
		
	</div> <!-- end .container_16 -->
</div> <!-- end #contact -->

<div class="contact_bg_bottom"></div>

<footer>
	<p>&copy; 2017 All rights reserved</p>
</footer>