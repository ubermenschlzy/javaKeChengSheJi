<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="zxx">

<head>
    <title>About</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //custom-theme -->
    <link href="css2/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Owl-carousel-CSS -->
    <link href="css2/owl.carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="css2/team.css" type="text/css" media="all" />
    <link href="css2/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css2/font-awesome.css" rel="stylesheet">
</head>

<body>
<!-- banner -->

<div class="main_section_agile inner" id="home">
    <div class="agileits_w3layouts_banner_nav">

        <nav class="navbar navbar-default">
            <div class="navbar-header navbar-left">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1><a class="navbar-brand" href="index.html"> <span>共性</span>问题</a></h1>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->

        </nav>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //banner -->
<!--/w3_short-->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">

        <ul class="w3_short">
            <li><a href="index.html">Home</a><span>|</span></li>
            <li>About</li>
        </ul>
    </div>
</div>
<!--//w3_short-->
<!-- /banner_bottom_w3ls_agile -->
<div class="banner-bottom inner">
    <div class="banner_bottom_w3ls_info">
        <div class="wthree_head_section">
            <h3 class="w3l_header w3_agileits_header">问题 <span> 解答 </span></h3>
        </div>

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
</div>
<!-- //banner_bottom_w3ls_agile -->




<!-- footer -->
<div class="footer">
    <div class="f-bg-w3l">
        <div class="col-md-3 w3layouts_footer_grid">
            <h2>Subscribe <span>Newsletter</span></h2>
            <p>By subscribing to our mailing list you will always get latest news from us.</p>
            <form action="#" method="post">
                <input type="email" name="Email" placeholder="Enter your email..." required="">
                <button class="btn1"><i class="fa fa-envelope-o" aria-hidden="true"></i></button>
                <div class="clearfix"> </div>
            </form>


        </div>
        <div class="col-md-4 w3layouts_footer_grid">
            <h3>Recent <span>Works</span></h3>
            <ul class="con_inner_text midimg">
                <li><a href="#"><img src="images/banner22.jpg" alt="" class="img-responsive" /></a></li>
                <li><a href="#"><img src="images/banner33.jpg" alt="" class="img-responsive" /></a></li>
                <li><a href="#"><img src="images/banner44.jpg" alt="" class="img-responsive" /></a></li>
                <li><a href="#"><img src="images/banner11.jpg" alt="" class="img-responsive" /></a></li>
                <li><a href="#"><img src="images/banner22.jpg" alt="" class="img-responsive" /></a></li>
                <li><a href="#"><img src="images/banner33.jpg" alt="" class="img-responsive" /></a></li>
                <li><a href="#"><img src="images/banner11.jpg" alt="" class="img-responsive" /></a></li>
                <li><a href="#"><img src="images/banner44.jpg" alt="" class="img-responsive" /></a></li>
            </ul>

        </div>
        <div class="col-md-2 w3layouts_footer_grid">
            <h3>Our <span>Links</span> </h3>
            <ul class="links">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="mail.html">Mail Us</a></li>
            </ul>
        </div>
        <div class="col-md-3 w3layouts_footer_grid">
            <h2>Contact <span>Us</span></h2>
            <ul class="con_inner_text">
                <li><span class="fa fa-map-marker" aria-hidden="true"></span>清华东路35号 <label> 北京林业大学</label></li>
                <li><span class="fa fa-envelope-o" aria-hidden="true"></span> <a href="mailto:info@example.com">info@example.com</a></li>
                <li><span class="fa fa-phone" aria-hidden="true"></span> +1234 567 567</li>
            </ul>

            <ul class="social_agileinfo">
                <li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
            </ul>
        </div>


        <div class="clearfix"> </div>
        <p class="copyright">Copyright &copy; 2017.Beijing Foresty University.</p>
    </div>
</div>
<!-- //footer -->


<!-- js -->
<script type="text/javascript" src="js2/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- stats -->
<script src="js2/jquery.waypoints.min.js"></script>
<script src="js2/jquery.countup.js"></script>
<script>
    $('.counter').countUp();
</script>
<!-- //stats -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- //nav -->
<!-- js for portfolio lightbox -->
<script src="js/jquery.chocolat.js "></script>
<link rel="stylesheet " href="css2/chocolat.css " type="text/css" media="all" />
<!--light-box-files -->
<script type="text/javascript ">
    $(function () {
        $('.portfolio-grids a').Chocolat();
    });
</script>
<!-- /js for portfolio lightbox -->
<!-- requried-jsfiles-for owl -->
<script src="js2/owl.carousel.js"></script>
<script>
    $(document).ready(function () {
        $("#owl-demo2").owlCarousel({
            items: 1,
            lazyLoad: false,
            autoPlay: true,
            navigation: false,
            navigationText: false,
            pagination: true,
        });
    });
</script>
<!-- //requried-jsfiles-for owl -->

<script type="text/javascript" src="js2/bootstrap-3.1.1.min.js"></script>


</body>

</html>