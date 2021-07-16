
<%@page import="com.Dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="com.Module.DoctorRegisterPojo"%>
<%@page import="com.Module.PasenteRegisterPojo"%>
<%@page import="com.Module.LabReportForm"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Hospital</title>
		<!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="We Care Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
		<script type="application/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<!-- //Custom Theme files -->
		<link href="css/bootstrap.css" type="text/css" rel="stylesheet"
			media="all">
		<link href="css/style.css" type="text/css" rel="stylesheet"
			media="all">
		<!-- js -->
		<script src="js/jquery-1.11.1.min.js">
</script>
		<!-- //js -->
		<!-- start-smooth-scrolling-->
		<script type="text/javascript" src="js/move-top.js">
</script>
		<script type="text/javascript" src="js/easing.js">
</script>
		<script type="text/javascript">
jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();

		$('html,body').animate( {
			scrollTop : $(this.hash).offset().top
		}, 1000);
	});
});
</script>
		<!--//end-smooth-scrolling-->
		<link rel="stylesheet" href="css/table.css" type="text/css"></link>
		<link rel="stylesheet" href="css/buttonAn.css" type="text/css"></link>
	</head>
	<style>
	
	
	</style>
	<body>
		<!--header-->
		<div class="header">
			<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header navbar-left">
					<h1>
						<a href="index.html"><img src="images/logo.png" alt="">Hospital</a>
					</h1>
				</div>
				<!--navigation-->

				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="header-right">
					<div class="top-nav-text">
						<ul>

							<li>
								<ul class="social-icons">
									<li>
										<a href="#"></a>
									</li>
									<li>
										<a href="#" class="pin"></a>
									</li>
									<li>
										<a href="#" class="in"></a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-left">
							<li>
								<a href="index.html" class="link link--yaku"><span>H</span><span>O</span><span>M</span><span>E</span>
								</a>
							</li>
							
							
							
							<li class="active">
								<a href="contact.html"><span>L</span><span>O</span><span>G</span><span>O</span><span>U</span><span>T</span></a>
							</li>						</ul>
						<div class="clearfix">
						</div>
					</div>
					<!--//navigation-->
				</div>
				<div class="clearfix">
				</div>
			</div>
			</nav>
		</div>
		<!--//header-->
		<div class="banner about-bnr">
			<div class="container">
			</div>
		</div>
		<!--contact-->
		
			<div class="contact">
				<div class="container">
					<h3 class="title1">
						Medical LabReport
						<span> List</span>
					</h3>
					<div class="contact-info">
						<div class="col-md-8 contact-grids">


							<table id="customers">
								<tr>
									<th>
										Sno
									</th>
									<th>
										Doctor Id
									</th>
									<th>
										PatientId
									</th>
									<th>
										Date
									</th>
									<th>
										Tocken
									</th>
									<th>
										Category
									</th>
									<th>
										Blood
									</th>
									<th>
										Blood Pressure
									</th>
									<th>
										Weight
									</th>
									<th>
										Suger
									</th>
									<th>
										Cholestero
									</th>
									<th>
										Image
									</th>
								</tr>
								<%
									HttpSession session2 = request.getSession(false);
									String pid = (String) session.getAttribute("patientid");
									int count = 1;
									Dao dao = new Dao();
									List<LabReportForm> list = dao.getlabreport(pid);
									for (LabReportForm pojo : list) {
								%>

								<tr>
									<td><%=count%></td>
									<td><%=pojo.getDid()%></td>
									<td><%=pojo.getPid()%></td>
									<td><%=pojo.getDate()%></td>
									<td><%=pojo.getToken()%></td>
									<td><%=pojo.getCategory()%></td>
									<td><%=pojo.getBlood()%></td>
									<td><%=pojo.getBp()%></td>
									<td><%=pojo.getWeight()%></td>
									<td><%=pojo.getSugar()%></td>
									<td><%=pojo.getCholesterol()%></td>

									<td>
										<a href="Fingerverification.jsp"><button style="background-color:black;color: white;">Finger Verification</button></a>
									</td>

								</tr>
								<%
								count++;	}
								%>



							</table>

						</div>
					</div>

					<div class="clearfix">
					</div>
				</div>
			</div>
		


		<!--//contact-->
		<!--footer-->

		<!--//footer-->
		<!--copy-right-->
		<div class="copy-right">
			<div class="container">
				<ul>
					<li>
						<a href="#"></a>
					</li>
					<li>
						<a href="#" class="gg"></a>
					</li>
					<li>
						<a href="#" class="twt"></a>
					</li>
					<li>
						<a href="#" class="be"></a>
					</li>
				</ul>
				<div class="clearfix">
				</div>
				<p>
				All rights reserved | Design by
				</p>
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

	$().UItoTop( {
		easingType : 'easeOutQuart'
	});

});
</script>
		<a href="#" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span> </a>
		<!--//smooth-scrolling-of-move-up-->
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/bootstrap.js">
</script>
	</body>
</html>