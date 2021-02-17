<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String username = request.getParameter("username");
	String hp = request.getParameter("hp");
	String email = request.getParameter("email");
	String hobby[] = request.getParameterValues("hobby");
	String ssn1 = request.getParameter("ssn1");
	String ssn2 = request.getParameter("ssn2");
	String zipcode = request.getParameter("zipcode");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String address3 = request.getParameter("address3");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료 </title>
</head>
<body>
	<h2>회원가입 완료</h2>
	<p>아이디 : <%=userid %></p>
	<p>비밀번호 : <%=userpw %></p>
	<p>이름 : <%=username %></p>
	<p>휴대폰번호 : <%=hp %></p>
	<p>이메일 : <%=email %></p>
	<p>취미 : 
<%
	for(int i=0; i<hobby.length; i++){
		out.print(hobby[i]+" ");
	}
%>
	</p>
	<p>주민번호 : <%=ssn1 %>-<%=ssn2 %></p>
	<p>우편번호 : <%=zipcode %></p>
	<p>주소 : <%=address1 %></p>
	<p>상세주소 : <%=address2 %></p>
	<p>참고사항 : <%=address3 %></p>
</body>
</html>