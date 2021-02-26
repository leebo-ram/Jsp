<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	if(session.getAttribute("userid") == null){
%>
		<script>
			alert('로그인 후 이용하세요');
			location.href='../login.jsp';
		</script>
<%
		}else{
			// view.jsp로 직접 페이지 접속한 경우
			if(request.getParameter("re_idx") == null || request.getParameter("re_idx").equals("")){
		%>
		<script>
			alert('잘못된 접근입니다.');
			location.href='../login.jsp';
		</script>
		<%
			}else{
				String userid = (String)session.getAttribute("userid");
				String username = (String)session.getAttribute("username");
				String re_idx = request.getParameter("re_idx");
				
				String b_title = "";
				String b_content = "";
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				String sql = "";
				String url = "jdbc:mysql://localhost:3306/jspstudy";
				String uid = "root";
				String upw = "1234";
				
				try{
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection(url, uid, upw);
					if(conn != null){
						sql = "delete from tb_reply where re_idx=?";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, re_idx);
						pstmt.executeUpdate();
					}
			}catch(Exception e){
				e.printStackTrace();
			}
%>
	<script>
		alert('삭제되었습니다.');
		location.href='view.jsp';
	</script>
<%
		}
	}
%>