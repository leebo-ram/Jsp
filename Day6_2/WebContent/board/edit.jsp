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
			
		String userid = (String)session.getAttribute("userid");
		String username = (String)session.getAttribute("username");
		String b_idx = request.getParameter("b_idx");
		
		String b_title = "";
		String b_content = "";
		String b_file = "";
		
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
				sql = "select * from tb_board where b_idx=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, b_idx);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					b_title = rs.getString("b_title");
					b_content = rs.getString("b_content");
					b_file = rs.getString("b_file");
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}	
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
</head>
<body>
	<h2>글수정</h2>
	<form method="post" action="edit_ok.jsp" enctype="multipart/form-data">
		<!-- hidden은 카드정보 넘길때 많이사용함!! -->
		<input type="hidden" name="b_idx" value="<%=b_idx%>"> 
		<p>작성자 : <%=username%>(<%=userid%>)</p>
		<p><label>제목 : <input type="text" name="b_title" value="<%=b_title%>"></label></p>
		<p>내용</p>
		<p><textarea rows="5" cols="40" name="b_content"><%=b_content%></textarea></p>
		<p>
			<%
				if(b_file != null && !b_file.equals("")){
					out.println("첨부파일");
					out.print("<img src='../upload/"+b_file+"' alt='첨부파일' width='150'>");	
				}
			%>
		</p>
		<p><input type="file" name="b_file"></p>
		<p><input type="submit" value="수정"> 
		<input type="button" value="돌아가기" onclick="history.back()"></p>
	</form>
</body>
</html>
<%
		}
%>
