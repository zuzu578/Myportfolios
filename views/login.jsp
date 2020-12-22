<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
body {
    font-family: "Lato", sans-serif;
}

a{
  color: red; 
  text-decoration: none;


}


.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    background-color: #000;
    overflow-x: hidden;
    padding-top: 20px;
}


.main {
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}
</style>
<body>

<div class="sidenav">
         <div class="login-main-text">
            <h2>Login Page</h2>
            <p>Login or register from here to access.</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form action="loginCheck" method="POST">
                  <div class="form-group">
                     <label>User ID</label>
                     <input type="text" name="id" id="id" class="form-control" placeholder="User id">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" id="passwd" name="passwd" class="form-control" placeholder="Password">
                  </div>
                  <div class="find-account">
                  <p class="id"><a href="http://localhost:8181/practice/getId">forgot your id?</a></p>
                  <p class="id"><a href="http://localhost:8181/practice/getPw">forgot your password?</a></p>
                  
                  </div>
                  <button type="submit" id="button" class="btn btn-black">Login</button>
                  <button type="button" id="return" class="btn btn-black"><a href="http://localhost:8181/practice/home">return</a></button>
                  
               </form>
            </div>
         </div>
      </div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.on("click","#button",function(){
	if($("#userid").val()==""){
		alert("please enter your id");
		return false;
	}
	if($("#passcode").val()==""){
		alert("please enter your password");
		return false;
	}
	
})

		



</script>
