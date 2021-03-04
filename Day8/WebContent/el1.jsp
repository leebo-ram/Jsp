<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("userid", "pageContext 영역의 변수");
	request.setAttribute("userid", "request 영역의 변수");
	session.setAttribute("userid", "session 영역의 변수");
	application.setAttribute("userid", "application 영역의 변수");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el(표현언어)</title>
</head>
<body>
	<h2>el(표현언어)</h2>
	<p><%=pageContext.getAttribute("userid")%></p>
	<p><%=request.getAttribute("userid")%></p>
	<p><%=session.getAttribute("userid")%></p>
	<p><%=application.getAttribute("userid")%></p>
	<hr/>
	<p>el default : ${uerid}</p>
	<p>el page : ${pageScope.uerid}</p>
	<p>el request : ${requestScope.uerid}</p>
	<p>el session : ${sessionScope.uerid}</p>
	<p>el application : ${applicationScope.uerid}</p>
	<hr/>
	<h3>산술 연산자</h3>
	<p>덧셈 : ${10 + 10}</p>
	<p>뺄셈 : ${10 - 10}</p>
	<p>곱셈 : ${10 * 10}</p>
	<p>나눗셈 : ${10 div 10}</p>	<!-- 에러는 신경 안써도 결과는 잘 나온다. -->
	<p>나머지 : ${10 mod 10}</p>
	<hr/>
	<h3>비교 연산자</h3>
	<p>같다 : ${10 eq 10}</p>
	<p>다르다 : ${10 ne 10}</p>
	<p>작다 : ${10 lt 10}</p>
	<p>크다 : ${10 gt 10}</p>
	<p>작거나 같다 : ${10 le 10}</p>
	<p>크거나 같다 : ${10 ge 10}</p>
</body>
</html>