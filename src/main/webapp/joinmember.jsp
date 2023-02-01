<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="JoinmemberServlet" method="get">
	<table>
		<tr>
			<td>
				ID : 
			</td>
			<td>
				<input style="width:130px" type="text" id="id" name="id"/>
			</td>
		</tr>
		<tr>
			<td>
				PW : 
			</td>
			<td>
				<input style="width:130px" type="password" id="pw" name="pw"/>
			</td>
		</tr>
		<tr>
			<td>
				Name : 
			</td>
			<td>
				<input style="width:130px" type="text" id="name" name="name"/>
			</td>
		</tr>
		<tr>
		<td colspan="2">
			<input type="submit" style="width:195px" id="join" value="작성완료">
		</td>
		</tr>
	</table>
	</form>
</body>
</html>