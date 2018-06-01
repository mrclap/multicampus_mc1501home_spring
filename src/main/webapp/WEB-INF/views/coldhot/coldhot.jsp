<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<!-- saved from url=(0040)http://bootstrapk.com/examples/carousel/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://bootstrapk.com/favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<c:url value='/resources/js/ie-emulation-modes-warning.js'/>"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="<c:url value='/resources/css/carousel.css'/>" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            <a class="navbar-brand" href="<c:url value='/'/>">MC1501Group</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="<c:url value='/'/>">Home</a></li>
                <li><a href="<c:url value='/board/board'/>">Board</a></li>
                <li><a href="<c:url value='/sul-go/sul-go'/>">Sul-Go?</a></li>
                <li class="active"><a href="<c:url value='/coldhot/coldhot'/>">Cold/Hot?</a></li>


                <!-- nav dropdown bar eliminated -->
                <!-- li class="dropdown">
                  <a href="http://bootstrapk.com/examples/carousel/#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Action</a></li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Another action</a></li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">Separated link</a></li>
                    <li><a href="http://bootstrapk.com/examples/carousel/#">One more separated link</a></li>
                  </ul>
                </li -->
              <!--  leftside nav bar -->
              </ul>
              <ul class="nav navbar-nav navbar-right">
			     <li><a href="<c:url value='/signup/signup'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			     <li><a href="<c:url value='/login/login'/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		      </ul>              
            </div>
          </div>
        </nav>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div class="carousel" style="height:250px; margin-bottom: 20px;">
        <div class="item" style="height:200px;">
          <div class="container">
            <div class="carousel-caption" style=" margin-bottom: 20px;">
              <p  style="font-size:30px;">Multicampus The Algorithm Group.</p>
            </div>
        </div>
        
      </div>
      
    </div>


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- hot/cold 에어컨 민주주의  -->
	<h2 class="text-center" style="margin-bottom:20px;">에어컨 민주주의</h2>
	  <div class="row justify-content-md-center">
	    <div class="col-md-auto text-center">
	          <p>지금 강의실의 온도는 어떤가요? 당신의 의견을 제시해주세요. <br>
	          	5명 이상이 춥거나 더우면 에어컨 온도를 조절합니다.</p>
	          <br>
	    </div>
	  </div>

	<div class="container">
	  <div class="row text-center">
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<button type="button" class="btn btn-primary btn-lg">츄워요...</button>
					
				<!-- Indicates a dangerous or potentially negative action -->
				<button type="button" class="btn btn-danger btn-lg ">더워요...</button>
		</div>
	</div>	

   <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="<c:url value='/resources/js/holder.js'/>"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<c:url value='/resources/js/ie10-viewport-bug-workaround.js'/>"></script>
  

<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" viewBox="0 0 500 500" preserveAspectRatio="none" style="visibility: hidden; position: absolute; top: -100%; left: -100%;"><defs></defs><text x="0" y="23" style="font-weight:bold;font-size:23pt;font-family:Arial, Helvetica, Open Sans, sans-serif;dominant-baseline:middle">500x500</text></svg></body></html>