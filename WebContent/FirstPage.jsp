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
<link href="Copied.css" rel="stylesheet" type="text/css">
<!-- scripts -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="OwlCarousel/docs/assets/vendors/jquery.min.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script src="Slick/slick/slick.min.js"></script>

<title>VRClass</title>
</head>
<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/vrclass" user="root" password="root" />

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
					<li><a href="#">关于酷趣ABC</a></li>
					<li><a href="#">真实场景英语理念</a></li>
					<li><a href="#">课程体系</a></li>
					<li><a href="#">学习中心</a></li>
					<li><a href="#">授权合作</a></li>
				</ul>
			</div>
		</div>

		<!-- Carousel -->
		<div class="fl carousel-main" style="top: 0; width: 100%; overflow: hidden">
			<div>
				<img width="100%"
					src="${pageContext.request.contextPath}/images/HAHAJ">
			</div>
			<div>
				<img width="100%" src="${pageContext.request.contextPath}/images/yo">
			</div>
		</div>

		<!-- Heading -->
		<div class="full-width-container">
			<div class="heading">
				<p>
					<strong>阶梯式英语语感训练</strong>
				</p>
			</div>
		</div>

		<!-- Menu -->
		<div class="full-width-container">
			<div class="container">
				<div class="hover-box">
					<img src="${pageContext.request.contextPath}/images/first">
					<div class="overlay">
						<div class="hover-image">
							<img src="Image/FirstPage/hover.png">
						</div>
					</div>
				</div>
				<div class="hover-box">
					<img src="${pageContext.request.contextPath}/images/second">
					<div class="overlay">
						<div class="hover-image">
							<img src="Image/FirstPage/hover.png">
						</div>
					</div>
				</div>
				<div class="hover-box">
					<img src="${pageContext.request.contextPath}/images/third">
					<div class="overlay">
						<div class="hover-image">
							<img src="Image/FirstPage/hover.png">
						</div>
					</div>
				</div>
				<div class="hover-box">
					<img src="${pageContext.request.contextPath}/images/fourth">
					<div class="overlay">
						<div class="hover-image">
							<img src="Image/FirstPage/hover.png">
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Heading -->
		<div class="full-width-container">
			<div class="heading" style="margin-top:20px">
				<p>
					<strong>了解酷趣ABC</strong>
				</p>
			</div>
		</div>
		<div class="full-width-container" style="background-color: #f7cf05">
			<div class="multiple-containers">
				<div class="right-container">
					<div class="right-top-container center">
						<div class="right-top-container-title">
							<p>关于酷趣ABC</p>
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
							<p>课堂略影</p>
						</div>
						<div class="right-btm-container-content">
							<div class="double-carousel">
								<div>
									<img src="${pageContext.request.contextPath}/images/ff-2">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/class">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/ff-2">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/class">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/ff-2">
								</div>
								<div>
									<img src="${pageContext.request.contextPath}/images/class">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="left-container">
					<div class="left-top-container">
						<div class="left-top-container-title">
							<p>媒体报道</p>
						</div>
						<div class="left-container-content">
							<div class="left-double-container-content">
								<div class="left-mini-container">
									<div class="left-mini-container-title">
										<p>Interview</p>
									</div>
									<div class="left-mini-container-content">
										<p>paragraph... paragraph... paragraph... paragraph...
											paragraph... paragraph... paragraph... paragraph...</p>
									</div>
								</div>
								<div class="left-mini-container">
									<div class="left-mini-container-title">
										<p>Interview</p>
									</div>
									<div class="left-mini-container-content">
										<p>paragraph... paragraph... paragraph... paragraph...
											paragraph... paragraph... paragraph... paragraph...</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="left-container-content">
						<div class="left-double-container-content">
							<div class="left-mini-container-left"
								style="width: 275px; background-color: #51d4d2">
								<div class="left-mini-container">
									<div class="left-mini-container-title" style="margin-top:5px">
										<p>展会活动</p>
									</div>
									<div class="left-mini-container-content">
										<div class="mini-carousel">
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/crowd">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/crowd">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/crowd">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="left-mini-container-right"
								style="width: 275px; background-color: #604cc6">
								<div class="left-mini-container">
									<div class="left-mini-container-title" style="margin-top:5px">
										<p style="color:#d0ced9">所获奖项</p>
									</div>
									<div class="left-mini-container-content">
										<div class="mini-carousel">
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/cert">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/cert">
											</div>
											<div>
												<img width="100%" src="${pageContext.request.contextPath}/images/cert">
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
			<div class="footer">
				<div class="company-info">
					<!-- width around 400 -->
					<div class="company-logo">
						<!-- flex -->
						<div class="choce-logo">
							<img src="${pageContext.request.contextPath}/images/chocenglishlogo">
						</div>
						<div class="kuqu-logo" style="margin: auto">
							<img src="${pageContext.request.contextPath}/images/kuqubtm">
						</div>
					</div>
					<div class="desc">
						<p>北京巧克互动国际教育有限公司</p>
						<p>地址:北京市海淀区中关村大街18号中关村互联网教育创新中心1017</p>
						<p>&copy2016 KUQUABC 京ICP证030173号</p>
					</div>
				</div>
				<div class="cooperation">
					<!-- 100 -->
					<p>授权合作</p>
					<img src="${pageContext.request.contextPath}/images/handshake">
					<p>国内唯一真实场景英语</p>
					<p>共拓少儿英语蓝海</p>
					<p>[了解详情]</p>
				</div>
				<div class="recruitment" style="padding-right: 15px">
					<!-- 50 -->
					<p>人才招聘</p>
					<p>优质外教</p>
					<p>教学助理</p>
				</div>
				<div class="social-media">
					<!-- 100 -->
					<p>关注我们</p>
					<div class="social-links">
						<!-- flex -->
						<div class="weibo">
							<img src="${pageContext.request.contextPath}/images/weibo">
						</div>
						<div class="weixin">
							<img src="${pageContext.request.contextPath}/images/wechat">
						</div>
					</div>
				</div>
				<div class="hotline">
					<!-- 225 -->
					<p>咨询热线</p>
					<p style="color:yellow"><strong>010-5145 8320</strong></p>
					<p>周一至周日09:00-19:00</p>
				</div>
				<div class="QRcode">
					<!-- 225 -->
					<img src="${pageContext.request.contextPath}/images/QR">
				</div>
			</div>
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