<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- CSS -->
	<link href="FontAwesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="Main.css" rel="stylesheet" type="text/css">
	<!-- scripts -->
	
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
					<li><a href="MainPage.jsp">首页</a></li>
					<li class="dropdown">
						<a href="#" class="dropbtn">关于酷趣ABC</a>
						<div class="dropdown-content">
							<a href="SecondPage.html">公司介绍</a>
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
		
		<!-- Banner -->
		<div class="full-width-container">
			<img src="Image/SecondPage/banner.png" width="100%"> <!-- banner -->
		</div>
		
		<div class="butto"> <!-- need to shift the btn somehow, i forgot how, z-index, top:... -->
			<!--  <a class="btn" href="#">Demo</a> -->
		</div>
		
		<!-- Panel -->
		<div class="full-width-container">
			<div class="panel-container"> <!-- around 500? need to hover effect--> 
				<div class="panel"> <!-- around 50 each? -->
					<a class="button active" href="#">公司介绍</a>
				</div>
				<div class="panel"> <!-- around 50 each? -->
					<a class="button" href="#">最新动态</a>
				</div>
				<div class="panel"> <!-- around 50 each? -->
					<a class="button" href="#">媒体报道</a>
				</div>
				<div class="panel"> <!-- around 50 each? -->
					<a class="button" href="#">合作机构</a>
				</div>
			</div>
		</div>
		
		<div class="full-width-container">
			<div class="desc-container"> <!-- store the logo and the vid, width can be smaller -->
				<img src="Image/SecondPage/kuqulogotop.png"> <!-- logo -->
				<div class="passage">
					<p>Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. Passage.. </p>
				</div>
				
				<div class="vid-container">
					<video src="#" width="428" height="241" preload="auto" controls="controls" loop="loop"></video> 
					<p>企业宣传片</p> <!-- title of video -->
				</div>
			</div>
		</div>
		
		<div class="full-width-container">
			<p style="margin:auto">活动略影</p>
		</div>
		
		<div class="full-width-container">
			<div class="multiple-containers"> <!-- container can be larger, 750? -->
				<div class="left-container"> <!-- left container is a full height -->
					<div class="sm-left">
						<div class="title-img">
							<img src="Image/SecondPage/meet_up.png" style="width: 100%;height: 300px">
						</div>
						<div class="desc">
							<div class="desc-title">
								<p>Title</p>
							</div>
							<div class="desc-content">
								<p>Passage.. Passage.. Passage.. Passage.. Passage..
									Passage.. Passage.. Passage.. Passage.. Passage.. Passage..
									Passage.. Passage.. Passage.. Passage.. Passage..</p>
							</div>
						</div>
					</div>
				</div>
				<div class="right-container" style="background-color:transparent"> <!-- right container split into 3 parts -->
					<div class="parts"> <!-- need to split into a picture segment and desc segment -->
						<div class="for-the-picture">
							<img src="Image/SecondPage/top.png">
						</div>
						<div class="for-the-desc">
							<p>Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. </p>
						</div>
					</div>
					<div class="parts">
						<div class="for-the-picture">
							<img src="Image/SecondPage/mid.png">
						</div>
						<div class="for-the-desc">
							<p>Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. </p>
						</div>
					</div>
					<div class="parts">
						<div class="for-the-picture">
							<img src="Image/SecondPage/btm.png">
						</div>
						<div class="for-the-desc">
							<p>Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. Words.. </p>
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
</body>
</html>