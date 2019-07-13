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

	<nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
		<a class="navbar-brand"
			href="${contextPath}/allMessages/${personLogin.id}">CDS Academy</a>
		<button class="navbar-toggler p-0 border-0" type="button"
			data-toggle="offcanvas">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="navbar-collapse offcanvas-collapse"
			id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Dashboard<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item">      
				      <a class="nav-link" href="${contextPath}/allTopics?idLog=${personLogin.id}">Topics</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${contextPath}/myMessages/${personLogin.id}">My messages</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="nav-scroller bg-white box-shadow">
		<nav class="nav nav-underline">
			<a class="nav-link active" href="#">${personLogin.name}</a> <a
				class="nav-link" href="#">@${personLogin.alias}</a> <a
				class="nav-link" href="#"> Friends <span
				class="badge badge-pill bg-light align-text-bottom">27</span>
			</a>
		</nav>
	</div>

	<div class="my-3 p-3 bg-white rounded box-shadow">
		<div class="row">
			<div class="col-md-12">
				<h4>All Topic</h4>
			</div>
			<div class="col-lg-8 col-md-10 ml-auto mr-auto">

				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th class="text-center">Topic ID</th>
								<th>Author</th>
								<th>Topic</th>
								<th>Likes</th>
								<th>Diskiles</th>
								<th class="text-right">Like</th>
								<th class="text-right">Dislike</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listTopic}" var="topic">


								<tr>
									<td class="text-center">${topic.id}</td>
									<td>${topic.author}</td>
									<td>${topic.name}</td>
									<td>${topic.likes}</td>
									<td>${topic.dislikes}</td>
									<td class="td-actions text-right"><a
										href="<c:url value='likeTopic/${topic.id}/?idLog=${personLogin.id}'/>">Like</a>
									</td>
									<td class="td-actions text-right"><a
										href="<c:url value='dislikeTopic/${topic.id}/?idLog=${personLogin.id}'/>">Dislike</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<h3 id="form_header" class="text-warning" align="center">Post message</h3>
		<div></div>

		<!-- User input form to validate a user -->
		<c:url var="addTopic" value="/addTopic/?idLog=${personLogin.id}" />
		<form id="user_form" action="${addTopic}" method="POST">
			<div class="form-group">
			<input type="hidden"
					class="form-control" id="author" value="${personLogin.alias}"
					name="author" readonly>
			</div>

			<div class="form-group">
			<input type="text"
					class="form-control" id="name" 
					name="name">
			</div>
			<button id="postTopic" type="submit" class="btn btn-primary">Post Topic</button>
		</form>
	</div>
	
</body>
</html>