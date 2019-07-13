<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
<title>CDS Academy - 2019</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

 <script src="<c:url value="/resources/js/messages.js" />"></script>
<link href="<c:url value="/resources/css/messages.css" />" rel="stylesheet">
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<body class="bg-light">

    <nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
      <a class="navbar-brand" href="#">CDS Academy</a>
      <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Dashboard<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${contextPath}/allTopics?idLog=${personLogin.id}">Topics</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${contextPath}/myMessages/${personLogin.id}">My messages</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <div class="nav-scroller bg-white box-shadow">
      <nav class="nav nav-underline">
        <a class="nav-link active" href="#">${personLogin.name}</a>
        <a class="nav-link" href="#">@${personLogin.alias}</a>
        <a class="nav-link" href="#">
          Friends
          <span class="badge badge-pill bg-light align-text-bottom">27</span>
        </a>
      </nav>
    </div>

    <main role="main" class="container">
      <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
    
 <img class="mr-3" alt="" width="48" height="48" src='<c:url value="/resources/img/hpe-cds-logo.png"  ></c:url>' >   
        <div class="lh-100">
          <h6 class="mb-0 text-white lh-100">CDS Academy</h6>
          <small>Since 2018</small>
        </div>
      </div>

      <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">Recent updates</h6>
        
        
        <c:forEach items="${listMessages}" var="message">
        <div class="media text-muted pt-3">
          <img  alt="32x32" class="mr-2 rounded" style="width: 32px; height: 32px;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16b5bb5ee35%20text%20%7B%20fill%3A%23007bff%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16b5bb5ee35%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%23007bff%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2211.546875%22%20y%3D%2216.9%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">@${message.aliasPerson}</strong>
           ${message.message}
          </p>
        </div>
	</c:forEach>

        <small class="d-block text-right mt-3">
          <a href="#">All updates</a>
        </small>
      </div>

      <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">Suggestions</h6>
        
       <c:forEach items="${listRandomPersons}" var="randomPersons">

        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&amp;bg=007bff&amp;fg=007bff&amp;size=1" alt="32x32" class="mr-2 rounded" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16b5bb5ee3a%20text%20%7B%20fill%3A%23007bff%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16b5bb5ee3a%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%23007bff%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2211.546875%22%20y%3D%2216.9%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="width: 32px; height: 32px;">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark">${randomPersons.name}</strong>
              <a href="#">Follow</a>
            </div>
            <span class="d-block">@${randomPersons.alias}</span>
          </div>
        </div>
       </c:forEach>

        <small class="d-block text-right mt-3">
          <a href="${contextPath}/persons/${personLogin.id}">All suggestions</a>
        </small>
      </div>
    </main>

	<div class="container">
		<h3 id="form_header" class="text-warning" align="center">Post message</h3>
		<div></div>

		<!-- User input form to validate a user -->
		<c:url var="addMessage" value="/addMessage" />
		<form id="user_form" action="${addMessage}" method="POST">
			<div class="form-group">
			<input type="hidden"
					class="form-control" id="idPerson" value="${personLogin.id}"
					name="idPerson" readonly>
			</div>
			<div class="form-group">
			<input type="hidden"
					class="form-control" id="aliasPerson" value="${personLogin.alias}"
					name="aliasPerson" readonly>
			</div>
			<div class="form-group">
			<textarea class="form-control" name='message' id='message'></textarea>
			</div>
			<button id="postMessage" type="submit" class="btn btn-primary">Post Message</button>
		</form>
	</div>

</body>
</html>
