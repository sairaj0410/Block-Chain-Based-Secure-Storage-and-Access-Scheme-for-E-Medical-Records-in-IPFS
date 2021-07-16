
<%@page import="com.Dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="com.Module.DoctorRegisterPojo"%>
<!DOCTYPE html>
<html>
<head>
<title>We Care </title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="We Care Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
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
<link rel="stylesheet" href="css/table.css" type="text/css"></link><link rel="stylesheet" href="css/buttonAn.css" type="text/css"></link></head>
<body>
	<!--header-->
	<div class="header">
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header navbar-left">
					<h1><a href="index.html"><img src="images/logo.png" alt="">Hospital</a></h1>
				</div>
				<!--navigation-->
				
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
							<li><a href="index.html" class="link link--yaku"><span>H</span><span>O</span><span>M</span><span>E</span></a></li>
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
	<!--contact-->
	<div class="contact">
		<div class="container">
			<h3 class="title1">Doctor <span>List</span></h3>
			<div class="contact-info">
				<div class="col-md-8 contact-grids">
				

							<table id="customers">
  <tr>
  <th>Sno</th>
    <th>DoctorName</th>
    <th>Photo</th>
    <th>FatherName</th>
    <th>Gender</th>
    <th>Age</th>
    <th>Phone</th>
    <th>Email</th>
    <th>Experience</th>
     <th>DateOfBirth</th>
      <th>Category</th>
       <th>DoctorId</th>
        <th>Delete</th>
  </tr>
  <%Dao dao=new Dao();
  List<DoctorRegisterPojo> list=dao.getDoctorDetails();
  for(DoctorRegisterPojo pojo:list){
	  int count=1;
  %>
  
  <tr>
   <td><%=count%></td>
    <td><%=pojo.getName()%></td>
   <td><img src="http://localhost:8888/<%=pojo.getImagepath().replace("webapps", "")%>"
										style="height: 50px; width: 50px" />													
										</td>
    <td><%=pojo.getFathername() %></td>
    <td><%=pojo.getGender() %></td>
    <td><%=pojo.getAge() %></td>
    <td><%=pojo.getPhone() %></td>
    <td><%=pojo.getEmail() %></td>
    <td><%=pojo.getExprince() %></td>
    <td><%=pojo.getDateofbirth() %></td>
     <td><%=pojo.getCategory() %></td>
      <td><%=pojo.getDoctorid() %></td>
       <td><a href="Delete?email=<%=pojo.getEmail()%>"><img src="images/download.png" width="60%"></img></a></td>
  </tr>
  <%
	count++;} %>	
</table>
			
			
				
				
		
					
					</div>
				</div>
				
				<div class="clearfix"> </div>
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