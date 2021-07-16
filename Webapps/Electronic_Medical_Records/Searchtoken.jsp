
<%@page import="com.Dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="com.Module.PasenteRegisterPojo"%>
<%@page import="com.Module.PatientAppointmentRequestpojo"%>
<!DOCTYPE html>
<html>
	<head>
		<title>We Care</title>
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
		
	<link rel="stylesheet" href="css/style1.css" type="text/css"></link></head>
	<body>




		<!--header-->
		<div class="header">
			<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header navbar-left">
					<h1>
						<a href="index.html"><img src="images/logo.png" alt=""
								width="20%" />Hospital</a>
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
								<a href="#" class="link link--yaku"><span>H</span><span>O</span><span>M</span><span>E</span>
								</a>
							</li>
							<li>
								<a href="Logout" class="link link--yaku">SEARCH</a></li>
								<li>
								<a href="Logout" class="link link--yaku">LOGOUT</a></li>
						</ul>
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
						PATIENT 
						<span>REPORT </span> FORM<br/><br/>
					</h3>
					<%String id=(String)request.getAttribute("msg");
					String tk=(String)request.getAttribute("tk");
					String docname=(String)request.getAttribute("doctorname");
					Dao dao=new Dao();
					
					List<PasenteRegisterPojo> list=dao.getPatientDetails();
					
					for(PasenteRegisterPojo pojo:list){
						
						if(pojo.getPatientID().equals(id)){
							
					
					%>
					
					<div class="porduct-order-agile">
		 <form action="PatientReport" method="post">
		 <div class="main">
            <div class="form-left-to-w3l">
               <p>Name</p>
               <input type="text" name="name" placeholder="" value="<%=pojo.getName() %>" required=""  readonly="readonly">
            </div>
             <div class="form-left-to-w3l">
               <p>Father Name</p>
               <input type="text" name="fathername" placeholder="" value="<%=pojo.getFathername() %>" required="" readonly="readonly">
            </div>
            </div>
            
            
            <div class="form-group">
               <p>Email </p>
               <input type="email" placeholder="" required="" name="email" value="<%=pojo.getEmail() %>"  readonly="readonly">
            </div>
            <div class="form-group">
               <p>Phone</p>
               <input type="text" name="Phone" placeholder="" required="" value="<%=pojo.getPhone() %>"   readonly="readonly">
            </div>
            
            
            <div class="main">
               <div class="form-left-to-w3l">
                  <p>Date Of Birth</p>
                  <input type="text" name="dob" placeholder="" required="" value="<%=pojo.getDataofbirth() %>"  readonly="readonly">
               </div>
               <div class="form-left-to-w3l">
                  <p>Age</p>
                  <input type="text" name="age" placeholder="" required="" value="<%=pojo.getAge() %>"  readonly="readonly">
               </div>
            </div>
            <div class="main">
               <div class="form-left-to-w3l">
                  <p>Marital Status</p>
                  <input type="text" name="Marital" placeholder="" required="" value="<%=pojo.getMarital() %>"  readonly="readonly">
                  <div class="clear"></div>
               </div>
               
               <div class="form-left-to-w3l">
                  <p>Gender</p>
                  <input type="text" name="Gender" placeholder="" required="" value="<%=pojo.getGender() %>" readonly="readonly">
                  <div class="clear"></div>
               </div>
            </div>
            <div class="main">
               <div class="form-left-to-w3l">
                  <p>Disease</p>
                  <input type="text" name="Disease" placeholder="" value="<%=pojo.getCategory() %>" required=""  readonly="readonly">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <p>Height</p>
                  <input type="text" name="Height" placeholder="" required="">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <p>weight</p>
                  <input type="text" name="weight" placeholder="" required="">
                  <div class="clear"></div>
               </div>
            </div>
            <div class="order-list">
               
               <div class="main">
                  
                 <div class="form-left-to-w3l">
                  <p>Doctor Name</p>
                  <input type="text" name="doctorname" placeholder="" required="" value="<%=docname %>"  readonly="readonly">
                  <div class="clear"></div>
               </div>
                <div class="form-left-to-w3l">
                  <p>Patient Id</p>
                  <input type="text" name="patientid" placeholder="" required="" value="<%=pojo.getPatientID() %>"  readonly="readonly">
                  <div class="clear"></div>
               </div>
                  
               </div>
            </div>
            
            <div class="form-order">
                     <select class="form-control buttom" name="BloodGroup" placeholder="" required="">
                        <option value="">Blood Group
                        </option>
                        <option value="O">O</option>
                        <option value="O+">O+</option>
                        <option value="A+">A-</option>
                        <option value="A+">A+</option>
                        <option value="B-">B-</option>
                        <option value="B+">B+</option>
                        <option value="AB-">AB-</option>
                        <option value="AB+">AB+</option>
                     </select>
                  </div>
             <div class="form-left-to-w3l">
                  <p>Doctor Description</p>
            <textarea name="doctordescription" placeholder="" required="">
            </textarea>
            </div>
            <input type="hidden" name="tk" value="<%=tk %>">
           <center> <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-primary">Clear</button></center>
         </form>
         <%		
						}
						
					} %>
					<div class="contact-info" align="center">
						<div class="col-md-8 contact-grids">
							<div class="contact-form">
							
      </div>

							</div>
						</div>
					</div>
				</div>
			
		</div>

		<br />
		<br />
		<br />
		<br />





		<%--<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d158857.72810619872!2d-0.2416818539001213!3d51.528771841011256!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2sin!4v1448548788199" allowfullscreen></iframe>
	</div>
	--%>
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
					<a href="#">Welcome</a>
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