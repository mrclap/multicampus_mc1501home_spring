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
	       <form action="<c:url value = '/board/update'/>" method="post" encType="multiplart/form-data">
	       		<input type = "hidden" name = "BOARD_SEQ" value = "${resultMap.BOARD_SEQ }"/>
	       		<input type = "hidden" name = "USER_SEQ" value = "${resultMap.USER_SEQ }"/>
	       		
	           <tr>
	               <th>제목: </th>
	               <td><input type="text" name="BOARD_TITLE" class="form-control" value = "${resultMap.BOARD_TITLE }"/></td>
	           </tr>
	           <tr>
	               <th>내용: </th>
	               <td><textarea cols="10" name="BOARD_DESCIPT" class="form-control" style="height:300px;">${resultMap.BOARD_DESCIPT }, ${resultMap.USER_SEQ}, ${resultMap.BOARD_SEQ }</textarea></td>
	           </tr>
	           <tr>
	               <th>첨부파일: </th>
	               <td><input type="text" name="filename" class="form-control"/></td>
	           </tr>
	           <tr>
	               <th>비밀번호: </th>
	               <td><input type="password" class="form-control"/></td>
	           </tr>
	           <tr>
	               <td colspan="2">
	               	   <input type="submit" value="수정" onclick="sendData()" class="btn btn-default pull-right"/>
	                   <a class="btn btn-default pull-right" href="<c:url value = '/board/delete?BOARD_SEQ=${resultMap.BOARD_SEQ }'/>">삭제</a>
	                   <!-- <input type="button" value="RESET" class="btn btn-default pull-left"/> -->
	                   <a class="btn btn-default pull-right" href="<c:url value = '/board/board'/>">글 목록</a>
	               </td>
	           </tr>
	       </form>
	   </tbody>
	</table>
	</div>
</body>
</html>