<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- 파일업로더 input이 있는 페이지에 작성 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
   request.setCharacterEncoding("UTF-8");
   if(session.getAttribute("userid") == null) {
%>
   <script>
      alert('로그인 후 이용하세요');
      location.href='../login.jsp';
   </script>
<%
   } else {
      // 세션 값 가져오기
      String userid = (String)session.getAttribute("userid");
      String username = (String)session.getAttribute("username");
      String uploadPath = request.getRealPath("upload");
      int size = 1024 * 1024 * 10; // 10MB까지 저장할 수 있도록 함
      
      //DB 연결
         Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;

      String b_idx = "";
      
      String sql = "";
      String url = "jdbc:mysql://localhost:3306/jspstudy";
      String uid = "root";
      String upw = "1234";
        
      try {
         MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
         if(multi.getParameter("b_idx") == null || multi.getParameter("b_idx").equals("")) {
%>
         <script>
            alert('잘못된 접근입니다.');
            location.href='../login.jsp';
         </script>
<%
         } else {
            b_idx = multi.getParameter("b_idx");
            String b_title = multi.getParameter("b_title");
            String b_content = multi.getParameter("b_content");
            String b_file = multi.getFilesystemName("b_file");
            
            Class.forName("com.mysql.jdbc.Driver"); // com.mysql.cj.jdbc.Driver
            conn = DriverManager.getConnection(url, uid, upw);
            if (conn != null) {
               if(b_file != null && !b_file.equals("")) {
                  sql = "UPDATE tb_board SET b_title=?, b_content=?, b_file=? WHERE b_idx=?";
                  pstmt = conn.prepareStatement(sql);
                  pstmt.setString(1, b_title);
                  pstmt.setString(2, b_content);
                  pstmt.setString(3, b_file);
                  pstmt.setString(4, b_idx);
               } else {
                  sql = "UPDATE tb_board SET b_title=?, b_content=? WHERE b_idx=?";
                  pstmt = conn.prepareStatement(sql);
                  pstmt.setString(1, b_title);
                  pstmt.setString(2, b_content);
                  pstmt.setString(3, b_idx);
               }
               
               pstmt.executeUpdate();
            }
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
%>
      <script>
         alert('수정되었습니다.');
         location.href='view.jsp?b_idx=<%=b_idx%>';
      </script>
<%
   }
%>