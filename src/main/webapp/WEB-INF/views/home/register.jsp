<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Harry Yoon - Portfolio</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="../resources/css/freelancer.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
li strong {
	size:20px;
}
label{
	size:30px;
}
</style>
</head>

<body id="page-top" class="index">
<div id="skipnav"><a href="#maincontent">Skip to main content</a></div>
    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="/">Harry Yoon</a>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <section class="success" id="about">
        <div class="container" id="maincontent" tabindex="-1"  style="padding:80px">
             <br/>
             <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Sign Up</h2>                   
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
					<form action="home/login" method="post">
						<div class="form-group text-left">
							<label>Email</label>
							<input id="id" name="id" type="email" class="form-control"/>
						</div>
						<div class="form-group text-left">
							<label>Password</label>
							<input id="pwd" name="pwd" type="password" class="form-control"/>
						</div>
						<div class="form-group text-left">
							<label>Confirm Password</label>
							<input id="pwdcheck" name="pwdcheck" type="password" class="form-control"/>
						</div>
						<div class="row">
							<div class="form-group text-left col-lg-6">
								<label>Last Name</label>
								<input id="lastname" name="lastname" type="text" class="form-control"/>
							</div>
							<div class="form-group text-left col-lg-6">
								<label>First Name</label>
								<input id="firstname" name="firstname" type="text" class="form-control"/>
							</div>
						</div>
						<div class="form-group text-left">
							<label>Company</label>
							<input id="company" name="company" type="text" class="form-control"/>
						</div>
						<div class="form-group text-right">
							<button id="submit-btn" type="submit" class="btn btn-primary">Sign Up</button>
							<a href="/?modal=open" class="btn btn-default">Go Back</a>
						</div>
					</form>
                </div>
            </div>
        </div>
    </section>



    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Harry Yoon
                    </div>
                </div>
            </div>
        </div>
    </footer>



    <!-- jQuery -->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="../resources/js/jqBootstrapValidation.js"></script>
    <script src="../resources/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="../resources/js/freelancer.min.js"></script>

</body>

</html>
