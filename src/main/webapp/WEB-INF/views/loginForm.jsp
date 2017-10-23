<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Sonata</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="resources/images/favicon.ico" type="resources/image/x-icon">
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<script src="resources/vendors/bootstrap/bootstrap.min.js"></script>
<script src="resources/vendors/jquery/jquery.min.js"></script>
<link rel="stylesheet" href="resources/vendors/fontawesome/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/styles.css">

<script>
        $(document).ready(function(){
            $('.table-action div.empActionTabs').hide();
            $('tr.row_main').click(function () {
                //alert("");
                //$(".table-action div.empActionTabs").slideUp("slow");
                //$(this).closest('.table-action .empActionTabs').slideToggle("slow");
                //$('.table-action div.empActionTabs').slideUp();
                $(this).next('tr').find('.table-action .empActionTabs').slideToggle("slow");
            });                                   
        });
    </script>
</head>
<body>

	<div class="">
		<header>
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="http://www.sonata-software.com/"><img
							src="resources/images/logo.png" title="Sonata Software" /></a>
					</div>
				</div>
			</nav>
		</header>
		<div class="loginCont">
			<div class="container">
			<form:form modelAttribute="loginModel" action="login" method="post">
				<div>
					<div class="login-block">
						<h1>Login</h1>
						<form:input path="empName" placeholder="Username" id="username" />
						<form:password placeholder="Password" path="password"
							id="password" /> 
						 <button type="submit">Login</button>
					</div>

				</div>
			</form:form>
			</div>
		</div>
		<footer>
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<h4>Services</h4>
							<div class="row">
								<div class="col-md-6">
									<ul>
										<li><a>Travel</a></li>
										<li><a>Retail</a></li>
										<li><a>ISV</a></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li><a>Digital Engagement</a></li>
										<li><a>Application Lifecycle Services</a></li>
										<li><a>Technology Infrasructure Services</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<h4>Alliances</h4>
							<div class="row">
								<div class="col-md-6">
									<ul>
										<li><a>Microsoft</a></li>
										<li><a>SAP / Hybris</a></li>
										<li><a>IBM</a></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li><a>Oracle</a></li>
										<li><a>HP</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<h4>People</h4>
							<ul>
								<li><a>Meet the Team</a></li>
								<li><a>Our Work Place</a></li>
								<li><a>Careers</a></li>
								<li><a>CSR</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="copyright-text">
								© Sonata Software 2017 <span>|</span> <a>Sitemap</a> <span>|</span>
								<a>Disclaimer</a> <span>|</span> <a>Privacy Statement</a>
							</div>
						</div>
						<div class="col-md-6 text-right">
							<ul class="son-social">
								<li class="facebook"><a href="" title="facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="linkedin"><a href="" title="linkedin"><i
										class="fa fa-linkedin"></i></a></li>
								<li class="twitter last"><a href="" title="twitter"><i
										class="fa fa-twitter"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>
