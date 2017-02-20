<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<div class="footer">
				<div class="company-info">
					<!-- width around 400 -->
					<div class="company-logo">
						<!-- flex -->
						<div class="choce-logo">
							<img src="${pageContext.request.contextPath}/images/HomePage/chocenglishlogo">
						</div>
						<div class="kuqu-logo" style="margin: auto">
							<img src="${pageContext.request.contextPath}/images/HomePage/kuqubtm">
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
					<img src="${pageContext.request.contextPath}/images/HomePage/handshake">
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
							<img src="${pageContext.request.contextPath}/images/HomePage/weibo">
						</div>
						<div class="weixin">
							<img src="${pageContext.request.contextPath}/images/HomePage/wechat">
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
					<img src="${pageContext.request.contextPath}/images/HomePage/QR">
				</div>
			</div>