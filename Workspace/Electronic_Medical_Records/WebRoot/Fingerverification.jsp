
<%@page import="com.Dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="com.Module.FingerVerificationPojo"%>
<%@page import="com.Module.MailSendPojo"%>
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
		<link rel="stylesheet" href="css/lightbox.css">
		<!-- js -->
		<script src="js/jquery-1.11.1.min.js">
</script>
		<!-- //js -->
		<!-- start-smooth-scrolling-->
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

		<script type="text/javascript" src="js/mfs100-9.0.2.6.js">
</script>
		<link rel="stylesheet" href="css/Buttoncss.css" type="text/css"></link>
	</head>
	<body>
		<script language="javascript" type="text/javascript">
function processResult(str) {
	//alert(str);
	$xmlDoc = $.parseXML(str);

	uid = $xmlDoc.children[0].getAttribute('uid');
	$("#aid").val(uid);
	uid = $xmlDoc.children[0].getAttribute('name');
	$("#vname").val(uid);
	uid = $xmlDoc.children[0].getAttribute('dob');
	var parts = uid.split('/');
	var mydate = new Date(parts[2], parts[1] - 1, parts[0]);
	$("#dob").val(mydate);

}
var flag = 0;
var quality = 60; //(1 to 100) (recommanded minimum 55)
var timeout = 10; // seconds (minimum=10(recommanded), maximum=60, unlimited=0 )

//function to capture the finger prints.

function Capture() {
	try {
		//document.getElementById('txtStatus').value = "";
		document.getElementById('imgFinger').src = "data:image/bmp;base64,";
		/*                document.getElementById('txtImageInfo').value = "";
		 document.getElementById('txtIsoTemplate').value = "";
		 document.getElementById('txtAnsiTemplate').value = "";
		 document.getElementById('txtIsoImage').value = "";
		 document.getElementById('txtRawData').value = "";
		 document.getElementById('txtWsqData').value = "";
		 */
		var res = CaptureFinger(quality, timeout);
		if (res.httpStaus) {
			flag = 1;
			//                    document.getElementById('txtStatus').value = "ErrorCode: " + res.data.ErrorCode + " ErrorDescription: " + res.data.ErrorDescription;

			if (res.data.ErrorCode == "0") {
				document.getElementById('imgFinger').src = "data:image/bmp;base64,"
						+ res.data.BitmapData;
				document.getElementById('b64img').value = res.data.BitmapData;
				console.log(res.data.BitmapData);
				/*                        var imageinfo = "Quality: " + res.data.Quality + " Nfiq: " + res.data.Nfiq + " W(in): " + res.data.InWidth + " H(in): " + res.data.InHeight + " area(in): " + res.data.InArea + " Resolution: " + res.data.Resolution + " GrayScale: " + res.data.GrayScale + " Bpp: " + res.data.Bpp + " WSQCompressRatio: " + res.data.WSQCompressRatio + " WSQInfo: " + res.data.WSQInfo;
				 document.getElementById('b64img').value = res.data.BitmapData;
				 document.getElementById('txtImageInfo').value = imageinfo;
				 document.getElementById('txtIsoTemplate').value = res.data.IsoTemplate;
				 document.getElementById('txtAnsiTemplate').value = res.data.AnsiTemplate;
				 document.getElementById('txtIsoImage').value = res.data.IsoImage;
				 document.getElementById('txtRawData').value = res.data.RawData;
				 document.getElementById('txtWsqData').value = res.data.WsqImage;
				 */
			}
		} else {
			alert(res.err);
		}
	} catch (e) {
		alert(e);
	}
	return false;

}
</script>

		<script>
