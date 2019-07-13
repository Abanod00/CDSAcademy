<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>CDS Academy - 2019</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">

<script src="<c:url value="/resources/js/messages.js" />"></script>
<link href="<c:url value="/resources/css/messages.css" />"
	rel="stylesheet">


</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<body class="bg-light">

<jsp:include page="nav.jsp" />

	<div class="nav-scroller bg-white box-shadow">
		<nav class="nav nav-underline">
			<a class="nav-link active" href="#">${personLogin.name}</a> <a
				class="nav-link" href="#">@${personLogin.alias}</a> <a
				class="nav-link" href="#"> Friends <span
				class="badge badge-pill bg-light align-text-bottom">27</span>
			</a>
		</nav>
	</div>

	<main role="main" class="container">
	<div
		class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
		<img class="mr-3"
			src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-outline.svg"
			alt="" width="48" height="48">
		<div class="lh-100">
			<h6 class="mb-0 text-white lh-100">CDS Academy</h6>
			<small>Since 2018</small>
		</div>
	</div>

	<div class="my-3 p-3 bg-white rounded box-shadow">
		<div class="row">
			<div class="col-md-12">
				<h4>@${personLogin.alias} - Messages</h4>
			</div>
			<div class="col-lg-8 col-md-10 ml-auto mr-auto">

				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th class="text-center">Message ID</th>
								<th>Name</th>
								<th>Alias</th>
								<th>Message</th>
								<th class="text-right">Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listMessages}" var="message">


								<tr>
									<td class="text-center">${message.id}</td>
									<td>${personLogin.name}</td>
									<td>@${message.aliasPerson}</td>
									<td>${message.message}</td>
									<td class="td-actions text-right"><a
										href="<c:url value='/removeMessage/${personLogin.id}/${message.id}' />">Remove</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

