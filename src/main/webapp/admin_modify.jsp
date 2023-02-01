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
  		$("#sub").click(function(){
			alert("수정되었습니다.");
  		});
  	});
  </script>
</head>
<body>
	<h1>회원관리-수정관리자</h1>
	<form>
	<table>
		<tr>
			<td>
				ID 
			</td>
			<td>
				<input style="width:130px" type="text" id="id" readonly/>
			</td>
		</tr>
		<tr>
			<td>
				PW 
			</td>
			<td>
				<input style="width:130px" type="text" id="pw"/>
			</td>
		</tr>
		<tr>
			<td>
				Name 
			</td>
			<td>
				<input style="width:130px" type="text" id="name"/>
			</td>
		</tr>
		<tr>
			<td>
				Point 
			</td>
			<td>
				<input style="width:130px" type="text" id="point"/>
			</td>
		</tr>
		<tr>
		<td colspan="2">
			<input type="submit" style="width:195px" id="sub" value="제출">
		</td>
		</tr>
	</table>
	</form>
</body>
</html>