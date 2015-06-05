


<!DOCTYPE html>
 <%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Bolta Pakistan</title>
<link href="<c:url value="/resource/css/bootstrap.css" />" rel="stylesheet" type="text/css" />


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type = "text/javascript" src="<c:url value="/resource/js/jquery-1.11.0.min.js" />"></script>
<link href="<c:url value="/resource/css/style.css" />" rel="stylesheet" type="text/css" />

<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Studeon Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300|Open+Sans:300italic,400italic,600italic,400,300,600,700' rel='stylesheet' type='text/css'>
<!--//webfont-->
<!--Animation-->
<script type = "text/javascript" src="<c:url value="/resource/js/wow.min.js" />"></script>


<script>
	new WOW().init();
</script>

</head>
<body>
	<div class="header box css3-shadow" id="head"">
 	<div class="container">
	  <div class="header-top">
	        <div class="logo wow bounceInLeft" data-wow-delay="0.4s">
                    <a href="index.htm"><img alt=""  src="<c:url value="/resource/images/bolta1.png"/>"   style="width: 100px;height: 50px"/></a>
			 </div>
		     <div class="h_menu4"><!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a class="scroll" href="index.htm">Home</a></li>
						<li><a href="about.htm" class="scroll">About</a></li>
						
						
					
					<li><a href="login.htm">Admin Login</a>
					<li><a href="Search.htm">Complaints</a></li>
                                        <li><a href="complaintForm.htm">Create Complaint</a></li>
                                        <li><a href="Location.htm">Location</a></li>

				</ul>
				<script type="text/javascript" src="/resourcejs/nav.js"></script>
			</div><!-- end h_menu4 -->
			<div class="social_icons wow bounceInRight" data-wow-delay="0.4s">
					<ul>
						<li><a href="#"><i class="facebook"></i></a></li>
						<li><a href="#"><i class="twitter"></i></a></li>
						<li><a href="#"><i class="rss"></i></a></li>
						
					</ul>
				</div>

			<div class="clearfix"> </div>
			
		  </div><!-- end header_main4 -->
	</div>
