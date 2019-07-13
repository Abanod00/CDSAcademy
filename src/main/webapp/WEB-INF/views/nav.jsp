<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
	<a class="navbar-brand" href="${contextPath}/allMessages/${personLogin.id}">CDS Academy</a>
	<button class="navbar-toggler p-0 border-0" type="button"
		data-toggle="offcanvas">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="navbar-collapse offcanvas-collapse"
		id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Dashboard<span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link"
				href="${contextPath}/allTopics?idLog=${personLogin.id}">Topics</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${contextPath}/myMessages/${personLogin.id}">My messages</a></li>
			<li class="nav-item"><a class="nav-link" href="${contextPath}/">Logout</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text" placeholder="Search"
				aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>