<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
	<meta name="author" content="Mark K. Jowett, Ph.D.">
	<link rel="icon" href="favicon.ico">


	<title>My Online Portfolio</title>
=======
	<link rel="stylesheet" href="./css/fsu-theme.css">
	<title>Khushi Patel - LIS4638</title>
>

	<%@ include file="/lis4368_student_file/css/include_css.jsp" %>

		<!-- Carousel styles -->
		<style type="text/css">
			h2 {
				margin: 0;
				color: #666;
				padding-top: 50px;
				font-size: 52px;
				font-family: "trebuchet ms", sans-serif;
			}

			.item {
				background: #333;
				text-align: center;
				height: 300px !important;
			}

			.carousel {
				margin: 20px 0px 20px 0px;
			}

			.bs-example {
				margin: 20px;
			}

			/* Fit the entire image (no cropping) */
.bg-contain {
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}

/* Set a reasonable height for the carousel items */
.carousel .item {
  height: 420px;           /* adjust as needed */
}

.carousel .item { height: 50vh; min-height: 280px; max-height: 520px; }

.carousel-caption .promo-links {
  margin-top: 12px;
}

.carousel-caption .promo-links a {
  display: inline-block;
  margin: 6px 8px 0 0;
  padding: 10px 14px;
  background: rgba(0,0,0,0.6);
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
}

.carousel-caption .promo-links a:hover {
  background: rgba(0,0,0,0.8);
}
		</style>

</head>

<body>

	<%@ include file="/lis4368_student_file/global/nav_global.jsp" %>

		<div class="container">
			<div class="starter-template">
				<div class="page-header">
					<%@ include file="/lis4368_student_file/global/header.jsp" %>
				</div>

      <!-- Start Bootstrap Carousel -->
      <div class="bs-example">
        <div id="myCarousel"
             class="carousel slide"
             data-interval="3000"
             data-pause="hover"
             data-wrap="true"
             data-keyboard="true"
             data-ride="carousel">

          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>

          <!-- Slides -->
<div class="carousel-inner" role="listbox">

  <div class="item active bg-contain" style="background-image:url('img/image.webp');">
    <div class="container">
      <div class="carousel-caption">
      <h3>Connect with me</h3>
      <p class="lead">MSIS | Software Engineer | Projects & Portfolio</p>

      <div class="promo-links">
        <a href="https://www.linkedin.com/in/khushi-patel-931127218/" target="_blank" rel="noopener">LinkedIn</a>
        
      </div>

    </div>
    </div>
  </div>

  <div class="item bg-contain" style="background-image:url('img/image copy.png');">
    <div class="container">
      <div class="carousel-caption">
      <h3>Connect with me</h3>
      <p class="lead">MSIS | Software Engineer | Projects & Portfolio</p>

      <div class="promo-links">
        <a href="https://bitbucket.org/patel1154/workspace/overview/" target="_blank" rel="noopener">Bit Bucket</a>
        
      </div>
</div>
    </div>
  </div>

  <div class="item bg-contain" style="background-image:url('img/image copy 2.png');">
    <div class="container">
            <div class="carousel-caption">
      <h3>Connect with me</h3>
      <p class="lead">MSIS | Software Engineer | Projects & Portfolio</p>

      <div class="promo-links">
        <a href="${pageContext.request.contextPath}/resume.pdf" target="_blank" rel="noopener">Resume</a>
        
      </div>
</div>
    </div>
  </div>

</div>
          <!-- Controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>

        </div>
      </div>
      <!-- End Bootstrap Carousel -->

				<%@ include file="/lis4368_student_file/global/footer.jsp" %>

			</div> <!-- end starter-template -->
		</div> <!-- end container -->

		<%@ include file="/lis4368_student_file/js/include_js.jsp" %>

</body>

</html>