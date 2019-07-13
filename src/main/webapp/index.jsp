<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">

</head>


<div class="login-wrap">
	<div class="login-html">
		<div>${messageLoginError}</div>

	    
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Register</label>
		
		
		<div class="login-form">
		
		<div>
		<!-- Log -->
		<c:url var="loginPerson" value="/loginPerson" />
		<form id="user_form" action="${loginPerson}" method="POST">
			<div class="sign-in-htm">
				<div class="group">
					<label for="email" class="label">Email</label>
					<input id="email" type="text" class="input" name="email">
				</div>
				<div class="group">
					<label for="password" class="label">Password</label>
					<input id="password" type="password" class="input" data-type="password" name="password">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
			</div>
		</form>
		</div>	
			<!-- Register -->
			<div>
		<c:url var="registerPerson" value="/registerPerson" />
		<form id="user_form" action="${registerPerson}" method="POST">
			<div class="for-pwd-htm">
				<div class="group">
					<label for="name" class="label">Name</label>
					<input id="name" type="text" class="input" name="name">
				</div>
				<div class="group">
					<label for="email" class="label">Email</label>
					<input id="email" type="email" class="input" data-type="email" name="email">
				</div>
				<div class="group">
					<label for="alias" class="label">Alias</label>
					<input id="alias" type="text" class="input" name="alias">
				</div>
				<div class="group">
					<label for="password" class="label">Password</label>
					<input id="password" type="password" class="input" data-type="password" name="password">
				</div>
				<div class="group">
					<label for="repeatpassword" class="label">Repeat Password</label>
					<input id="repeatpassword" type="password" class="input" data-type="repeatpassword" name="repeatpassword">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Resgister">
				</div>
				<div class="hr"></div>
			</div>
			
		</form>			
		</div>	
		</div>
	</div>
</div>



