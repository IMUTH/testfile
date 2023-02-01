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
</head>
<script>
	$(function(){
	$("#joinmember").click(function(){
		location.href="joinmember.jsp";
	});
		
	$("#login").click(function(){
		if($("#id").val()=="admin"){
		location.href="admin.jsp";
		}else
		location.href="main.jsp";
	});
	
		
	});
</script>
<body>
	<h1>로그인</h1>
	<form>
	<table>
		<tr>
			<td>
				ID : 
			</td>
			<td>
				<input style="width:200px" type="text" id="id" name="id"/>
			</td>
		</tr>
		<tr>
			<td>
				PW : 
			</td>
			<td>
				<input style="width:200px" type="password" id="pw" name="pw"/>
			</td>
		</tr>
		<tr>
		<td colspan="2">
			<input type="submit" style="width:250px" id="login">
				로그인
			</button>
		</td>
		</tr>
		<tr>
		<td colspan="2">
			<button style="width:250px" id="joinmember">
				회원가입
			</button>
		</td>
		</tr>
	</table>
	</form>
</body>
</html>