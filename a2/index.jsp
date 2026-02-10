<!DOCTYPE html>
<html lang="en">
<head>
<!--
"Time-stamp: <Sat, 01-02-21, 18:35:01 Eastern Standard Time>"
//-->
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
	<meta name="author" content="Khushi Patel">
	<link rel="icon" href="favicon.ico">
	<link rel="stylesheet" href="./../css/fsu-theme.css">
	<title>LIS4368 - Assignment 2</title>

	<%@ include file="/css/include_css.jsp" %>		
	
</head>
<body>

<!-- display application path -->
<% //= request.getContextPath()%>
	
<!-- can also find path like this...<a href="${pageContext.request.contextPath}${'/a5/index.jsp'}">A5</a> -->

	<%@ include file="/global/nav.jsp" %>	

	<div class="container">
		<div class="starter-template">
			<div class="page-header">
				<%@ include file="/global/header.jsp" %>
			</div>

			<h2>Assignment 2 Screenshots</h2>
			<p class="lead">
				MySQL Installation, Servlets, and Database Connectivity Screenshots
			</p>

			<hr />

			<h4>1. HelloWorld Servlet</h4>
			<p>Screenshot of the <code>HelloWorld</code> servlet running in the browser.</p>
			<img src="./img/helloworld.png" class="img-responsive center-block" alt="HelloWorld servlet screenshot" />

			<br /><br />

			<h4>2. SayHello Servlet</h4>
			<p>Screenshot of the <code>SayHello</code> servlet (or <code>/hello/sayhi</code>) running in the browser.</p>
			<img src="./img/sayhello.png" class="img-responsive center-block" alt="SayHello servlet screenshot" />

			<br /><br />

			<h4>3. querybook.html</h4>
			<p>Screenshot of <code>querybook.html</code> form page in the browser.</p>
			<img src="./img/querybook.png" class="img-responsive center-block" alt="querybook.html form screenshot" />

			<br /><br />

			<h4>4. querybook Query Results</h4>
			<p>Screenshot of the query results page after submitting <code>querybook.html</code> against the <code>ebookshop</code> database.</p>
			<img src="./img/querybook_query.png" class="img-responsive center-block" alt="querybook query results screenshot" />

			<br /><br />

			<%@ include file="/global/footer.jsp" %>

		</div> <!-- end starter-template -->
	</div> <!-- end container -->

	<%@ include file="/js/include_js.jsp" %>		

</body>
</html>