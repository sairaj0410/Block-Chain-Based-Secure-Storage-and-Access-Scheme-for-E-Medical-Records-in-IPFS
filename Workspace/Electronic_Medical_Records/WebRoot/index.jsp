
<!DOCTYPE html>
<html>
<head>
<title>We Care</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="We Care Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script> 
<!-- //js -->
<!-- start-smooth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
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
					<h1><a href="#"><img src="images/logo.png" alt="">Hospital</a></h1>
				</div>
				<!--navigation-->
				<div class="header-text navbar-left">
				</div>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="header-right">
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">					
						<ul class="nav navbar-nav navbar-left">
							<li class="active"><a href="index.jsp"><span>H</span><span>O</span><span>M</span><span>E</span></a></li>
							<li><a href="AdminLogin.jsp" class="link link--yaku"><span>A</span><span>D</span><span>M</span><span>I</span><span>N</span></a></li>
							<li><a href="#" class="dropdown-toggle link link--yaku" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span>D</span><span>O</span><span>C</span><span>T</span><span>O</span><span>R</span></a>
								<ul class="dropdown-menu">
									<li><a class="hvr-bounce-to-bottom" href="DoctorRegister.jsp">Register</a></li>
									<li><a class="hvr-bounce-to-bottom" href="DoctorLogin.jsp">Login</a></li>      
								</ul>
							</li>
							<li><a href="#" class="dropdown-toggle link link--yaku" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span>P</span><span>A</span><span>T</span><span>I</span><span>E</span><span>N</span><span>T</span></a>
								<ul class="dropdown-menu">
									<li><a class="hvr-bounce-to-bottom" href="patients.jsp">Register</a></li>
									<li><a class="hvr-bounce-to-bottom" href="PatientLogn.jsp">Login</a></li>      
								</ul>
							</li>
							<li><a href="#" class="link link--yaku"><span>C</span><span>O</span><span>N</span><span>T</span><span>A</span><span>C</span><span>T</span> <span>U</span><span>S</span></a></li>
						</ul>		
						<div class="clearfix"> </div>
					</div><!--//navigation-->
				</div>
				<div class="clearfix"> </div>
			</div>	
		</nav>		
	</div>	
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							
						</li>
						<li>
							
						</li>
					</ul>
				</div>
			</section>
		</div>
		<!-- FlexSlider -->
			<script defer src="js/jquery.flexslider.js"></script>
			<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			</script>
		<!-- //FlexSlider -->
	</div>
	<!--banner-->
	<!--banner-bottom-->
	<div class="banner-bottom">
		<div class="container">
		</div>
	</div>
	<!--//banner-bottom-->
	<!--features-->
	
	<!--//features-->
	<!--projects-->
	<div class="projects">
		<div class="container">
			
			
	</div>
	<!--//projects-->
	<!--services-->

	<!--//services-->
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
		</div>
	</div>
	<!--//copy-right-->
	<!--smooth-scrolling-of-move-up-->
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