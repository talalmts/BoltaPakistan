<%-- 
    Document   : complaintForm
    Created on : May 17, 2015, 12:26:24 AM
    Author     : DELL
--%>

<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
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
 <style type="text/css">
        #map_canvas {height:600px;width:800px}
    </style>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

    <script type="text/javascript">
        var map;
        var markersArray = [];

        function initMap()
        {
            var latlng = new google.maps.LatLng(33.641656100000000000,72.983588599999960000);
            var myOptions = {
                zoom: 15,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

            // add a click event handler to the map object
            google.maps.event.addListener(map, "click", function(event)
            {
                // place a marker
                placeMarker(event.latLng);

                // display the lat/lng in your form's lat/lng fields
                document.getElementById("latFld").value = event.latLng.lat();
                document.getElementById("lngFld").value = event.latLng.lng();
            });
        }
        function placeMarker(location) {
            // first remove all markers if there are any
            deleteOverlays();

            var marker = new google.maps.Marker({
                position: location, 
                map: map
            });

            // add marker in markers array
            markersArray.push(marker);

            //map.setCenter(location);
        }

        // Deletes all markers in the array by removing references to them
        function deleteOverlays() {
            if (markersArray) {
                for (i in markersArray) {
                    markersArray[i].setMap(null);
                }
            markersArray.length = 0;
            }
        }
    </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="resource/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Studeon Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300|Open+Sans:300italic,400italic,600italic,400,300,600,700' rel='stylesheet' type='text/css'>
<!--//webfont-->
<!--Animation-->
<script src="js/wow.min.js"></script>

<script>
	new WOW().init();
</script>

</head>
<body onload="initMap()">
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
<!--start-contact-->


<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-4"><h1>Endorse!</h1></div>
  <div class="col-md-3"></div>
  <div class="col-md-3"></div>
</div>



<div class="row">
  <div class="col-md-2"></div>
  
  <div class="col-md-8"><br><br>
      <form method="post" action="sendendorse.htm" >
      
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="FirstName" placeholder="Name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Cnic</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="cnic" placeholder="Cnic">
  </div>

          <div class="form-group">
    <label for="exampleInputPassword1">Description</label>
    <textarea class="form-control" name="desc"  maxlength="100">
</textarea>
          </div>
          
   
        
          <div class="form-group">
   <input type="radio"  name="endorse" value="positive" checked>Positive
<br><br>
<input type="radio"  name="endorse" value="negative">Negative
    
    
          </div>
          <div class="form-group">
    <input type="submit" class="btn btn-default" value="Submit" style="background-color: #EC5844"/>
          </div>
          
          
      </form>        
          
  
          </div>
  
  <div class="col-md-2"></div>
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
