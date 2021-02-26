<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<!-- C:\Users\ITSC\Desktop\이민우\JSP\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Day6\upload -->
<%
   request.setCharacterEncoding("UTF-8");
   if(session.getAttribute("userid") == null) {
   
%>
   <script>
      alert('로그인 후 이용하세요');
      location.href='../login.jsp';
   </script>
<%
      }else {
         String userid = (String)session.getAttribute("userid");
         String username = (String)session.getAttribute("username");
          
         String uploadPath = request.getRealPath("upload");
         System.out.println(uploadPath);
         int size = 1024*1024*10;
         
         
         
         
         Connection conn = null;
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         
         String sql = "";
         String url = "jdbc:mysql://localhost:3306/jspstudy";
         String uid = "root";
         String upw = "1234";
         
         try{
            MultipartRequest Multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
             String b_title = Multi.getParameter("b_title");
             String b_content = Multi.getParameter("b_content");
            String b_file = Multi.getFilesystemName("b_file");
            
             
            
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, uid, upw);
            if(conn != null) {
               sql = "insert into tb_board(b_userid, b_name, b_title, b_content, b_file) values(?, ?, ?, ?, ?)";
               pstmt = conn.prepareStatement(sql);
               pstmt.setString(1, userid);
               pstmt.setString(2, username);
               pstmt.setString(3, b_title);
               pstmt.setString(4, b_content);
               pstmt.setString(5, b_file); // 파일이름(경로)가 들어감 
               pstmt.executeUpdate();
               
            }
         }catch(Exception e){
            e.printStackTrace();   
         }
%>
      <script>
         alert('등록되었습니다');
         location.href="./list.jsp";
      </script>
<%
      }
   
%>