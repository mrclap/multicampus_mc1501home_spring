<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="principalName" value="${pageContext.request.userPrincipal.name}"/>

<html>
<head>


</head>
<body>
<script>
	$(function(){
		$("#layerModal").click(function(){
			$("#myModal").modal();
		});
	});
</script>
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
     <!-- 술고?  -->
	<h2 class="text-center" style="margin-bottom:20px;">술고?!</h2>
	<div class="row justify-content-md-center">
	  <div class="col-md-auto text-center">
	        <p>여러분의 음주를 지향합니다. <br>
		   	자연스럽고 노골적으로 오늘의 술 한 잔을 제안하세요. <br>
	       	2명 이상이 술고? 버튼을 누를 경우 메인에 술고?! 인디케이터가 활성화됩니다.</p>
	        <br>
	  </div>
    </div>
	
	
	<form class="form-horizontal" action="<c:url value='/sul-go/merge' />" method='POST'>
	<div class="container">
	  <div class="row text-center">
	  	<input type="hidden" name="USER_SEQ" value="${resultMap.USER_SEQ }"/>
	  	<c:choose>
	  		<c:when test="${'2' eq resultMap.SULGO_FLAG }">
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<button type="submit" class="btn btn-success btn-lg" formaction="<c:url value='/sul-go/merge?SULGO_FLAG=1'/>">술고?!</button>
			</c:when>		
			<c:when test="${'1' eq resultMap.SULGO_FLAG }">
				<!-- Indicates a dangerous or potentially negative action -->
				<button type="submit" class="btn btn-danger btn-lg" formaction="<c:url value='/sul-go/merge?SULGO_FLAG=2'/>">Nope!</button>
			</c:when>
			<c:otherwise>
				<button type="submit" class="btn btn-success btn-lg" formaction="<c:url value='/sul-go/merge?SULGO_FLAG=1'/>">술고?!</button>
				<button type="submit" class="btn btn-danger btn-lg" formaction="<c:url value='/sul-go/merge?SULGO_FLAG=2'/>">Nope!</button>
			</c:otherwise>
		</c:choose>
		</div>
	</div>	
	</form>
	<br>
	<br>
	<div class="text-center">
		  
		  <!-- 2명 이상이 술고 버튼을 누르지 않앗을 때에는 
		  <button class="btn btn-secondary dropdown-toggle disabled" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    오늘의 술고 전사 보기
		  </button>  
		     -->
		  <button class="btn btn-secondary" type="button" id="layerModal">
		    오늘의 술고 전사 보기
		  </button>
	</div>
	
	<div class = "modal fade" id = "myModal">
        	<div class = "modal-dialog">
        		<div class = "modal-content">
        			<div class = "modal-header">
        				<button type = "button" class = "close" data-dismiss = "modal">x</button>
        				<h4 class = "modal-title" id = "myModalLabel">바~로 달립니다!</h4>	
        			</div>
        			<div class = "modal-body">
					   <table class="table table-hover" style="width:100%;">
					     <thead>
					       <tr>
					         <th class="text-center">오늘의 술고전사!</th>
					       </tr>
					     </thead>
					     <tbody>
							<c:forEach items="${resultList}" var="resultData" varStatus="loop">
								<tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
									<td class="text-center">${resultData.USER_NAME }</td>
								</tr>
							</c:forEach>
						</tbody>
					   </table>
        			</div>
        			<div class = "modal-footer">
        				<button type = "button" data-dismiss = "modal">Close</button>
        			</div>
        		</div>
        	</div>
   </div>
   </body>
   </html>