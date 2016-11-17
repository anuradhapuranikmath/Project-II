<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="<c:url value="/resources/css/grayscale.min.css"/>" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i> <span class="light">Collaboration</span> Site
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#about"><span class="light">About</span></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#download">Services</a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                
                
<!--                  <li class="dropdown">  -->
<!--          			<a class="dropdown-toggle" data-toggle="dropdown" href="#">FIND MORE -->
<!--         			<span class="caret"></span></a>  -->
<!--                     <ul class="dropdown-menu" role="menu">  -->
                    
<!--                     	<li> -->
<!--                         	<a href="forum">Forum</a> -->
<!--                     	</li> -->
                    
<!--                     	<li> -->
<!--                         	<a href="chatPage">Chat</a> -->
<!--                     	</li> -->
                    
<!--                     	<li> -->
<!--                         	<a href="wall">Wall</a> -->
<!--                     	</li> -->
                    	
<!--                     	<li> -->
<!--                         	<a href="blog">Blog</a> -->
<!--                     	</li> -->
                    
                    	
                    	
<!--                      	<li> -->
<!--                         	<a href="login">Login</a> -->
<!--                     	</li> -->
                    
<!--                      	<li> -->
<!--                         	<a href="register">SignUp</a> -->
<!--                     	</li> -->
<!--                 	</ul> -->
                
<!--                 </li>  -->
<!--              </ul>  -->
             
             
             <!-- Security -->
             
             
             
      
      <li class="divider-vertical"></li>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			
			<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
				<li><a href="<c:url value="/forum" />">FORUM</a></li>
				<li><a href="<c:url value="/blog" />">BLOG</a></li>
				<li><a href="<c:url value="/chatPage" />">CHAT</a></li>
				 <li><a href="<c:url value="/wall" />">WALL</a></li> 
			</c:if>
			

		</c:if>
								
		<c:if test="${pageContext.request.userPrincipal.name  == null}">
			<li><a href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> SIGN-IN</a></li>
			<li><a href="<c:url value="/register" />"><span class="glyphicon glyphicon-user"></span> SIGN-UP</a></li>
		</c:if>
		</ul>
             
             
             
              
          </div>
          
         
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>



    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
<!--                         <h1 class="brand-heading">Collaborative Site</h1> -->
                        <p class="intro-text" style="color:orange;">
                            Shows All Collaboration Features.</p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="about" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>About Collaboration</h2>
                <p>Accessibility of resource and people at NIIT Ltd is a persistent problem for students, staff, and faculty. Typically, people with disabilities feel isolated and are unsure who to contact with issues and for resources. <a href="https://www.youtube.com/user/niitcareers">the preview page</a>. NIIT Ltd wants to create a communication web site through which all the employees can be informed about any information.</p>
                <p>NIIT Ltd. Has a usual way of passing information formally through mail, <a href="http://www.niit.com/india/training">to Connect</a> along with a technical support , students, staff, and faculty <a href="http://www.niitcloudcampus.com/Program.aspx">See More</a>.</p>
                <p>The goal of this Collaboration is to make a web interface which is user friendly to all and accessible from anywhere</p>
            </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="download" class="content-section text-center">
        <div class="download-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    
                   
                    <a href="https://www.youtube.com/user/NIITELS" class="btn btn-default btn-lg"> Watch Us by this Links</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contact Us with Below Info.......</h2>
                <p>Feel free to email us to provide some feedback on our Services, give us suggestions, or to just say hello!</p>
                <p><a href="http://www.niit.com/india/training">Collaborative@niit.com</a>
                </p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://twitter.com/NIITMTS" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/niitels" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">facebook</span></a>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com/company/1029832" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">LinkedIn</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <div id="map"></div>

    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; COLLABORATIVE 2016</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Theme JavaScript -->
    <script src="js/grayscale.min.js"></script>

</body>

</html>
