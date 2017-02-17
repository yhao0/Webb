<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/server.css" rel="stylesheet" type="text/css">
<title>Server Side</title>
</head>
<body>
	<div class="full-width-container">
		<div style="width: 100%; height: 98px"></div>
		<div
			style="border: 2px dotted black; width: 100%; height: 360px; text-align: center;">
			<div class="dropdown" style="display: block; padding-bottom: 10px">
				<button class="dropbtn">Carousel</button>
				<div class="dropdown-content">
					<a style="color: black; text-align: center" href="../TableDisplay.jsp">Carousel
						Image Display</a> <a style="color: black; text-align: center"
						href="UploadImage.jsp?page=FirstPage">Upload Image</a>
				</div>
			</div>
		</div>
		<div style="width: 100%; height: 60px;text-align:center;border:2px dotted red">
			<div class="dropdown" style="display: block; padding-bottom: 10px">
				<button class="dropbtn">Headings</button>
				<div class="dropdown-content">
					<a style="color: black; text-align: center" href="DisplayText.jsp">Title
						Display</a> <a style="color: black; text-align: center"
						href="UploadTitle.jsp?page=FirstPage">Upload Title</a>
				</div>
			</div>
		</div>
		<div
			style="width: 1000px; height: 365px; margin: auto; text-align: center; border: 2px dotted black;">
			<div class="dropdown" style="display: block; padding-bottom: 10px">
				<button class="dropbtn">Menu</button>
				<div class="dropdown-content">
					<a style="color: black; text-align: center"
						href="TableDisplayMenu.jsp">Menu Image Display</a> <a
						style="color: black; text-align: center"
						href="UploadMenuImage.jsp?page=FirstPage">Upload Menu Image</a>
				</div>
			</div>
		</div>
		<div style="width: 100%; height: 72px; border: 2px dotted red;text-align:center">
			<div class="dropdown" style="display: block; padding-bottom: 10px">
				<button class="dropbtn">Headings</button>
				<div class="dropdown-content">
					<a style="color: black; text-align: center" href="DisplayText.jsp">Title
						Display</a> <a style="color: black; text-align: center"
						href="UploadTitle.jsp?page=FirstPage">Upload Title</a>
				</div>
			</div>
		</div>
		<div style="width: 100%; height: 502px">
			<div
				style="width: 1100px; height: 442px; display: flex; margin: auto">
				<div style="width: 550px; height: 442px">
					<div style="width: 550px; height: 141px;border:2px dotted yellow">
						<div class="dropdown" style="display: block; padding-bottom: 10px">
							<button class="dropbtn">Articles</button>
							<div class="dropdown-content">
								<a style="color: black; text-align: center"
									href="DisplayArticles.jsp">Article Display</a> <a
									style="color: black; text-align: center"
									href="UploadArticle.jsp?page=FirstPage">Upload Article</a>
									<a style="color: black; text-align: center" href="DisplayText.jsp">Title
									Display</a> <a style="color: black; text-align: center"
									href="UploadTitle.jsp?page=FirstPage">Upload Title</a>
							</div>
						</div>	
					</div>
					<div style="width: 550px; height: 208px; border: 2px dotted black; text-align: center">
						<div class="dropdown" style="display: block; padding-bottom: 10px">
							<button class="dropbtn">MiniCarousel</button>
							<div class="dropdown-content">
								<a style="color: black; text-align: center"
									href="TableDisplayMiniCarousel.jsp">Mini Carousel Image
									Display</a> <a style="color: black; text-align: center"
									href="UploadImageMiniCarousel.jsp?page=FirstPage">Upload
									Mini Carousel Image</a>
									<a style="color: black; text-align: center" href="DisplayText.jsp">Title
									Display</a> <a style="color: black; text-align: center"
									href="UploadTitle.jsp?page=FirstPage">Upload Title</a>
							</div>
						</div>
					</div>
				</div>
				<div style="width: 550px; height: 442px">
					<div style="width: 550px; height: 250px;border:2px dotted yellow">
						<div class="dropdown" style="display: block; padding-bottom: 10px">
							<button class="dropbtn">Articles</button>
							<div class="dropdown-content">
								<a style="color: black; text-align: center"
									href="DisplayArticles.jsp">Article Display</a> <a
									style="color: black; text-align: center"
									href="UploadArticle.jsp?page=FirstPage">Upload Article</a>
									<a style="color: black; text-align: center" href="DisplayText.jsp">Title
									Display</a> <a style="color: black; text-align: center"
									href="UploadTitle.jsp?page=FirstPage">Upload Title</a>
							</div>
						</div>												
					</div>
					<div style="width: 550px; height: 192px; text-align: center; border: 2px dotted black;">
						<div class="dropdown" style="display: block; padding-bottom: 10px">
							<button class="dropbtn">MiniCarousel</button>
							<div class="dropdown-content">
								<a style="color: black; text-align: center"
									href="TableDisplayMiniCarousel.jsp">Mini Carousel Image
									Display</a> <a style="color: black; text-align: center"
									href="UploadImageMiniCarousel.jsp?page=FirstPage">Upload
									Mini Carousel Image</a>								
									<a style="color: black; text-align: center" href="DisplayText.jsp">Title
									Display</a> <a style="color: black; text-align: center"
									href="UploadTitle.jsp?page=FirstPage">Upload Title</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="width:100%;height:239px;text-align:center;border:2px dotted black">
			<div class="dropdown" style="display: block; padding-bottom: 10px">
				<button class="dropbtn">Footer</button>
				<div class="dropdown-content">
					<a style="color: black; text-align: center"
						href="TableDisplayFooter.jsp">Footer Image Display</a> <a
						style="color: black; text-align: center"
						href="UploadImageFooter.jsp?page=FirstPage">Upload Footer
						Image</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>