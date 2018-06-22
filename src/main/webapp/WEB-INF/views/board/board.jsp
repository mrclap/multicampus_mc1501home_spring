<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html><head>
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
 	<!--게시판 목록 -->
    <!-- 타이틀  -->
    <div class="container marketing">
	<h2 class="text-center" style="margin-bottom:20px;">Board</h2>
	  <div class="row justify-content-md-center">
	    <div class="col-md-auto text-center">
	          <p>수업에 관련된 URI 등을 공유합니다! <br></p>
	          <br>
	    </div>
	  </div>
   
	<div class="container text-center">
	 <div class="row" style="height : 100%;">
	   <table class="table table-hover" style="width:100%;">
	     <thead>
	       <tr>
	         <th class="text-center">번호</th>
	         <th class="text-center">제목</th>
	         <th class="text-center">작성자</th>
	         <th class="text-center">날짜</th>
	         <th class="text-center">조회수</th>
	       </tr>
	     </thead>
	     <tbody>
						<c:forEach items="${resultList}" var="resultData" varStatus="loop">
							<tr
								class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
								<input type="hidden" name ="USER_SEQ" value="${resultData.USER_SEQ }"/>
								<input type="hidden" name ="BOARD_SEQ" value="${resultData.BOARD_SEQ }"/>
								<td class="text-center">${loop.index+1 }</td>
								<td class="text-center"><a
									href="<c:url value="/board/read?USER_SEQ=${resultData.USER_SEQ }&BOARD_SEQ=${resultData.BOARD_SEQ }" />">
										${resultData.BOARD_TITLE}</a></td>
								<td class="text-center">${resultData.USER_SEQ}</td>
								<td class="text-center">${resultData.BOARD_DATE}</td>
								<td class="text-center">${resultData.BOARD_VIEW}</td>
							</tr>
						</c:forEach>
					</tbody>
	   </table>
	
	<div class="container">
	<div class="row">
	  <a class="btn btn-default pull-right" href="<c:url value='/board/write' />">글쓰기</a>
	</div>
		  <div class="row justify-content-md-center">
		   <div class="text-center">
		     <ul class="pagination">
		       <li><a href="#">1</a></li>
		       <li><a href="#">2</a></li>
		       <li><a href="#">3</a></li>
		       <li><a href="#">4</a></li>
		       <li><a href="#">5</a></li>
		     </ul>
		   </div>	
	   </div>
	 </div>
    </div>
   </div>
</div>
</body>
</html>