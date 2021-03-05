<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.io.File" %>
<%@ page import="com.koreait.fboard.FileService" %>
<%
   FileService fs = new FileService();

   int maxSize = 10 * 1024 * 1024;
   String savePath = fs.SAVE_PATH;
   String format = "UTF-8";
   String uploadFile = "";
   
   try{
      MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format, new DefaultFileRenamePolicy());
      String userid = multi.getParameter("userid");
      String username = multi.getParameter("username");
      String title = multi.getParameter("title");
      String content = multi.getParameter("content");
      uploadFile = multi.getFilesystemName("file");
      
      //System.out.println(userid);
      //System.out.println(username);
      //System.out.println(title);
      //System.out.println(content);
      //System.out.println(uploadFile);
      
      File file = new File(savePath + "/" + uploadFile);

         if(fs.dataUpload(userid, username, title, content, file)) {
            response.sendRedirect("list.jsp");
         }else {
            out.print("<script>alert('에러'); history.back();</script>");
         }

   }catch(Exception e) {
      e.printStackTrace();
   }
   
%>