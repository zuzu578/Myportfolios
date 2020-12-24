<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<style>
a { text-decoration:none } 
*{
padding:0;
margin:0;

}

.nav-container2{
 display:flex;
 justify-content:center;
 border-bottom: 1px solid gray;
}
a{
	color:black;
	text-decoration: none;
}
.nav-items2{
	padding:20px;
	

}
.left{
	width:200px;
	border-right:1px solid gray;
	height:500px;
	
}
.main{
	display:flex;
	
}
.left-items{
	padding:20px;
	font-weight:bold;
	
	
}
.center{
	padding:20px;
	width:1000px;
	
	
}
.goods{
	padding-top:10px;
	font-weight:bold;
	color:orange;
	border-top:2px solid gray;
	border-bottom:2px solid gray;
	
	
}
.main-contents{
	width:1000px;
	margin:0 auto;
	margin-top:45px;
	
}
.information{
	color:red;
}

</style>
<body>
<nav class="nav-container2">
<div class="nav-items2"><a href="http://localhost:8080/project/home">메인으로 돌아가기</a> </div>
<div class="nav-items2"><a href="">About us</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/paint">그림 </a> </div>
<div class="nav-items2"><a href=""> 사진</a></div>
<div class="nav-items2"><a href="">공예</a> </div>
<div class="nav-items2"><a href="">음악</a> </div>
<div class="nav-items2"><a href="">게시판</a> </div>


</nav>
<div class="main-contents">
<div class="information">
<h1 class="informations">주의사항</h1>
<ul class="informations-items">
	<li>광고 및 기타 상업행위 글은 금지합니다.(삭제 및 법적 조치) </li>
	<li>욕설 및 비방 글을 금지합니다.</li>
		

</ul>

</div>
     <form action="Doboard_update" method="GET">
    <table class="table table-striped">
    <!-- readonly 는 읽을 수만있음 수정 x -->
   		 
    	<tr><td algin=right>작성일</td> <td>${board_update.rdate }</td></tr>
    	<tr><td algin=right>조회수</td> <td>${board_update.nClick}</td></tr>
   		<tr><td algin=right>게시물번호</td> <td><input type="text" name="board_num"value='${board_update.board_num }' readonly></td></tr>
    	<tr><td algin=right>제목</td> <td><input type="text" id="boardtopic"  name="boardtopic"value='${board_update.boardtopic }'class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></td></tr>
    	<tr><td algin=right>작성자</td> <td><div class="input-group mb-3">
  			<input type="hidden" value="hidden" name="hidden" readonly>
  <input type="text"  id="userid" name="userid"value='${board_update.userid }'class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
</div></td></tr>
    	<tr><td algin=right>내용</td><td><div class="input-group">
 
  <textarea class="form-control" id="board_comment" name="board_comment" aria-label="With textarea">${board_update.board_comment }</textarea>
</div></td></tr>
    	
    	
    </table>
    	<button type="button" class="btn btn-primary"><a href="http://localhost:8080/project/board">글목록으로</a></button>
    <button type="submit" id="modify" name="modify" value="modify" class="btn btn-success">수정하기</button>
    <button type="submit" id="delete" name="delete" value="delete" class="btn btn-danger">삭제하기</button>
    
    	
    </form>
    </div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
$(document)
.on("click","#modify",function(){
	$('input[name=hidden]').val("modify")	
	var v8 = confirm("수정하시겠습니까?");
	if(v8==true){
		$("#hidden").val("modify");
		alert("수정되었습니다.")
	}else{
		alert("수정을 취소합니다.")
		return false;
	}
	
})

.on("click","#delete",function(){
	var v8 = confirm("삭제하시겠습니까?");
	if(v8==true){
		$("#hidden").val("delete");
		alert("삭제되었습니다.")
	}else{
		alert("삭제를 취소합니다.")
		return false;
	}
})

</script>
