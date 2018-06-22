<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
   <!--ê²ìí ëª©ë¡ -->
    <!-- íì´í  -->
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
	       <form action="<c:url value = '/board/update'/>" method="post" encType="multiplart/form-data">
	       		<input type = "hidden" name = "BOARD_SEQ" value = "${resultMap.BOARD_SEQ }"/>
	       		<input type = "hidden" name = "USER_SEQ" value = "${resultMap.USER_SEQ }"/>
	       		
	           <tr>
	               <th>제목: </th>
	               <td><input type="text" name="BOARD_TITLE" class="form-control" value = "${resultMap.BOARD_TITLE }"/></td>
	           </tr>
	           <tr>
	               <th>내용: </th>
	               <td><textarea cols="10" name="BOARD_DESCIPT" class="form-control" style="height:300px;">${resultMap.BOARD_DESCIPT }</textarea></td>
	           </tr>
	           <tr>
	               <td colspan="2">
	               	   <input type="submit" value="수정" onclick="sendData()" formaction="<c:url value='/board/update'/>" class="btn btn-default pull-right"/>
	               	   <input type="submit" value="삭제" onclick="sendData()" formaction="<c:url value='/board/delete'/>" class="btn btn-default pull-right"/>
	               	   <input type="submit" value="글 목록" onclick="sendData()" formaction="<c:url value='/board/board'/>" class="btn btn-default pull-right"/>
	                   <!-- <input type="button" value="RESET" class="btn btn-default pull-left"/> -->
	               </td>
	           </tr>
	       </form>
	   </tbody>
	</table>
	</div>
</body>
</html>