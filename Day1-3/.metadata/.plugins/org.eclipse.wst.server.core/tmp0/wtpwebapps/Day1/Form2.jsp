<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송방식(Servlet)</title>
</head>
<body>
	<h2>전송방식(Servlet)</h2>
	<!--  http://localhost:9090/Variable/Form_ok.jsp?data=abcd  -->
<!-- 	<form method="get" action="./FormOk"> -->
	<form method="post" action="./FormOk">
		<p><label>전송 데이터 : <input type="text" name="data"></label></p>
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>