<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
   request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean class="com.koreait.member.MemberDTO" id="member"/>
<jsp:useBean class="com.koreait.member.MemberDAO" id="dao"/>
<jsp:setProperty property="*" name="member"/>
<%
   if(dao.join(member) == 1) {
%>
   <script>
      alert('회원가입이 완료되었습니다');
      location.href = 'login.jsp';
   </script>
<%
   }else {
%>
   <script>
      alert('회원가입 실패');
      location.href = 'login.jsp';
   </script>
<%   
   }
%>