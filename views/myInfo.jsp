<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta charset="EUC-KR">
<style>
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
	width:400px;
	
}
.main{
	display:flex;
	
}
.left-items{
	padding:20px;
	font-weight:bold;
	
}
</style>
<title>Insert title here</title>
</head>


<body>
<nav class="nav-container">
<div class="nav-items"> </div>


</nav>
<nav class="nav-container2">
<div class="nav-items2"><a href="http://localhost:8181/practice/home">메인으로 돌아가기</a> </div>
<div class="nav-items2"><a href="">About us</a> </div>
<div class="nav-items2"><a href="">그림 </a> </div>
<div class="nav-items2"><a href=""> 사진</a></div>
<div class="nav-items2"><a href="">공예</a> </div>
<div class="nav-items2"><a href="">음악</a> </div>
<div class="nav-items2"><a href="">게시판</a> </div>


</nav>

<div class="main">
<div class="left">
<div class="left-items">
<a href="http://localhost:8181/practice/myInfo">회원정보</a>
</div>
<div class="left-items">
<a href="http://localhost:8181/practice/myList">등록한 작품</a>
</div>
<div class="left-items">
<a href="http://localhost:8181/practice/myItems">보관함</a>
</div>



</div>

<div class="center">
<table class="table table-striped" style="width:800px">
   		<tr><td algin=right>아아디</td> <td>${content_view.bId }</td></tr>
    	<tr><td algin=right>비밀번호</td> <td>${content_view.bTitle }</td></tr>
    	<tr><td algin=right>비밀번호 확인</td> <td>${content_view.bName }</td></tr>
    	<tr><td algin=right>이름</td> <td>${content_view.bDate }</td></tr>
    	<tr><td algin=right>성별</td> <td>${content_view.bContent }</td></tr>
    	<tr><td algin=right>이메일</td> <td>${content_view.bHit}</td></tr>
    	<tr><td algin=right>전화</td> <td>${content_view.bHit}</td></tr>
    	<tr><td algin=right>주소</td> <td>${content_view.bHit}</td></tr>
    	
    </table>
  
    <button type="button" class="btn btn-success"><a href="http://localhost:8181/practice/myInfoEdit">수정하기</a></button>

    
  
    </div>
    </div>
    

</body>
</html>