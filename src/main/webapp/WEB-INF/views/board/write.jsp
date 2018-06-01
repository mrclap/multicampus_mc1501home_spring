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
                <li class="active"><a href="<c:url value='/board/board'/>">Board</a></li>
                <li><a href="<c:url value='/sul-go/sul-go'/>">Sul-Go?</a></li>
                <li><a href="<c:url value='/coldhot/coldhot'/>">Cold/Hot?</a></li>


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
   <!--게시판 목록 -->
    <!-- 타이틀  -->
	<h2 class="text-center" style="margin-bottom:20px;">Board</h2>
	  <div class="row justify-content-md-center">
	    <div class="col-md-auto text-center">
	          <p>수업에 관련된 URI 등을 공유합니다! <br>
	          	</p>
	          <br>
	    </div>
	  </div>
   
	<div class="container">
	<table class="table table-bordered">
	   <tbody>
	       <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
	           <tr>
	               <th>제목: </th>
	               <td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>
	           </tr>
	           <tr>
	               <th>내용: </th>
	               <td><textarea cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control" style="height:300px;"></textarea></td>
	           </tr>
	           <tr>
	               <th>첨부파일: </th>
	               <td><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td>
	           </tr>
	           <tr>
	               <th>비밀번호: </th>
	               <td><input type="password" placeholder="비밀번호를 입력하세요" class="form-control"/></td>
	           </tr>
	           <tr>
	               <td colspan="2">
	                   <input type="button" value="등록" onclick="sendData()" class="btn btn-default pull-right"/>
	                   <input type="button" value="RESET" class="btn btn-default pull-left"/>
	                   <a class="btn btn-default pull-right" href="./board.html">글 목록</a>
	
	
	                   
	               </td>
	           </tr>
	       </form>
	   </tbody>
	</table>
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