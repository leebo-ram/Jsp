<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="com.koreait.Member"/>
<!--  
<jsp:setProperty property="userid" name="member"/>
<jsp:setProperty property="userpw" name="member"/>
<jsp:setProperty property="name" name="member"/>
<jsp:setProperty property="email" name="member"/>
<jsp:setProperty property="job" name="member"/>
-->
<jsp:setProperty property="*" name="member"/>
<jsp:setProperty property="email" param="mem_email" name="member"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈즈를 이용한 회원가입 테스트</title>
</head>
<body>
	<h2>회원가입 완료</h2>
	<p>아이디 : <jsp:getProperty property="userid" name="member"/></p>
	<p>비밀번호 : <jsp:getProperty property="userpw" name="member"/></p>
	<p>이름 : <jsp:getProperty property="name" name="member"/></p>
	<p>이메일 : <jsp:getProperty property="email" name="member"/></p>
	<p>직업 : <jsp:getProperty property="job" name="member"/></p>
</body>
</html>