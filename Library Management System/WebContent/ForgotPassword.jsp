<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="profile" href="http://gmpg.org/xfn/11">
  <link rel="pingback" href="https://www.library-management.com/xmlrpc.php">
  <link href="https://www.library-management.com/wp-content/themes/library/fonts/fonts.css" rel="stylesheet">
  <link href="https://www.library-management.com/wp-content/themes/library/css/ionicons.min.css" rel="stylesheet">
    <title>Forgot LMS</title>
    <link rel='dns-prefetch' href='//s.w.org' />
<link rel='stylesheet' id='font_awesome-css'  href='https://www.library-management.com/wp-content/themes/library/css/font-awesome.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css'  href='https://www.library-management.com/wp-content/themes/library/css/bootstrap.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='slick-css'  href='https://www.library-management.com/wp-content/themes/library/css/slick.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='slick_theme-css'  href='https://www.library-management.com/wp-content/themes/library/css/slick-theme.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='button-css'  href='https://www.library-management.com/wp-content/themes/library/css/button.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='adminLTE-css'  href='https://www.library-management.com/wp-content/themes/library/css/AdminLTE.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='iziToastCss-css'  href='https://www.library-management.com/wp-content/themes/library/css/iziToast.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='tooltipcss-css'  href='https://www.library-management.com/wp-content/themes/library/css/angular-tooltips.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='datetimepickerCss-css'  href='https://www.library-management.com/wp-content/themes/library/css/jquery.datetimepicker.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='angular_bootstrap_toggle_css-css'  href='https://www.library-management.com/wp-content/themes/library/css/angular-bootstrap-toggle.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='datatable_css-css'  href='https://www.library-management.com/wp-content/themes/library/css/dataTables.bootstrap.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='mainstyle-css'  href='https://www.library-management.com/wp-content/themes/library/style.css?ver=4.9.8' type='text/css' media='all' />


</head>
<body  class="page-template page-template-forgotpassword page-template-forgotpassword-php page page-id-9 hold-transition skin-blue sidebar-mini" >

<div class="wrapper" id="style-5">

  <style type="text/css">
    .skin-blue .wrapper, .skin-blue .main-sidebar, .skin-blue .left-side {
      background-color: #fff;
      }
    
    .loginmodal-container{
   background-color: lightblue;
    }
    

  </style></div>
  <div class="loginmodal-container" ng-controller="forgotPasswordCtrl">

    <h1>Library Management</h1><br>
    <div>
      <span style="font-size: 17px;font-weight: bold;">Change Password</span>
    </div>
    <hr style="border-top: 2px solid #eee;"/>

    <form id="frmForgotPassword" onsubmit="return validate()" action="ChangePasswordServlet">

      <p class="login-username">
        <label for="user_login">Username or Email Address</label>
        <input type="text" name="username" id="user_email" class="form-control fix_radius" value="" size="20" placeholder="Enter Name"
               ng-model="user_email">
        <span id="na"></span>
      </p>

		<p class="New-password">
				<label for="user_pass">New Password</label>
				<input type="password" name="password" id="password" class="input" value="" size="20" placeholder="Enter New Password"/>
				<br />
				<span id="pw"></span>
			</p>
			
			<p class="Con-password">
				<label for="user_pass">Confirm Password</label>
				<input type="password" name="confirmpassword" id="confirmpassword" class="input" onchange="passwordConfirmation()"  value="" size="20" placeholder="Confirm Password"/>
				<br />
				<span id="cpw"></span>
			</p>
      <p class="login-submit">
        <input type="submit" value="Reset Password" 
                class="btn btn-primary form-control fix_radius pmd-ripple-effect" />
      </p>


</form>
<script>

function passwordConfirmation(){
	
	if(document.getElementById("password").value!=document.getElementById("confirmpassword").value){
		document.getElementById("cpw").innerHTML="Password does not match";
		document.getElementById("cpw").style.color='red';
		
	}
}

function validate(){
	var flagName=validateName(document.getElementById("user_email").value);
	var flagPassword=validatePassword(document.getElementById("password").value);
	console.log(flagName && flagPassword);
	if(flagName && flagPassword){
		return true;
	}	
	else{
		return false;
	}
}

function validateName(name){
	if(name.trim()!="")
		return true;
	else{
		document.getElementById("na").innerHTML="Enter your username."
		document.getElementById("na").style.color='red';
		return false;
	}
}

function validatePassword(password){
	if(password!="")
		return true;
	else{
		document.getElementById("pw").innerHTML="Enter password."
		document.getElementById("pw").style.color='red';
		return false;
	}
}

</script>
</div>
</body>
</html>