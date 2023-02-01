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
  		$("#bt1").click(function(){
			location.href="admin_modify.jsp";  				
  		});
  		$("#bt2").click(function(){
			alert("삭제되었습니다.");
  		});
  	});
  </script>
<style>
	table{
		border : 1px solid black;
		table-layout : fixed;
		border-collapse: collapse;;
	}
	td, tr, th{
		border : 1px solid black;
		padding : 10px;
	}
</style>
</head>
<body>
	<div style="display:flex;">
		<h1>회원관리</h1>
		<button style="margin-left : 300px; height : 30px">로그인</button>
	</div>
	
	<table>
		<tr>
			<th>
				ID
			</th>
			<th>
				PW
			</th>
			<th>
				Name
			</th>
			<th>
				Point
			</th>
			<th>
				수정
			</th>
			<th>
				삭제
			</th>
		</tr>
		<tr>
			<td>
			</td>
			<td>
			</td>
			<td>
			</td>
			<td>
			</td>
			<td>
				<button id="bt1">수정</button>
			</td>
			<td>
				<button id="bt2">삭제</button>
			</td>
		</tr>
	</table>
	<h1>스케줄러관리</h1>
	<button>스케줄러(20초마다 포인트1 증가) 실행 시작</button>
	<button>스케줄러 실행 종료</button>
</body>
</html>