function myFunction() {
	alert("Please Your Confirmation");
}
</script>
		<!--header-->
		<div class="header">
			<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header navbar-left">
					<h1>
						<a href="index.html"><img src="images/logo.png" alt="">We
							Care</a>
					</h1>
				</div>
				<!--navigation-->
				<div class="header-text navbar-left">
				</div>
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

							<li>
								<a href="Logout" class="link link--yaku"><span>L</span><span>O</span><span>G</span><span>O</span><span>U</span><span>T</span>
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

		<!-- gallery -->
		<div class="gallery-top">
			<!-- container -->
			<div class="container">

				<%--<%
					HttpSession session2 = request.getSession(false);
					String n = (String) session.getAttribute("uname");

					String msr = (String) request.getAttribute("msr");

					System.out.print("---------maran------------" + msr);
				%>

				--%>
				<h3 class="title1">
					Finger
					<span> Verification</span>


				</h3>
				<div class="gallery-grids-top">
					<div class="gallery-grids">
						<div class="col-md-6 gallery-grid-top">
							<div class="gallery-grid-top-img">
								<a class="example-image-link" href="images/img12.jpg"
									data-lightbox="example-set" data-title=""><img
										class="example-image" src="images/img12.jpg" alt="" /> </a>
							</div>
						</div>
						<div class="col-md-6 gallery-right">
							<div class="gallery-right-grid">
								<div class="col-md-6 gallery-grid-img">

									<%
									 HttpSession session2=request.getSession(false);  
									 String pid=(String)session.getAttribute("patientid");
										
										Dao dao = new Dao();
										List<FingerVerificationPojo> list = dao.getFingerDetails();
										for (FingerVerificationPojo pojo : list) {
											if (pojo.getStatus().equals("false")) {
									%>
									<h3 style="color: red;">
										Finger Not Match
									</h3>


									<%
										} else {
												List<MailSendPojo> mail = dao.getmailDetails();
												for (MailSendPojo maill : mail) {
													if (maill.getPid().endsWith(pid)) {
									%>
									<a href="<%=maill.getImage().replace("webapps", "")%>" download>

										<img
											src="http://localhost:8888/<%=maill.getImage().replace("webapps", "")%>"
											style="height: 50px; width: 50px" /><%=maill.getToken()%></a>
									<%
										}
												}
											}
										}
									%>

								</div>
								<div class="col-md-6 gallery-grid-img">
									<br />
									<br />
									<br />
									<br />
									<br />
									<br />

									<form action="someservlet" method="post" id="someform">
										<h3 style="color: purple;">

										</h3>
										<br />
										<textarea id="b64img" name="b64img"
											style="width: 200%; height: 200px; display: none"> </textarea>
										<br />
										<div
											style="border: 2px solid steelblue; height: 200px; width: 200px; background-image: #F5F5F5; background-color: #F5F5F5;">
											<img id="imgFinger" style="width: 100%; height: 100%"
												src="./images/dummyfp1.png" align="right" />
										</div>
										<br />

										<input type="button" id="btnCapture" value="Capture"
											class=" capturebuttonpadding btn btn-primary btn-lg submit_buttom_padding"
											onclick="return Capture()" />
										<input type="submit" value="SUBMIT" class="button button4"
											onclick="myFunction()">

										<br />
										<br />
										<br />
										<br />

									</form>
									<%--




									<form id="someform" action="someservlet" method="post">
										<input type="text" name="foo" />
										<input type="text" name="bar" />
										<input type="text" name="baz" />
										<input type="submit" name="submit" value="Submit" />
									</form>


									--%>
									<script type="text/javascript">

$(document).on("submit", "#someform", function(event) {
	var $form = $(this);

	$.post($form.attr("action"), $form.serialize(), function(response) {
		// ...
		});

	event.preventDefault(); // Important! Prevents submitting the form.
	});
</script>


									<div class="clearfix">
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //gallery -->
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
				</div>
			</div>
			<!--//copy-right-->
			<!--smooth-scrolling-of-move-up-->
			<script type="text/javascript" src="js/move-top.js">
</script>
			<script type="text/javascript" src="js/easing.js">
</script>
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

