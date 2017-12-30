<%--
  Created by IntelliJ IDEA.
  User: suri
  Date: 12/13/2017
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据挖掘</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- Font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,700,600italic,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- Font -->


    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>

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

            zhezhao.style.display = "block";

        }

        function showRegister(){
            var loginDiv = document.getElementById("RegDiv");

            var clientx = document.documentElement.clientWidth;

            var clienty = document.documentElement.clientHeight;

            var l_margin = (clientx - parseInt(loginDiv.style.width)) / 2;

            var t_margin = (clienty - parseInt(loginDiv.style.height)-200) / 2

            loginDiv.style.left = l_margin + "px";

            loginDiv.style.top = t_margin +"px";

            loginDiv.style.display = "block";

            zhezhao.style.display = "block";
        }

        function hidLogin() {

            var loginDiv = document.getElementById("loginDiv");

            loginDiv.style.display = "none";

            zhezhao.style.display = "none";

        }

        function hidRegister(){
            var loginDiv = document.getElementById("RegDiv");

            loginDiv.style.display = "none";

            zhezhao.style.display = "none";
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

        function titleRMove() {

            var moveable = true;

            var loginDiv = document.getElementById("RegDiv");

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
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Header Start -->
<header id="home">

    <!-- Main Menu Start -->
    <div class="main-menu">
        <div class="navbar-wrapper">
            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">数据挖掘</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a href="#" class="navbar-brand"><img src="img/logo_s.png" alt="Logo" /></a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#home">主页</a></li>
                            <li><a href="#about">课程简介</a></li>
                            <li><a href="#feature-work">教学日历</a></li>
                            <li><a href="#testimonials">教学大纲</a></li>
                            <li><a href="#contact-us">联系</a></li>
                            <li><a href="login.jsp">登陆</a></li>
                            <li><a href="register.jsp">注册</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- Main Menu End -->

</header>
<!-- Header End -->

<div id="RegDiv" style="background-color:white;width:300px;height:200px;border:1px solid blue;z-index:2;display:none;position:absolute;border-top:none">

    <div onmousedown="titleRMove()" id="register_title" style="width:300px;height:25px;background-color:Blue;border:1px solid silver;border-left:none;border-right:none">
        <!--<img src="../images/close.jpg" style="float:right" onclick="hidLogin()"/>-->
        <a href="javascript:hidRegister()" style="float:right;text-decoration:none;color:white;margin-right:2px;font-size:20px">×</a>
    </div>


    <form id="form1" name="form1" method="post" action="/RegisterServlet">
    <table style="clear:right;width:298px;height:150px;text-align:center;margin-top:5px;">

        <tr><td>帐号：</td><td><input type="text" name="id" style="width:180px;" /></td><td>
        </td></tr>

        <tr><td>昵称：</td><td><input type="text" name="name" style="width:180px;" /></td><td>
        </td></tr>

        <tr><td>密码:</td><td><input type="password" name="password" style="width:180px;"  /></td><td>
        </td></tr>

        <tr><td>邮件:</td><td><input type="tect" name="email" style="width:180px;"  /></td><td>
        </td></tr>

        <!--document.getElementById('strType').value  输出是1  也就是控件的VALUE值-->
        <tr><td>选择：</td><td>
            <input type = "radio" name = "strType" value = "1">教师 &nbsp
            <input type = "radio" name = "strType" value = "2">学生 &nbsp
        </td><td>  </td></tr>

        <tr><td>
            <div align="center">
                <input type="submit" name = "submit" value = "注册" />
            </div>
        </td><td>  </td></tr>

        <tr><td><br /></td><td></td></tr>
    </table>
    </form>
</div>

<div id="loginDiv" style="background-color:white;width:300px;height:150px;border:1px solid blue;z-index:2;display:none;position:absolute;border-top:none">

    <div onmousedown="titleMove()" id="login_title" style="width:300px;height:25px;background-color:Blue;border:1px solid silver;border-left:none;border-right:none">

        <!--<img src="../images/close.jpg" style="float:right" onclick="hidLogin()"/>-->

        <a href="javascript:hidLogin()" style="float:right;text-decoration:none;color:white;margin-right:2px;font-size:20px">×</a>

    </div>

    <form id="form2" name="form2" method="post" action="/LoginServlet">
    <table style="clear:right;width:298px;height:115px;text-align:center;margin-top:10px;">

        <tr><td>账号：</td><td><input type="text" name="id" style="width:180px;" /></td><td>
        </td></tr>

        <tr><td>密码:</td><td><input type="password" name="password" style="width:180px;"  /></td><td>
        </td></tr>

        <tr><td>
            <div align="center">
                <input type="submit"  name = "submit" value = "登录" />
            </div>
        </td><td>  </td></tr>

        <tr><td><br /></td><td></td></tr>
    </table>
    </form>
</div>

<div id="zhezhao" style="position:absolute;z-index:1;width:100%;height:100%;background-color:silver;display:none;opacity:.5;">
</div>


<!-- About Section -->
<section id="about" class="site-padding">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="about-image wow fadeInLeft">
                    <img src="img/about-image.jpg" alt="About Image" />
                </div>
            </div>
            <div class="col-sm-6">
                <div class="about-text wow fadeInRight">
                    <h3>课程简介</h3>
                    <p>这是涵盖机器学习基本理论、算法和应用的基础课程，结合理论和实践，生动介绍机器学习如何使运算系统得以根据获取的数据改善其表现，并将这些成果运用到工程、科技、金融商业等活动中。专业理论将包括线性模型、VC维、神经网络、支持向量机、数据探测法等。</p>
                    <a href="#" class="btn btn-read-more">了解更多</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Section -->


<!-- Featured Work -->

<section id="feature-work" class="protfolio-padding">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="title">
                    <h3><a href="calendar.jsp">教学 <span>日历</span></a></h3>
                </div>
            </div>
        </div>
    </div>

    <div class="featured-list">
        <div id="grid" class="clearfix">

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio1.jpg" alt="Feature Image" />
                </a>

                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第一周</h4>
                        <h5>数据挖掘导论（一）</h5>
                    </div>
                </div>

            </div>

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio2.jpg" alt="Feature Image" />
                </a>
                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第二周</h4>
                        <h5>数据挖掘导论（二）</h5>
                    </div>
                </div>
            </div>

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio3.jpg" alt="Feature Image" />
                </a>

                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第三周</h4>
                        <h5>数据预处理（一）</h5>
                    </div>
                </div>
            </div>

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio4.jpg" alt="Feature Image" />
                </a>

                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第四周</h4>
                        <h5>数据预处理（二）</h5>
                    </div>
                </div>
            </div>

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio5.jpg" alt="Feature Image" />
                </a>

                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第五周</h4>
                        <h5>分类与预测（一）</h5>
                    </div>
                </div>
            </div>

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio6.jpg" alt="Feature Image" />
                </a>

                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第六周</h4>
                        <h5>分类与预测（二）</h5>
                    </div>
                </div>
            </div>

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio7.jpg" alt="Feature Image" />
                </a>

                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第七周</h4>
                        <h5>聚类分析（一）</h5>
                    </div>
                </div>
            </div>

            <div class="thumb">
                <a href="#">
                    <img src="img/protfolio8.jpg" alt="Feature Image" />
                </a>

                <div class="thumb-rollover">
                    <div class="project-title">
                        <h4>第八周</h4>
                        <h5>聚类分析（二）</h5>
                    </div>
                </div>
            </div>


        </div>
    </div>


</section>

<!-- Featured Work -->


<!-- Testimonials -->

<section id="testimonials">
    <div class="container">

        <div class="row">
            <div class="col-sm-12">
                <div class="title">
                    <h3 ><a href="outline.jsp">教学 <span>大纲</span></a>></h3>
                </div>
            </div>
        </div>

        <div id="fawesome-carousel-two" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#fawesome-carousel-two" data-slide-to="0" class="active"></li>
                <li data-target="#fawesome-carousel-two" data-slide-to="1"></li>
            </ol>

            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="single-testimonials">
                                <div class="text">
                                    <p>数据挖掘导论</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="single-testimonials">
                                <div class="text">
                                    <p>数据预处理</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- Next Slide -->
                <div class="item">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="single-testimonials">
                                <div class="text">
                                    <p>分类与预测</p>
                                </div>

                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="single-testimonials">
                                <div class="text">
                                    <p>聚类分析</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- Next Slide -->

            </div>

        </div>

    </div>
</section>

<!-- Testimonials -->


<!-- Contact -->
<section id="contact-us">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="title">
                    <h3>Contact <span>Us</span></h3>
                </div>
            </div>
        </div>
    </div>

    <div class="contact">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h4>Please Contact With Us For Any Kind Of Information</h4>
                    <form id="contactform" action="" method="post" class="validateform" name="send-contact">
                        <div class="row">
                            <div class="col-lg-4 field">
                                <input type="text" name="name" placeholder="* Your Name" data-rule="maxlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validation">
                                </div>
                            </div>
                            <div class="col-lg-4 field">
                                <input type="text" name="email" placeholder="* Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validation">
                                </div>
                            </div>
                            <div class="col-lg-4 field">
                                <input type="text" name="subject" placeholder="Subject" data-rule="maxlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validation">
                                </div>
                            </div>
                            <div class="col-lg-12 margintop10 field">
                                <textarea rows="12" name="message" class="input-block-level" placeholder="* Your message here..." data-rule="required" data-msg="Please write something"></textarea>
                                <div class="validation">
                                </div>
                                <p>
                                    <button class="btn btn-theme margintop10 pull-left" type="submit">Submit message</button>

                                </p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact -->


<!-- footer -->

<footer>
    <div class="container">
        <div class="row">

            <!-- Single Footer -->
            <div class="col-sm-3">
                <div class="single-footer">
                    <div class="footer-logo">
                        <img src="img/logo_s.png" alt="Footer Logo" />
                        <p>数据挖掘</p>
                        <p>数据挖掘</p>
                    </div>
                </div>
            </div>
            <!-- Single Footer -->


            <!-- Single Footer -->
            <div class="col-sm-3">
                <div class="single-footer">
                    <h4>联系方式</h4>
                    <p>清华东路35号<br />
                        +1 (123) 456-7890-321 <br />
                        info@weburl.com <br />
                        (01) 800 854 633</p>
                </div>
            </div>
            <!-- Single Footer -->
        </div>
    </div>

</footer>

<!-- Copyright -->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="copy-text">
                    <p>All Rights Reserved | Copyright 2017 © </p>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="footer-menu pull-right">
                    <ul>
                        <li><a href="#home">主页</a></li>
                        <li><a href="#about">课程简介</a></li>
                        <li><a href="#feature-work">教学日历</a></li>
                        <li><a href="#testimonials">教学大纲</a></li>
                        <li><a href="#contact-us">联系</a></li>
                        <li><a href="#blog">登陆</a></li>
                        <li><a href="#faq">注册</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="social">
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
<script src="js/plugins.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
<script src="js/paralax.js"></script>
<script src="js/jquery.smooth-scroll.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/main.js"></script>


<script type="text/javascript">
    $(document).ready(function(){
        $('a[href^="#"]').on('click',function (e) {
            e.preventDefault();

            var target = this.hash;
            var $target = $(target);

            $('html, body').stop().animate({
                'scrollTop': $target.offset().top
            }, 900, 'swing');
        });
    });
</script>

<script src="js/custom.js"></script>

</body>
</html>
