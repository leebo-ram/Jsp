<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl - funtion</title>
</head>
<body>
	<h3>jstl - funtion</h3>
	<h3>length()</h3>
	<p>${fn:length('1234567890')}</p>
	<hr/>
	<h3>indexOf</h3>
	<p>${fn:indexOf('jstl 예제', 's')}</p>
	<hr/>
	<h3>trim</h3>
	<p>${fn:trim('     jstl 예제     ')}</p>
	<hr/>
	<h3>substring</h3>
	<p>${fn:substring('jstl 예제', 0,3)}</p>
	<hr/>
	<h3>replace()</h3>
	<p>${fn:replace('jstl 예제', 'jstl', 'jsp')}</p>
	<hr/>
	<h3>split()</h3>
	<c:set var="arr" value="${fn:split('j,s,t,l', ',')}"/>
	<c:forEach var="ch" items="${arr}" varStatus="i">
		${i.count} - ${ch}</br>
	</c:forEach> <!-- 카운트라서 1부터 계산됨 -->
	<hr/>
</body>
</html>