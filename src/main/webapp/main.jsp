<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.6.3.min.js"
  integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
  crossorigin="anonymous"></script>
  <script>
  	$(function(){
  		$("#logout").click(function(){
  			alert("로그아웃 되었습니다.");
  			location.href="login.jsp";
  		})
  	});
  </script>
</head>
<body>
	<div>
	<h1>메인페이지</h1>
	<div style="text-align : center;">
	<div>
		님 안녕하세요
		<button id="logout">로그아웃</button>
	</div>
	<div>
		포인트 : 점
	</div>
	</div>
	</div>
	<div>
	<h2>구입할 컨텐츠를 선택하세요.</h2>
	<div style="display:flex;">
		<div style="text-align : center; margin : 5px;">
			<img src="images/Cpp_350_408.png"><br/>
			포인트 :
		</div>
		<div style="text-align : center; margin : 5px;">
			<img src="images/Intro_350_408.png"><br/>
			포인트 :
		</div>
		<div style="text-align : center; margin : 5px;">
			<img src="images/Java_350_408.png"><br/>
			포인트 :
		</div>
	</div>
		<div style= "right: 1000px; position: absolute; border : 1px solid black; margin-top:30px">
			<광고><br/>
			<img  src="images/korea_it.png">
		</div>
	</div>
</body>
</html>