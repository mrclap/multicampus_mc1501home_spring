<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html><head>
    <!-- ********************************************** -->
    <script src="<c:url value='/resources/js/jquery-3.3.1.min.js'/>"></script>
    <!-- signup js -->
    
   <!--  <script>
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
    	   
    </script> -->
    
    <!-- signup js over -->
    <!-- ********************************************** -->
  </head>
  <body>

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
	
	<form class="form-horizontal" role="form" action="<c:url value='/signup/insert' />" method="POST">
	
	<!-- 1. email -->
	  <div class="form-group" id="email">
	    <label for="inputEmail" class="col-sm-2 control-label">Email</label>
	    <div class="col-sm-9">
	      <input type="text" name="USER_ID" class="form-control" id="inputEmail" placeholder="Email" value="">
	      <span id="emailCheckSymbol"></span>
	      <span id="emailCheckSymbolStatus"></span>
		  <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	 <!-- 2. email check -->
	  <div class="form-group" id="emailCheck">
	    <label for="inputEmailCheck" class="col-sm-2 control-label">Check-Email</label>
	    <div class="col-sm-9">
	      <input type="text" name="emailCheck" class="form-control" id="inputEmailCheck" placeholder="Check-Email">
	      <span id="emailCheckCheckSymbol"></span>
	      <span id="emailCheckCheckSymbolStatus"></span>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 3. pw -->
	  <div class="form-group" id="password">
	    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
	    <div class="col-sm-9">
	      <input type="password" name="USER_PASSWORD"  class="form-control" id="inputPassword" placeholder="영문대문자, 소문자, 숫자, 특수문자 1개 이상, 총 8자리 이상" value="">
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
	      <input type="text" name="USER_NAME" class="form-control" id="inputName" placeholder="Name" value="">
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 6. birthday -->
	  <div class="form-group">
	    <label for="inputBirthday" class="col-sm-2 control-label">Birthday</label>
	    <div class="col-sm-9">
	      <input type="date" name="USER_BIRTH" class="form-control" id="inputBirthday" placeholder="Birthday" value="">
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	  <!-- 7. Telephone Number -->
	  <div class="form-group">
	    <label for="inputTelNum" class="col-sm-2 control-label">Tel</label>
	    <div class="col-sm-9">
	      <input type="tel" name="USER_TEL" class="form-control" id="inputTelNum" placeholder="Telephone Num." value="">
	      <p class="col-sm-1"></p>
	    </div>
	  </div>

<!-- 	  <!-- 8. address
	  10 : 경기도
	  20 : 전라도
	  30 : 경상도
	   -->
	 
	  <div class="form-group">
	    <label for="inputAddr" class="col-sm-2 control-label">Address</label>
	    <div class="col-sm-9">
		    <div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputAddr">
			<label class="btn btn-secondary active">
		    	<input type="radio" name="ADDRESS_SEQ" value="4000" autocomplete="off" checked> 서울
		 	</label>
		    <label class="btn btn-secondary">
		    	<input type="radio" name="ADDRESS_SEQ" value="4001" autocomplete="off"> 부산
		  	</label>
		  	<label class="btn btn-secondary">
		    	<input type="radio" name="ADDRESS_SEQ" value="4002" autocomplete="off"> 대구
		  	</label>
		</div>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>
	  
	<!--    9. hobby
	  100 : 수영
	  200 : 음악감상
	  300 : 공부  -->
	  
	 
	  <div class="form-group">
	    <label for="inputHobbies" class="col-sm-2 control-label">Hobby</label>
	    <div class="col-sm-9">
		    <div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputHobbies">
			<label class="btn btn-secondary">
		    	<input type="checkbox" name="HOBBY_SEQ" value="3000" > 축구
		 	</label>
		    <label class="btn btn-secondary">
		    	<input type="checkBox" name="HOBBY_SEQ" value="3001" > 야구
		  	</label>
		  	<label class="btn btn-secondary">
		    	<input type="checkBox" name="HOBBY_SEQ" value="3002" > 수영
		  	</label>
		</div>
	      <p class="col-sm-1"></p>
	    </div>
	  </div>

		<div class="form-group">
			<label for="inputauthority" class="col-sm-2 control-label">Authorirty</label>
			<div class="col-sm-9">
				<div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputAuthority">
					<select name="AUTH_SEQ">
						<option value="5000">ADMIN</option>
						<option value="5001">MANAGER</option>
						<option value="5002">CEO</option>
						<option value="5003">GUEST</option>
					</select>
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">sign up</button>
					<button type="submit" class="btn btn-default">cancel</button>
				</div>
			</div>
	</form>
