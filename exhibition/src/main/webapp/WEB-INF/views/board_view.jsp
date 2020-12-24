<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<style>
*{
padding:0;
margin:0;

}
.main-contents{
	width:1000px;
	margin:0 auto;
	margin-top:45px;
	
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
.button-area{
	text-align:right;
	
}

.button-items{
		text-align:right;
}
.main-contents{
	width:1000px;
	margin:0 auto;
	margin-top:50px;
	
}

</style>
<title>Insert title here</title>
</head>
<body>

<nav class="nav-container2">
<div class="nav-items2"><a href="http://localhost:8080/project/home">메인으로 돌아가기</a> </div>
<div class="nav-items2"><a href="">About us</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/paint">그림 </a> </div>
<div class="nav-items2"><a href=""> 사진</a></div>
<div class="nav-items2"><a href="">공예</a> </div>
<div class="nav-items2"><a href="">음악</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/board">게시판</a> </div>


</nav>

<div class="main-contents">
<table class="table table-striped" >
   		<tr><td algin=right>게시물번호</td> <td>${board_view.board_num }</td></tr>
    	<tr><td algin=right>제목</td> <td>${board_view.boardtopic }</td></tr>
    	<tr><td algin=right>작성자</td> <td>${board_view.userid }</td></tr>
    	<tr><td algin=right>작성일</td> <td>${board_view.rdate }</td></tr>
    	<tr><td algin=right>내용</td> <td>${board_view.board_comment }</td></tr>
    	<tr><td algin=right>조회수</td> <td>${board_view.nClick}</td></tr>
    	
    </table>
    <div class="button-items">
    <button type="button" class="btn btn-primary"><a href="http://localhost:8080/project/board_update?board_num=${board_view.board_num }">글삭제하기/수정하기</a></button>
    
    <button type="button" class="btn btn-info"><a href="http://localhost:8080/project/board">글목록으로가기</a></button>
    
    
    </div>
    
   </div>

</body>
</html>