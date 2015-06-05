




<!DOCTYPE html>
 <%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
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
                         <div class="container">
		<div class="content">
			<div class="col-md-9 single-page">
				<div class="print-main wow fadeInLeft animated" data-wow-delay="0.4s">
					<h3>${mylist.getType()}</h3>
					<p class="likes">Posted on ${mylist.getLaunchdate().toString()}  By ${mylist.getLaunchname()} </p>
                                        <a href="single.html"><img src="<c:url value="/resource/images/${mylist.getImage()}"/>" class="img-responsive" alt="" /></a>
					<ul class="single-icons">
						<li><a href="#"><i class="penc"></i></a></li>
						<li><i class="date2"></i></li>
					</ul>
					
                                        <p class="ptext">${mylist.getDescription()}</p>
                                        <p class="ptext">Current Department :
                                        
                 <c:forEach items="${tracklist}" var="lst">      
         <a> ${lst.getDepartment().getDname()} -->
  	</c:forEach></br></p>
           <p class="ptext">Current Status: ${mylist.getStatus()}</p>
           
           
           </br>
           <form action="Endorse.htm">
<input type="submit" value="Endorse!"type="submit" class="btn btn-default" style="background-color: #EC5844">
</form>
					
			<div class="single-content">
				<div class="single">
						<div class="leave">
							
						</div>
						
						</div>
						
								</div>
							</div>
                                        </div>
							<!--start-right-content-->
							  <div class="col-md-3 right-content">
							  	
									<div class="search">
									  
									</div>
									<div class="categories">
											<h6>Positive Endorsements</h6>
											<ul class="category">
												<li>${mylist.getPositiveendorse()}</li>
												
											</ul>
										</div>
								<div class="">
									<h6>Negative Endorsements</h6>
											<ul>
												<li>${mylist.getNegativeendorse()}</li>
												
											</ul>
								</div>
								<div class="featured">
									
								</div>
							</div>
							<div class="clearfix"></div>
							
						
					</div>
		
                         </div> 
			
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