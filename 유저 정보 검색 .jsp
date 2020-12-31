<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://kit.fontawesome.com/8c9485b50e.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<style>
body{
	background-color:#eaeaea;
}
.board-title{
	color:white;
	font-weight:bold;
	
}



*{
padding:0;
margin:0;

}
.main-contents{
	width:1800px;
	margin:0 auto;
	margin-top:45px;
	
}

.nav-container2{
background-color:#e3f2fd;
 font-weight: bold;
 display:flex;
 justify-content:center;
 border-bottom: 1px solid gray;
 align-items:center;
}
a{
	color:black;
	text-decoration: none;
}
.items{
	background-color:#a3cfec;

}
.nav-items{
	text-align:left;
	
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
	padding:10px;
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
.name{
	font-weight:bold;
	font-size:30px;
	
}
.button-area{
	text-align:right;
	margin-top:100px;
	
}
.nav-items2{
	padding:20px;
	
}
.nav-items img{
	width:70%;
}
.paging-items{
	margin-top:100px;
	
}
.banner-items{
	text-align:center;
}
.banner-items img{
	width:50%;
	margin-top:100px;
	
}
.main-banner{
	background-color:#5382e9;
	height:600px;

}
.search-bar{
	width:600px;
	padding-top:50px;
	margin:0 auto;
	
	
}

.under{
	width:600px;
	margin:0 auto;
}
.table table-striped{
	background-color:white;
}
.profile-logos img{
	width:80%;
}
.flex-items{
	display:flex;
}
.userid{
	font-weight:bold;
	    color: #242929;
    font-size: 40px;
    font-weight: bold;
    margin-right: 4px;
    vertical-align: middle;
	
}
.buttons{
	text-align:center;
	line-height:50px;
	border-radius:4px;
	font-weight:bold;
	font-size:20px;
	cursor: pointer;
	
	background-color:#1e8ecd;
	color:white;
	width:130px;
	height:50px;
	
	

}
.buttons2{
	margin-left:10px;
	background-color:#955cff;
	border-radius:4px;
	text-align:center;
	cursor:pointer;
	font-size:20px;
	font-weight:bold;
	padding:10px;
	color:white;
	
	
}
.button-items{
	display:flex;
	margin-top:30px;
	
}
.userRank img{
	width:80%;
}
.ranked-name2{
    font-size: 30px;
    font-weight: bold;
    color: #1f8ecd;
}
.userRanked{
background-color:white;
	margin-top:100px;
	display:flex;
	align-items:center;
	border:2px solid gray;
	width:450px;
	height:100px;
	

}

.flex-items{
	padding-bottom:40px;
	
	border-bottom:1px solid gray;

}
.area2{
	display:flex;
	
	
	
}
.ranking{
	font-size:20px;
	
}

.userBoard-items{
 	margin-top:100px;
 	margin-left:100px;
 	
	width:1400px;
	
}


.silver img{
	width:300px;
	height:300px;
	
}
.input-group mb-3{
	line-height:50px;
	
}

</style>
<title>Insert title here</title>
</head>
<body>


<nav class="nav-container2">
<div class="nav-items"><a href="http://localhost:8080/project/home"><img src="https://www.freelogodesign.org/file/app/client/thumb/a5ae1939-7ab5-4c73-954e-91a6a7299dd3_200x200.png?1609120650640"></a> </div>
<div class="nav-items2"><a href="">About us</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/paint">그림 </a> </div>
<div class="nav-items2"><a href=""> 사진</a></div>
<div class="nav-items2"><a href="">공예</a> </div>
<div class="nav-items2"><a href="">음악</a> </div>
<div class="nav-items2"><a href="http://localhost:8080/project/board">게시판</a> </div>

<div class="nav-items2">
<form action="userinfomation" method="POST">
<div class="input-group mb-3">
  <input type="text" class="form-control" name="userid" id="userid"  placeholder="유저이름을 입력해주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
  <button class="btn btn-outline-secondary" type="submit" id="button-addon2">검색</button>
</div>
</form>
</div>


</nav>
<div class="main-contents">
<div class="flex-items">
<div class="profile-logos">
<img src="http://opgg-static.akamaized.net/images/profile_icons/profileIcon3867.jpg?image=q_auto:best&v=1518361200">
</div>

<div class="userinformation-items">
<p class="userid">${userid }</p><div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
  <label class="form-check-label" for="flexSwitchCheckChecked">즐겨찾기</label>
</div>
<p class="bulletin-number">총 게시글: ${cnt }개 </p>
<p class="ranking"> 래더 랭킹   위(상위 %)  </p>
<p class="date">이 유저의 최근 활동시간:${rdate } </p>



<div class="button-items">
 <div class="buttons"> 유저 갱신</div>
<div class="buttons2"> 게시판 얼마나 했는지 궁금해?</div>
</div>


</div>

</div>
<div class="area2">
<div class="userRanked">

<div class="userRank">
<img src="http://opgg-static.akamaized.net/images/medals/silver_4.png?image=q_auto:best&v=1">
</div>
<div class="userinformation-items2">
	<p class="name">${reply_view.userid }</p>
	<p class="ranked-name2">Silver 4   </p>
	<p class="bulletin-number">총 게시글: ${cnt }개 </p>
</div>


</div>

<div class="userBoard-items">
	<div class="items">
		<table class="table table-striped" >
      <tr>
         <td>번호<img src="http://opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_22&v=1607480996"></td>
         <td>이름<img src="http://opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=c_scale,q_auto,w_22&v=1607480996"></td>
         <td>제목<img src="http://opgg-static.akamaized.net/images/lol/spell/SummonerSmite.png?image=c_scale,q_auto,w_22&v=1607480996"></td>
         <td>날짜<img src="http://opgg-static.akamaized.net/images/lol/spell/SummonerHeal.png?image=c_scale,q_auto,w_22&v=1607480996"></td>
         <td>조회수<img src="http://opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_22&v=1607480996"></td>
      </tr>
      <c:forEach var="dto" items="${dtos}">
      <tr>
         <td>${dto.board_num}</td>
         <td>${dto.userid}</td>
         <td>
            <c:forEach begin="0" end="${dto.bIndent}">ㄴ</c:forEach>
            <a href="board_view?board_num=${dto.board_num}">${dto.boardtopic}</a></td>
         <td>${dto.rdate}</td>
         <td>${dto.nClick}</td>
      </tr>
      </c:forEach>
      
   </table>
		
	</div>
</div>

</div>

</div>

</body>

</html>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
$(document)
.on("click",".buttons",function(){
	window.location.reload(true);
	
})
$(document)
.on("click","#button-addon2",function(){
	if($("#userid").val()==""){
		alert("유저 아이디를 입력해주세요.");
		return false;
	}
})



</script>


