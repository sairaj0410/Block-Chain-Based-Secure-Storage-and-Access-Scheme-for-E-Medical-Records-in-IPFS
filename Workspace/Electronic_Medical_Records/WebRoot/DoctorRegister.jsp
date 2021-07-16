
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

		<style type="text/css">
.custom-select {
	width: 37%;
	color: #999;
	background: none;
	outline: none;
	font-size: 0.9em;
	padding: .6em .8em;
	margin-right: 1.5em;
	border: solid 1px #999;
	-webkit-appearance: none;
	border-radius: 3px;
	-webkit-border-radius: 3px;
}
</style>
		<link rel="stylesheet" href="css/Login.css" type="text/css"></link>
	</head>
	<body>
		<!--header-->
		<div class="header">
			<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header navbar-left">
					<h1>
						<a href="index.html"><img src="images/logo.png" alt=""
								width="20%" />We Care</a>
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
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right"
						id="bs-example-navbar-collapse-1">

						<ul class="nav navbar-nav navbar-left">
							<li>
								<a href="index.jsp" class="link link--yaku"><span>H</span><span>O</span><span>M</span><span>E</span>
								</a>
							</li>
							<li>
								<a href="DoctorLogin.jsp" class="link link--yaku">DOCTOR LOGIN
								</a>
							</li>

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
		<div id="id01" class="modal">

			<form class="modal-content animate" action="/action_page.php"
				method="post">
				<div class="imgcontainer">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal">&times;</span>
					<img src="img_avatar2.png" alt="Avatar" class="avatar">
				</div>

				<div class="container">
					<label for="uname">
						<b>Username</b>
					</label>
					<input type="text" placeholder="Enter Username" name="uname"
						required>

					<label for="psw">
						<b>Password</b>
					</label>
					<input type="password" placeholder="Enter Password" name="psw"
						required>

					<button type="submit">
						Login
					</button>
					<label>
						<input type="checkbox" checked="checked" name="remember">
						Remember me
					</label>
				</div>

				<div class="container" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">
						Cancel
					</button>
					<span class="psw">Forgot <a href="#">password?</a>
					</span>
				</div>
			</form>
		</div>
		<div class="banner about-bnr">
			<div class="container">
			</div>
		</div>
		<!--contact-->
		<form action="DoctorRegister" method="post"
			enctype="multipart/form-data">
			<div class="contact">
				<div class="container">
					<h3 class="title1">
						Doctor
						<span>Registration</span> Form
					</h3>
					<div class="contact-info" align="center">
						<div class="col-md-8 contact-grids">
							<div class="contact-form">

								<input type="text" name="name" placeholder="Name" required="">
								<br />
								<br />
								<input type="text" name="fathername" placeholder="FatherName"
									required="">
								<br />
								<br />
								<input type="text" name="gender" placeholder="Gender"
									required="">
								<br />
								<br />
								<input type="number" name="age" placeholder="Age" required="">
								<br />
								<br />
								<input type="text" name="phone" placeholder="Phone" required="">
								<br />
								<br />
								<input type="email" name="email" placeholder="Email" required="">
								<br />
								<br />
								<input type="text" name="experience"
									placeholder="year Of Experience" required="">
								<br />
								<br />
								<input type="text" name="dob" placeholder="Date Of Birth"
									required="">
								<br />
								<br />
								<select class="custom-select" name="category" placeholder=""
									required="">
									<option value="">
										Category
									</option>
									<option value="Neurology">
										Neurology
									</option>
									<option value="Dentistry">
										Dentistry
									</option>
									<option value="Cardiology">
										Cardiology
									</option>
									<option value="Pediatrics">
										Pediatrics
									</option>
									<option value="Pulmonology">
										Pulmonology
									</option>
									<option value="Ophthalmology">
										Ophthalmology
									</option>
									<option value="Diagnostics">
										Diagnostics
									</option>
								</select>
								<br />
								<br />

								<input type="password" name="password" placeholder="Password"
									required="">
								<br />
								<br />
								<input type="file" name="photo" placeholder="Photo" required="">
								<br />
								<br />
								<input type="submit" value="SEND">

							</div>
						</div>

					</div>
				</div>
			</div>
		</form>
		<br />
		<br />
		<br />
		<br />
		<%--<h2>
			Modal Login Form
		</h2>

		<button
			onclick="document.getElementById('id01').style.display='block'"
			style="width: auto;">
			Login
		</button>



		--%><script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
	if (event.target == modal) {
		modal.style.display = "none";
	}
}
</script>
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
			id="toTopHover" style="opacity: 1;"> </span>
		</a>
		<!--//smooth-scrolling-of-move-up-->
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/bootstrap.js">
</script>
	</body>
</html>