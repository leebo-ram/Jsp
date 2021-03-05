package com.koreait.fboard;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.koreait.db.Dbconn;

public class FboardDAO {
   
   Connection conn =null;
   PreparedStatement pstmt =null;
   String sql = "";
   
   public boolean insertData(FboardDTO fboardDTO) {
      try {
         conn = Dbconn.getConnection();
         sql = "insert into tb_fileboard (fb_userid, fb_username, fb_title, fb_content, fb_filename) values(?, ?, ?, ?, ?)";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, fboardDTO.getUserid());
         pstmt.setString(2, fboardDTO.getUsername());
         pstmt.setString(3, fboardDTO.getTitle());
         pstmt.setString(4, fboardDTO.getContent());
         pstmt.setString(5, fboardDTO.getFile());                 int result = pstmt.executeUpdate();
         if(result >= 1) return true;
      }catch(Exception e) {
         e.printStackTrace();
      }
      return false;
   }
}