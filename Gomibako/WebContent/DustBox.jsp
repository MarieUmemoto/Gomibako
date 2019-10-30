<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Game.Beans"%>
<%	Beans Beans = (Beans) request.getAttribute("Beans");%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DustBox_GAME</title>
</head>
<link href="Css.css" rel="stylesheet" type="text/css">
<body>
	<div class="canvas">

<%-- 	<c:set var="haikei" value="Beans.getLevel()" />--%>


<%-- switch --%>
	<%
	String haikei;
	haikei =  Beans.getLevel();
	switch (haikei){
	case "1":%>
		<img src="animation/haikyo.jpg"><%
		break;
	case "2":%>
		<img src="animation/rojiura-animation.jpg"><%
		break;
	case "3":%>
		<img src="animation/juutakugai.jpg"><%
		break;
	}
	%>
		<!--
		Level 1 廃墟    右下GoaL
		Level 2 路地裏  右寄り中心寄りGoaL
		Level 3 住宅街  右上GoaL
		-->

		<div class="button">
			<div id="timer1">
				<input type="submit" value="HIGTH" class="START1" onclick="start1()">
				<input type="submit" value="STOP" class="STOP1" onclick="stop1()">
				<div id="heightA" class="gage"></div>
			</div>

			<div id="timer2">
				<input type="submit" value="POWER" class="START2" onclick="start2()"><br>
				<input type="submit" value="STOP" class="STOP2" onclick="stop2()">
			</div>
			<div id="powerB" class="gage"></div>
		</div>

		<div class="POI">
			<form action="/DustBox/Main" method="get">
				<input type="submit" value="Let's POI!!" class="POI" onclick="POI()">
			</form>
		</div>
	</div>
	<script type="text/javascript" src="Gage.js"></script>

</body>