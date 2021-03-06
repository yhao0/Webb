<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->
<link href="Slick/slick/slick.css" rel="stylesheet" type="text/css">
<link href="Slick/slick/slick-theme.css" rel="stylesheet" type="text/css">
<link href="FontAwesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="Main.css" rel="stylesheet" type="text/css">
<!-- scripts -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="OwlCarousel/docs/assets/vendors/jquery.min.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script src="Slick/slick/slick.min.js"></script>

<title>VRClass</title>
</head>
<body>
	<!-- Enquery -->
	<a href="#">
		<div id="onlineservice">
			<div class="query">
				<i class="fa fa-question-circle" aria-hidden="true"></i>
				<p style="color: #f6f6f6">在线咨询</p>
			</div>
		</div>
	</a>

	<!-- Navbar -->
	<div class="newpage" id="page">
		<div id="header">
			<div class="nav-main">
				<div class="fl logo">
					<img src="Image/Navbar/kuqutop.png">
				</div>
				<ul class="fl nav-main">
					<li><a href="#">首页</a></li>
					<li class="dropdown">
						<a href="#" class="dropbtn">关于酷趣ABC</a>
						<div class="dropdown-content">
							<a href="CompanyIntro.jsp">公司介绍</a>
							<a href="#">最新动态</a>
							<a href="#">媒体报道</a>
							<a href="#">合作机构</a>
						</div>
					</li>
					<li><a href="#">真实场景英语理念</a></li>
					<li><a href="#">课程体系</a></li>
					<li><a href="#">学习中心</a></li>
					<li><a href="#">授权合作</a></li>
				</ul>
			</div>
		</div>
	
		<!-- Carousel -->
		<div class="fl carousel-main" style="top: 0; width: 100%; overflow: hidden">
			<%@ include file="Carousel.jsp"%>
		</div>

		<!-- Heading -->
		<div class="full-width-container">
			<div class="heading">
				<jsp:include page="Text.jsp">
        			<jsp:param name="myvar" value="menu"/>
        			<jsp:param name="mypage" value="FirstPage"/>
    			</jsp:include>
			</div>
		</div>
		
		<!-- Menu -->
		<div class="full-width-container">
			<%@ include file="Menu.jsp"%>
		</div>

		<!-- Heading -->
		<div class="full-width-container">
			<div class="heading" style="margin-top:20px">
				<jsp:include page="Text.jsp">
        			<jsp:param name="myvar" value="second-half"/>
        			<jsp:param name="mypage" value="FirstPage"/>
    			</jsp:include>
			</div>
		</div>
		<div class="full-width-container" style="background-color: #f7cf05">
			<div class="multiple-containers">
				<div class="right-container">
					<div class="right-top-container center">
						<div class="right-top-container-title">
							<jsp:include page="Text.jsp">
        						<jsp:param name="myvar" value="left-top"/>
        						<jsp:param name="mypage" value="FirstPage"/>
    						</jsp:include>
						</div>
						<div class="right-top-container-content">
							<p>Hi my name is ... Hi my name is ... Hi my name is ... Hi
								my name is ... Hi my name is ... Hi my name is ... Hi my name is
								... Hi my name is ... Hi my name is ... Hi my name is ... Hi my
								name is ... Hi my name is ...</p>
						</div>
					</div>
					<div class="right-btm-container center">
						<div class="right-btm-container-title">
							<jsp:include page="Text.jsp">
        						<jsp:param name="myvar" value="left-btm"/>
        						<jsp:param name="mypage" value="FirstPage"/>
    						</jsp:include>
						</div>
						<div class="right-btm-container-content">
							<div class="double-carousel">
								<div>
									<img src="${pageContext.request.contextPath}/images/HomePage/ff-2">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/HomePage/class">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/HomePage/ff-2">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/HomePage/class">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/HomePage/ff-2">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/HomePage/class">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="left-container">
					<div class="left-top-container">
						<div class="left-top-container-title">
							<jsp:include page="Text.jsp">
        						<jsp:param name="myvar" value="right-top"/>
        						<jsp:param name="mypage" value="FirstPage"/>
    						</jsp:include>
						</div>
						<div class="left-container-content">
							<div class="left-double-container-content">
								<jsp:include page="Preview.jsp">
        							<jsp:param name="myvar" value="true"/>
        							<jsp:param name="mypage" value="FirstPage"/>
    							</jsp:include>
							</div>
						</div>
					</div>
					<div class="left-container-content">
						<div class="left-double-container-content">
							<div class="left-mini-container-left"
								style="width: 275px; background-color: #51d4d2">
								<div class="left-mini-container">
									<div class="left-mini-container-title" style="margin-top:5px">
										<jsp:include page="Text.jsp">
        									<jsp:param name="myvar" value="left-right-btm"/>
        									<jsp:param name="mypage" value="FirstPage"/>
    									</jsp:include>
									</div>
									<div class="left-mini-container-content">
										<div class="mini-carousel">
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/HomePage/crowd">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/HomePage/crowd">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/HomePage/crowd">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="left-mini-container-right"
								style="width: 275px; background-color: #604cc6">
								<div class="left-mini-container">
									<div class="left-mini-container-title" style="margin-top:5px;color:#d0ced9">
										<jsp:include page="Text.jsp">
        									<jsp:param name="myvar" value="right-right-btm"/>
        									<jsp:param name="mypage" value="FirstPage"/>
    									</jsp:include>
									</div>
									<div class="left-mini-container-content">
										<div class="mini-carousel">
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/HomePage/cert">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/HomePage/cert">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/HomePage/cert">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="full-width-container" style="background-color: #2c2c2c">
			<jsp:include page="Footer.jsp">
				<jsp:param value="true" name="bool"/>
    		</jsp:include>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".carousel-main").slick({
				dots : true,
				speed : 1000,
				slidesToShow : 1,
				autoplay : true
			});

			$(".double-carousel").slick({
				dots : true,
				speed : 500,
				slidesToShow : 2,
				slidesToScroll : 2,
				autoplay : true,
				arrows : false
			});

			$(".mini-carousel").slick({
				dots : true,
				speed : 500,
				slidesToShow : 1,
				autoplay : true,
				arrows : false
			})
		});
	</script>
</body>
</html>