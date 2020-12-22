<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<script src="https://use.fontawesome.com/1dec14be15.js"></script>
<style>


</style>
<title>Insert title here</title>
</head>
<body>
 <div class="view full-page-intro" style="background-image: url('https://www.google.com.np/imgres?imgurl=https%3A%2F%2Fwww.w3schools.com%2Fw3css%2Fimg_lights.jpg&imgrefurl=https%3A%2F%2Fwww.w3schools.com%2Fw3css%2Fw3css_images.asp&docid=R0KnAtfyBDsyiM&tbnid=kwgHAQqTiLQXLM%3A&vet=10ahUKEwj5z9nr277bAhWBbX0KHZzyAS8QMwitASgBMAE..i&w=600&h=400&bih=702&biw=1366&q=image&ved=0ahUKEwj5z9nr277bAhWBbX0KHZzyAS8QMwitASgBMAE&iact=mrc&uact=8'); background-repeat: no-repeat; background-size: cover;">
        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
          <div class="container">
            <div class="row wow fadeIn">
              <div class="col-md-6 mb-4 white-text text-center text-md-left">
                <h1 class="display-4 font-weight-bold">Sign UP</h1>
                <hr class="hr-light">
                <p>
                  <strong>For the more information</strong>
                </p>
                <p class="mb-4 d-none d-md-block">
                  <strong>Quickly get information from new leads and customers by signing up .WIth their information, you can funnel them into new accounts in an instant.Follow us on FACEBOOK</strong>
                </p>
                <a href="http:/www.facebook.com" target="_blank"  class="btn btn-indigo btn-lg">Facebook
                  <i class="fa fa-facebook ml-2"></i>
                </a>
              </div>
              <div class="col-md-6 col-xl-5 mb-4">
                <div class="card">
                  <div class="card-body">
                    <form action="" method="POST">
                      <p class="h4 text-center mb-4">Sign up</p>
                      <div class="md-form">
                         <i class="fa fa-user prefix grey-text"></i>
                         <input type="text" name="userid"id="userid" class="form-control">
                         <label for="materialFormRegisterNameEx">ID</label>
                      </div>
                      <div class="md-form">
                         <i class="fa fa-envelope prefix grey-text"></i>
                         <input type="email" name="useremail" id="useremail" class="form-control">
                         <label for="materialFormRegisterEmailEx"> email</label>
                      </div>
                      
                      <div class="md-form">
                        <i class="fa fa-lock prefix grey-text"></i>
                        <input type="password" id="userpassword" name="userpassword" class="form-control">
                        <label for="materialFormRegisterPasswordEx"> password</label>
                      </div>
                      <div class="md-form">
                            <i class="fa fa-exclamation-triangle prefix grey-text"></i>
                            <input type="password" id="password2" name="password2" class="form-control">
                            <label for="materialFormRegisterPasswordEx">Confirm Your password</label>
                      </div>
					  <div class="radio">
					  	<input type=radio value='f' id=female name=gender>여성
           				<input type=radio value='m' id=male name=gender>남성
					  </div>
					  <div class="md-form">
                           
                            <input type="text" id="userphonenumber" name="userphonenumber" class="form-control">
                            <label for="materialFormRegisterPasswordEx">phoneNumber(-을 넣어주세요.)</label>
                      </div>
                      <div class="md-form">
                           
                            <input type="text" id="useraddress" name="useraddress" class="form-control">
                            <label for="materialFormRegisterPasswordEx">useraddress</label>
                      </div>
                      <div class="md-form">
                           
                            <input type="text" id="username" name="username" class="form-control">
                            <label for="materialFormRegisterPasswordEx">username</label>
                      </div>
                      <div class="text-center mt-4">
                       <button class="btn btn-primary" id="submit"type="submit" data-toggle="modal" data-target="#myModal">Register</button>
                      
                   </form> 
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   
 
</body>
</html>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
var p2 = $("#password2").val();
var emailVal = $("#useremail").val();
var phoneVal = $("#userphonenumber").val();
//var idVal = $("#userid").val();
var regPhone = /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
var regex = /^01\d\d{3,4}\d{4}$/;
var result = regex.exec($("#userphonenumber").val());
var regExpId = /^[0-9a-z]+$/;
var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
var passRule = /^[A-Za-z0-9]{6,12}$/;//숫자와 문자 포함 형태의 6~12자리 이내의 암호 정규식

$(document)
.on("click","#submit",function(){
	if($("#userid").val()==""){
		alert("아이디는 공백으로 둘수없습니다.");
		
		return false;
	}
	if(!/^[a-z0-9]{4,20}$/.test($("#userid").val())) {
  		alert("아이디는 영 소문자, 숫자 4~20자리로 입력해주세요.");
  			return false;
	 }
	if($("#userpassword").val()==""){
		alert("비밀번호는 공백을 둘 수없습니다.");
		return false;
	}
	
	if($("#userpassword").val()!=$("#password2").val()){
		console.log(p2);
		alert("not matching password please check your password");
		return false;
	}
	if(!passRule.test($("input[id='userpassword']").val())) {
	    alert("비밀번호는 숫자와 문자 포함 형태의 6~12자리 이내로 설정해야합니다")
	 
	    return flase;
	}
	if($("#userpassword").val()==""){
		alert("비밀번호는 공백을 둘 수없습니다.");
		return false;
	}
	
	if($("input[name=gender]:radio:checked").length<1){
		alert("성별을 선택해주세요.")
		return false;
	}
	if($("#userphonenumber").val()==""){
		console.log(p2);
		alert("전화번호는 공백으로 둘수없습니다.");
		return false;
	}
	
	  // 입력 값이 000-0000-0000 형식인지 확인한다.
		var inputtedPhoneNumber = $("#userphonenumber").val();
		var phoneNumberRegex = /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
	  if(!phoneNumberRegex.test(inputtedPhoneNumber)) {
		  alert("휴대폰번호를 하이픈(-) 포함해서 000-0000-0000 형식으로 입력해주세요..!)");
	    return false;
	  } 
	  
	  
	if($("#useraddress").val()==""){
		console.log(p2);
		alert("주소를 입력해주세요.");
		return false;
	}
	
	
	if($("#username").val()==""){
		console.log(p2);
		alert("이름을 입력해주세요.");
		return false;
	}
	 if ($("#username").val().length <= 1) {
			alert("이름을 정확히 입력해주세요");
			return false;
		}
	 if($("#useremail").val()==""){
			alert("이메일은 공백으로 둘수없습니다.");
			return false;
		}
		if(emailVal.match(regExp) = null) {
		    alert("이메일형식에 어긋납니다.");
		    return false;
	  }
	
		 
	   
})
</script>