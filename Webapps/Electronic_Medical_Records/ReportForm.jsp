
<%@page import="com.Module.PatientReportFormPojo"%>
<%@page import="java.util.List"%><!DOCTYPE html>
<html>
<head>
<title>We Care a Medical Category Flat Bootstrap Responsive website Template | Gallery :: w3layouts</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="We Care Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/lightbox.css">
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script> 
<!-- //js -->	
<!-- start-smooth-scrolling-->
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
		
		$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smooth-scrolling-->	
</head>
<body>
	<!--header-->
	<div class="header">
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header navbar-left">
					<h1><a href="index.html"><img src="images/logo.png" alt="">We Care</a></h1>
				</div>
				<!--navigation-->
				<div class="header-text navbar-left">
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting<p>
				</div>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="header-right">
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">					
						<ul class="nav navbar-nav navbar-left">
							<li><a href="#" class="link link--yaku"><span>H</span><span>O</span><span>M</span><span>E</span></a></li>
							<li><a href="#" class="link link--yaku"><span>A</span><span>B</span><span>O</span><span>U</span><span>T</span></a></li>
							<li><a href="#" class="link link--yaku"><span>S</span><span>H</span><span>O</span><span>R</span><span>T</span> <span>C</span><span>O</span><span>D</span><span>E</span><span>S</span></a></li>
							
							<li><a href="Logout" class="link link--yaku"><span>L</span><span>O</span><span>G</span><span>O</span><span>U</span><span>T</span></a></li>
						</ul>		
						<div class="clearfix"> </div>
					</div><!--//navigation-->
				</div>
				<div class="clearfix"> </div>
			</div>	
		</nav>		
	</div>	
	<!--//header-->
	<div class="banner about-bnr">
		<div class="container">
		</div>
	</div>
	<!-- gallery -->
	<div class="gallery-top">
		<!-- container -->
		<div class="container">
			<h3 class="title1">Our <span>Report</span></h3>
			<div class="gallery-grids-top">
			<%List details = (List) request.getAttribute("value");
					for (int i = 0; i < details.size(); i++) {
						PatientReportFormPojo model = (PatientReportFormPojo) details.get(i);
						
					%>
				<div class="gallery-grids">
					<div class="col-md-6 gallery-grid-top">
						<div class="gallery-grid-top-img">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title=""><img class="example-image" src="http://localhost:8888/<%=model.getDocimage().replace("webapps","") %>" alt=""/></a>
						</div>
					</div>
					<div class="col-md-6 gallery-right">
						
						<h4 align="right" style="color: purple;"><b>Doctor Name    : </b><%=model.getDoctorName() %></h4><br/>
						<h4 align="right" style="color: purple;"><b>Doctor ID    : </b><%=model.getDoctorid() %></h4><br/>
						<h4 align="right" style="color: purple;"><b>Date    : </b><%=model.getAppaimentDate() %></h4><br/>
						
						<h4><b>PatientName    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; </b><%=model.getPatientname()%></h4><br/>
						<h4><b>Date Of Birth  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; </b><%=model.getDob() %></h4><br/>
						<h4><b>Age            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; </b><%=model.getAge() %></h4><br/>
						<h4><b>Marital Status &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; </b><%=model.getMaritalStatus() %></h4><br/>
						<h4><b>Gender          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; </b><%=model.getGenader() %></h4><br/>
						<h4><b>Disease         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; </b><%=model.getDisease() %></h4><br/>
						<h4><b>Height          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; </b><%=model.getHeight() %></h4><br/>
						<h4><b>Weight           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</b><%=model.getWeight() %></h4><br/>
						<h4><b>Blood Group       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    :&nbsp;&nbsp; </b><%=model.getBloodGroup() %></h4><br/>
						<h4><b>Doctor Description &nbsp;: &nbsp;&nbsp;</b><%=model.getDoctorDescription()%></h4><br/>
						
						
						<%} %>
						
					</div>
					<div class="clearfix"> </div>
				</div>
				
				
				<script src="js/lightbox-plus-jquery.min.js"></script>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //container -->
	</div>
	<!-- //gallery -->
	<!--footer-->
	
	<!--//footer-->
	<!--copy-right-->
	<div class="copy-right">
		<div class="container">
			<ul>
				<li><a href="#"></a></li>
				<li><a href="#" class="gg"></a></li>
				<li><a href="#" class="twt"></a></li>
				<li><a href="#" class="be"></a></li>
			</ul>
			<div class="clearfix"> </div>
			<p>© 2016 We care . All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>	
		</div>
	</div>
	<!--//copy-right-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>
	
