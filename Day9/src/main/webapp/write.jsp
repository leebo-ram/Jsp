<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<h2>글쓰기</h2>
	<form method="post" action="write_ok.jsp" enctype="multipart/form-data">
		<p><label>아이디 : <input type="text" name="userid"></label></p>
		<p><label>이름 : <input type="text" name="username"></label></p>
		<p><label>제목 : <input type="text" name="title"></label></p>
		<p>내용</p>
		<p><textarea name="content" cols="40" rows="5"></textarea></p>
		<p><label>파일 : <input type="file" name="file"></label></p>
		<p><input type="submit" value="확인"></p>
	</form>
</body>
</html>