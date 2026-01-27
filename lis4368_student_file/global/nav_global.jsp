<%@ page import="java.util.Date, java.util.TimeZone, java.text.SimpleDateFormat" %>

<nav class="navbar navbar-fixed-top">
		<div class="container">			
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<!-- Put the logo image inside the brand link, to the RIGHT of the word Home -->
      <!-- Use an absolute path so it works from any assignment page. Adjust /lis4381/ if your root differs. -->
      <a class="navbar-brand" href="index.jsp" target="_self">
        <img src="favicon.ico" alt="Site logo" class="navbar-logo">
        <!-- If you only have .ico, it usually works too:
             <img src="/lis4381/favicon.ico" alt="Site logo" class="navbar-logo">
        -->
      </a>
			</div>

			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">LIS4368</a></li>
					<li><a href="a1_student_files/index.jsp">A1</a></li>
					<li><a href="a2_student_files/index.jsp">A2</a></li>
					<li><a href="a3_student_files/index.jsp">A3</a></li>
					<li><a href="customerform.jsp?assign_num=a4">A4</a></li>
					<li><a href="customerform.jsp?assign_num=a5">A5</a></li>
					<li><a href="p1/index.jsp">P1</a></li>
					<li><a href="customerform.jsp?assign_num=p2">P2</a></li>
					<li><a href="test/index.jsp">Test</a></li>					
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	<%
//https://docs.oracle.com/javase/6/docs/api/java/text/SimpleDateFormat.html
SimpleDateFormat timeFormat = new SimpleDateFormat("M/d/yy h:m a ");
timeFormat.setTimeZone(TimeZone.getTimeZone("America/New_York"));
String time = timeFormat.format(new Date());
%>
<%= time %>
	<!-- ===== Add this CSS in a file that loads after Bootstrap (e.g., include_css.php) ===== -->
	<style>
	  .navbar-brand .navbar-logo{
		height: 20px;            /* fits Bootstrap 3 navbar height */
		width: 20px;             /* keep it square */
		margin-left: 8px;        /* space between text and icon */
		vertical-align: middle;  /* align with the text baseline */
		image-rendering: -webkit-optimize-contrast;
	  }
	
	  /* Optional: nudge alignment on some browsers */
	  @media (min-width: 768px){
		.navbar-brand .navbar-logo{ position: relative; top: -1px; }
	  }
	</style>