</div>
<!--start-slider-->
	<div class="slider-bg">
		<div class="container">
			<div class="grid-1">
				<div class="col-md-5 left-grid-1 wow bounceInLeft" data-wow-delay="0.4s">
					<h1>WELCOME</h1>	
					<h2>TO </h2><h3>BOLTA PAKISTAN</h3>
				</div>
				<div class="col-md-7 right-grid-1 wow bounceInRight" data-wow-delay="0.7s">
					<div class="slider">
						<div class="callbacks_container">
								<ul class="rslides" id="slider">
									<li>
                                                                            <img style="width: 1920px;height: 420px"alt="" class="img-responsive" src="<c:url value="/resource/images/corruption-india.jpg"/>"/>
									
									</li>
									<li>
									<img alt="" style="width: 1920px;height: 420px" class="img-responsive" src="<c:url value="/resource/images/hospital.jpg"/>"/>
									</li>
									<li>
									<img alt="" style="width: 1920px;height: 420px" class="img-responsive" src="<c:url value="/resource/images/corrupt.jpg"/>"/>
									</li>
									<li>
									<img alt=""  style="width: 1920px;height: 420px"class="img-responsive" src="<c:url value="/resource/images/ghost.jpg"/>"/>
									</li>
								 </ul>
							</div>
						</div>
					</div>	
                        <script type = "text/javascript" src="<c:url value="/resource/js/responsiveslides.min.js" />"></script>
				 
						   <script>
					    $(function () {
					      $("#slider").responsiveSlides({
					      	auto: true,
					      	nav: true,
					      	speed: 500,
					        namespace: "callbacks",
					        pager: true,
					      });
					    });
					  </script>

                    </div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!--//end-slider-->
	<!--start-services-->
		<div id="about" class="service-section">
			<div class="container">
				<div class="serve-grids wow bounceIn animated" data-wow-delay="0.4s">
					<div class="col-md-4 services-section-grid">
						<div class="services-section-grid-head">
							<div class="service-icon">
								<i class="rocket"></i>
							</div>
							<div class="service-icon-heading">
								<h4>Health</h4>
								<p>Pakistan average life expectancy at birth is 7 years less than whole world. Governement is focusing its attention to improve living conditions.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
						<div class="col-md-4 services-section-grid">
						<div class="services-section-grid-head">
							<div class="service-icon">
								<i class="plan"></i>
							</div>
							<div class="service-icon-heading">
								<h4>Education</h4>
								<p>Pakistan still has one of the highest illiteracy rates in the world.Teachers and administrative issues in education is our prime focus.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
						<div class="col-md-4 services-section-grid lost">
						<div class="services-section-grid-head">
							<div class="service-icon">
								<i class="book"></i>
							</div>
							<div class="service-icon-heading">
								<h4>Corruption</h4>
								<p>Pakistan scored 127 out of 175 on the Corruption Perceptions Index published by the Transparency International.We have to make our </p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
					<div class="serve-grids two  wow bounceIn animated" data-wow-delay="0.4s">
					<div class="col-md-4 services-section-grid act">
						<div class="services-section-grid-head">
							<div class="service-icon">
								<i class="arrow"></i>
							</div>
							<div class="service-icon-heading">
								<h4>City Council</h4>
								<p>Problems of Minor Water Supplies & Social Water,Markets,Abattoirs,Parking facilities,Parochial Roads,Drains & Gullies ,Street Lights,</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
						<div class="col-md-4 services-section-grid">
						<div class="services-section-grid-head">
							<div class="service-icon">
								<i class="download"></i>
							</div>
							<div class="service-icon-heading">
								<h4>Police</h4>
								<p>Primary duty of police are to protect victims and potential victims and promote offender accountability by consistently enforcing laws.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
						<div class="col-md-4 services-section-grid lost">
						<div class="services-section-grid-head">
							<div class="service-icon">
								<i class="cloud"></i>
							</div>
							<div class="service-icon-heading">
								<h4>And Some More Departments</h4>
								<p></p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--//end-services-->
			<!--start-mid-section-->
			
		    <!--//end-mid-section-->  
			<!--/port-section-->
                        <hr>
			<div id="features" class="port-section">
				<div class="container">
                                    
                                    <h2 style="position: center">Complaints</h2>
                                    <hr>
					<div class="port-grids">
                                            <div class="col-md-1"></div>
						<div class="col-md-3 port-grid wow zoomInLeft animated" >
							<a href=""><img src="images/p2.jpg" class="img-responsive" alt="" /></a>
							<div class="box_type">Complaint</div>
							<div class="box-hover">
								<ul class="port-icons">
								<li><i class="per"></i></li>
								<li><i class="loca"></i></li>
								</ul>
							</div>
							<div class="text">
								<a href="http://localhost:8084/Project_BoltaPakistan/ComplaintView.htm?Cid=32"><h3>Education Issue</h3></a>
								<p>Cheating in papers in our department and others </p>
							</div>
						</div>
						<div class="col-md-3 port-grid wow zoomInRight animated">
							<a href=""><img src="images/p3.jpg" class="img-responsive" alt="" /></a>
							<div class="box_type">Complaint</div>
							<div class="box-hover">
								<ul class="port-icons">
								<li><i class="per"></i></li>
								<li><i class="loca"></i></li>
								</ul>
							</div>
							<div class="text">
								<a href="http://localhost:8084/Project_BoltaPakistan/ComplaintView.htm?Cid=33"><h3>Health Issue</h3></a>
								<p>Misuse for equipment. No material to work with </p>
							</div>
						</div>
						<div class="col-md-3 port-grid lost wow zoomInRight animated">
							<a href=""><img src="images/p4.jpg" class="img-responsive" alt="" /></a>
							<div class="box_type">Complaint</div>
							<div class="box-hover">
								<ul class="port-icons">
								<li><i class="per"></i></li>
								<li><i class="loca"></i></li>
								</ul>
							</div>
							<div class="text">
								<a href="http://localhost:8084/Project_BoltaPakistan/ComplaintView.htm?Cid=34"><h3>Police</h3></a>
                                                                <p>Stealing in the area near Gate police should be reported</p>
							</div>
						</div>
                                            <div class="col-md-2"></div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--start-bottom-section-->
				
		    <!--//end-bottom-section--> 
			<!--/start-blog-section-->
			
			<!--/start-footer-section-->
			<div class="footer-section">
				<div class="container">
					<div class="footer-grids wow bounceIn animated" data-wow-delay="0.4s">
						<div class="col-md-4 footer-grid">
						<h4>About Bolta Pakistan</h4>
						<div class="border2"></div>
						  <p>It is all about the problem of a common man how he can reach the upper hierarchy and convey there problem to them.</p>
						  <p class="sub">This is a platform for everyone to launch there complaint.</p>
						</div>
						<div class="col-md-2 footer-grid tags">
								<h4></h4>
								<div class="border2"></div>
							
						</div>
						<div class="col-md-4 footer-grid tweet">
								<h4>Latest Tweets</h4>
								<div class="border2"></div>
								<div class="icon-3-square">
										<a href="#"><i class="square-3"></i></a>
									</div>
							<div class="icon-text">
								<p>This is a good platform for students to adress there compaints</p>
								<h5>#Problems Nust</h5>
							</div>
								<div class="clearfix"></div>
								<div class="icon-3-square">
										<a href="#"><i class="square-3"></i></a>
								</div>
								<div class="icon-text">
								    <p>Reluctant people can freely address there problem</p>
									<h5>#Principal Seecs</h5>
								</div>
								<div class="clearfix"></div>
						</div>
						<div class="col-md-2 footer-grid flickr">
								<h4></h4>
								<div class="border2"></div>
								<div class="flickr-grids">
										
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
			</div>
		</div>
	<!--//end-footer-section-->
			<!--/start-copyright-section-->
				<div class="copyright">
					<div class="container">
					<div class="logo2  wow bounceInLeft" data-wow-delay="0.4s"><a href="index.html"><img src="images/logo2.png" alt=""/ title="logo" /></a></div>
                                        <p class="write  wow bounceInRight" data-wow-delay="0.4s">Copyright &copy; 2015  All rights  Reserved By <a href="">Team HTS</a></p>
					</div>
					<div class="clearfix"></div>
				</div>

			
			<!--//end-copyright-section-->
			<!--start-smoth-scrolling-->
                        <script type = "text/javascript" src="<c:url value="/resource/js/move-top.js" />"></script>
                        <script type = "text/javascript" src="<c:url value="/resource/js/easing.js" />"></script>
			
                        
			
							<!--start-smoth-scrolling-->
		<script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
								</script>
							<!--start-smoth-scrolling-->
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
		<a href="#head" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


			
</body>
</html>
