<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
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
<form method="POST" action="board_write_view">
   <table class="table table-striped">
    <!-- 글쓰기  -->
   		
    	<tr><td algin=right>제목</td> <td><div class="input-group mb-3">
  
  <input type="text" class="form-control" id="boardtopic" name="boardtopic" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
</div></td></tr>
    	<tr><td algin=right>작성자</td> <td><div class="input-group mb-3">
 
  <input type="text" class="form-control" id="userid" name="userid" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
</div></td></tr>
    	<tr><td algin=right>내용</td><td><div class="input-group">
  
  <textarea class="form-control" name="board_comment" id="board_comment" aria-label="With textarea"></textarea>
</div></td></tr>
    	
    </table>
    <div class="Button-items">
    <button type="button" class="btn btn-info"><a href="http://localhost:8080/project/board">취소</a></button>
    <button type="submit" id="submit" name="submit"class="btn btn-success">게시글 작성</button>

    </div>
    </form>
    </div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
$(document)
.on("click","#submit",function(){
	if($("#bTitle").val()==""){
		alert("제목을 입력하세요.");
		return false;
		
	}
	if($("#bName").val()==""){
		alert("작성자 이름을 입력하세요.");
		return false;
		
	}
	if($("#bContent").val()==""){
		alert("내용을 입력하세요.");
		return false;
		
	}
})

</script>
