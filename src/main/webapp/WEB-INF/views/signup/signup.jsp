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
  
    
    <!-- ********************************************** -->
    <script src="<c:url value='/resources/js/jquery-3.3.1.min.js'/>"></script>
    <!-- signup js -->
    
    <script>
    // email checker
    function email_check( email ) {
        
        var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        return (email != '' && email != 'undefined' && regex.test(email));
     
    }
    
    // password checker
    function password_check( password ) {
    	
        var regex = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{2,}$/;
        return (password != '' && email != 'undefined' && regex.test(password));
     
    }
    
    // success style maker
    function inputSuccess( targetForm, symbol, symbolStatus ) {
    	
		$(targetForm).attr({"class" : "form-group has-success has-feedback"});
		$(symbol).attr({"class" : "glyphicon glyphicon-ok form-control-feedback",
									"aria-hidden" : "true"});
		$(symbolStatus).attr({"class" : "sr-only" });
		$(symbolStatus).text("(success)");
    }
    
    // error style maker
    function inputError( targetForm, symbol, symbolStatus ) {
    	
		$(targetForm).attr({"class" : "form-group has-error has-feedback"});
		$(symbol).attr({"class" : "glyphicon glyphicon-remove form-control-feedback",
									"aria-hidden" : "true"});
		$(symbolStatus).attr({"class" : "sr-only" });
		$(symbolStatus).text("(error)");
    }
    
    	$(function(){
    		//1. email check( "@", "." )
    		$("#inputEmail").blur(function(){
    			//1.1 if (input email is satisfied regExp)
    			//var email = $("#inputEmail");
    			
    				//1.1.1 입력한 이메일이 조건을 만족할 때
    			if( email_check($("#inputEmail").val()) ){
    				inputSuccess("#email", "#emailCheckSymbol", "#emailCheckSymbolStatus");
    				//1.1.2 입력한 이메일이 조건을 만족하지 못할 때	
    			}else{
    				inputError("#email", "#emailCheckSymbol", "#emailCheckSymbolStatus");
    			}
    		});
    		
    		//2. email check check
    		$("#inputEmailCheck").blur(function(){
    			//2.1 emailcheck에 값이 ""이 아니고,
    			if($("#inputEmail").val() != ""){
    				//2.1.1 emailcheck의 값과 일치하면,
    				if($("#inputEmail").val() == $("#inputEmailCheck").val()){
    					inputSuccess("#emailCheck","#emailCheckCheckSymbol", "#emailCheckCheckSymbolStatus");
    				//2.1.2 emailcheck의 값과 일치하지 않으면,
    				}else{
    					inputError("#emailCheck","#emailCheckCheckSymbol", "#emailCheckCheckSymbolStatus");
    				}
    			} 
    		});
    		
       		//3. password check(  )
    		$("#inputPassword").blur(function(){
    			//1.1 if (input password is satisfied regExp)
    			
    				//1.1.1 입력한 암호가 조건을 만족할 때
    			if( password_check($("#inputPassword").val()) ){
    				inputSuccess("#password", "#passwordCheckSymbol", "#passwordCheckSymbolStatus");
    				//1.1.2 입력한 이메일이 조건을 만족하지 못할 때	
    			}else{
    				inputError("#password", "#passwordCheckSymbol", "#passwordCheckSymbolStatus");
    			}
    		});
    		
       		//4. password check check(  )
    		$("#inputPasswordCheck").blur(function(){
    			//2.1 password check에 값이 ""이 아니고,
    			if($("#inputPassword").val() != ""){
    				//2.1.1 emailcheck의 값과 일치하면,
    				if($("#inputPassword").val() == $("#inputPasswordCheck").val()){
    					inputSuccess("#passwordCheck","#passwordCheckCheckSymbol", "#passwordCheckCheckSymbolStatus");
    				//2.1.2 emailcheck의 값과 일치하지 않으면,
    				}else{
    					inputError("#passwordCheck","#passwordCheckCheckSymbol", "#passwordCheckCheckSymbolStatus");
    				}
    			} 
    		});
    	});
    </script>
    
    <!-- signup js over -->
    <!-- ********************************************** -->
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
			     <li class="active"><a href="<c:url value='/signup/signup'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
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
    <!-- sign up  -->
	<h2 class="col-sm-12" style="text-align: center; margin-bottom:40px;">sign up</h2>
	
	
	<form class="form-horizontal">
	<!-- 1. email -->
	  <div class="form-group" id="email">
	    <label for="inputEmail" class="col-sm-2 control-label">Email</label>
	    <div class="col-sm-9">
	      <input type="email" name="email" class="form-control" id="inputEmail" placeholder="Email">
	      <span id="emailCheckSymbol"></span>
	      <span id="emailCheckSymbolStatus"></span>
		  <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	 <!-- 2. email check -->
	  <div class="form-group" id="emailCheck">
	    <label for="inputEmailCheck" class="col-sm-2 control-label">Check-Email</label>
	    <div class="col-sm-9">
	      <input type="email" name="emailCheck" class="form-control" id="inputEmailCheck" placeholder="Check-Email">
	      <span id="emailCheckCheckSymbol"></span>
	      <span id="emailCheckCheckSymbolStatus"></span>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 3. pw -->
	  <div class="form-group" id="password">
	    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
	    <div class="col-sm-9">
	      <input type="password" name="password"  class="form-control" id="inputPassword" placeholder="영문대문자, 소문자, 숫자, 특수문자 1개 이상, 총 8자리 이상">
	      <span id="passwordCheckSymbol"></span>
	      <span id="passwordCheckSymbolStatus"></span>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 4. pw check -->
	  <div class="form-group" id="passwordCheck">
	    <label for="inputPasswordCheck" class="col-sm-2 control-label">Check-Password</label>
	    <div class="col-sm-9">
	      <input type="password" name="passwordCheck"  class="form-control" id="inputPasswordCheck" placeholder="Check-Password">
   	      <span id="passwordCheckCheckSymbol"></span>
	      <span id="passwordCheckCheckSymbolStatus"></span>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 5. name -->
	  <div class="form-group">
	    <label for="inputName" class="col-sm-2 control-label">Name</label>
	    <div class="col-sm-9">
	      <input type="text" name="name" class="form-control" id="inputName" placeholder="Name">
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 6. birthday -->
	  <div class="form-group">
	    <label for="inputBirthday" class="col-sm-2 control-label">Birthday</label>
	    <div class="col-sm-9">
	      <input type="date" name="birthday" class="form-control" id="inputBirthday" placeholder="Birthday">
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 7. Telephone Number -->
	  <div class="form-group">
	    <label for="inputTelNum" class="col-sm-2 control-label">Tel</label>
	    <div class="col-sm-9">
	      <input type="tel" name="telNum" class="form-control" id="inputTelNum" placeholder="Telephone Num.">
	      <p class="col-sm-1"></p>
	    </div>
	  </div>

	  <!-- 8. address
	  10 : 경기도
	  20 : 전라도
	  30 : 경상도
	   -->
	 
	  <div class="form-group">
	    <label for="inputAddr" class="col-sm-2 control-label">Address</label>
	    <div class="col-sm-9">
		    <div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputAddr">
			<label class="btn btn-secondary active">
		    	<input type="radio" name="addr" value="10" autocomplete="off" checked> 경기도
		 	</label>
		    <label class="btn btn-secondary">
		    	<input type="radio" name="addr" value="20" autocomplete="off"> 전라도
		  	</label>
		  	<label class="btn btn-secondary">
		    	<input type="radio" name="addr" value="30" autocomplete="off"> 경상도
		  	</label>
		</div>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	   <!-- 9. hobby
	  100 : 수영
	  200 : 음악감상
	  300 : 공부
	   -->
	 
	  <div class="form-group">
	    <label for="inputHobbies" class="col-sm-2 control-label">Hobby</label>
	    <div class="col-sm-9">
		    <div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputHobbies">
			<label class="btn btn-secondary">
		    	<input type="checkbox" name="hobbies" value="100" > 수영
		 	</label>
		    <label class="btn btn-secondary">
		    	<input type="checkBox" name="hobbies" value="200" > 음악감상
		  	</label>
		  	<label class="btn btn-secondary">
		    	<input type="checkBox" name="hobbies" value="300" > 공부
		  	</label>
		</div>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-default">sign up</button>
	      <button type="submit" class="btn btn-default">cancel</button>
	    </div>
	  </div>
	</form>

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