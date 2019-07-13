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
	
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Register</label>
		
		
		<div class="login-form">
		
		<div>
		<!-- Log -->
		<c:url var="loginPerson" value="/loginPerson" />
		<form id="user_form" action="${loginPerson}" method="POST">
			<div class="sign-in-htm">
				<div class="group">
					<label for="name" class="label">Username</label>
					<input id="name" type="text" class="input" name="name">
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
					<label for="alias" class="label">Alias</label>
					<input id="alias" type="text" class="input" name="alias">
				</div>
				<div class="group">
					<label for="password" class="label">Password</label>
					<input id="password" type="password" class="input" data-type="password" name="password">
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


<!--  
<body>
<h1>
${messageLogin}
</h1>
<h1>
${model.messageLogin}
</h1>
<h1>
asdasd
</h1>

	<div class="container">
		<h3 id="form_header" class="text-warning" align="center">Login
			Application</h3>
		<div></div>


		<c:url var="loginPerson" value="/loginPerson" />
		<form id="user_form" action="${loginPerson}" method="POST">
			<div class="form-group">
				<label for="name">Alias:</label> <input type="text"
					class="form-control" id="name" placeholder="Enter Alias"
					name="name">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="passºword" placeholder="Enter password"
					name="password">
			</div>
			<button id="confirm_user" type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>

	<div class="container">
		<h3 id="form_header" class="text-warning" align="center">Reg
			Application</h3>
		<div></div>


		<c:url var="registerPerson" value="/registerPerson" />
		<form id="user_form" action="${registerPerson}" method="POST">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" placeholder="Enter Name" name="name">
			</div>
			<div class="form-group">
				<label for="name">Alias:</label> <input type="text"
					class="form-control" id="alias" placeholder="Enter Alias" name="alias">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="passºword" placeholder="Enter password"
					name="password">
			</div>
			<button id="confirm_user" type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>
</body>
</html>
 -->