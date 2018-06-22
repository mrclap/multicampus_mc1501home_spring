<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="principalName" value="${pageContext.request.userPrincipal.name}"/>
<html>
<head>
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
    <!-- hot/cold 에어컨 민주주의  -->
	<h2 class="text-center" style="margin-bottom:20px;">에어컨 민주주의</h2>
	  <div class="row justify-content-md-center">
	    <div class="col-md-auto text-center">
	          <p>지금 강의실의 온도는 어떤가요? 당신의 의견을 제시해주세요. <br>
	          	5명 이상이 춥거나 더우면 에어컨 온도를 조절합니다.</p>
	          <br>
	    </div>
	  </div>
	<form class="form-horizontal" action="<c:url value='/coldhot/merge' />" method='POST'>
	<div class="container">
	  <div class="row text-center">
	  	<input type="hidden" name="USER_SEQ" value="${resultMap.USER_SEQ }"/>
		<c:choose>
	  		<c:when test="${'1' eq resultMap.COLD_HOT_FLAG }">
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<button type="submit" class="btn btn-success btn-lg" formaction="<c:url value='/coldhot/merge?COLD_HOT_FLAG=2'/>">츄워요...</button>
			</c:when>		
			<c:when test="${'2' eq resultMap.COLD_HOT_FLAG }">
				<!-- Indicates a dangerous or potentially negative action -->
				<button type="submit" class="btn btn-danger btn-lg" formaction="<c:url value='/coldhot/merge?COLD_HOT_FLAG=1'/>">더워요...</button>
			</c:when>
			<c:otherwise>
				<button type="submit" class="btn btn-success btn-lg" formaction="<c:url value='/coldhot/merge?COLD_HOT_FLAG=2'/>">츄워요...</button>
				<button type="submit" class="btn btn-danger btn-lg" formaction="<c:url value='/coldhot/merge?COLD_HOT_FLAG=1'/>">더워요...</button>
			</c:otherwise>
		</c:choose>
	   </div>
	</div>	
	</form>
