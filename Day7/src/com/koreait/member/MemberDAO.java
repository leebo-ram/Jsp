package com.koreait.member;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.koreait.db.Dbconn;

public class MemberDAO {
   Connection conn;
   PreparedStatement pstmt;
   String sql= "";
   
   public int join(MemberDTO member) {
      try {
         
         sql += "insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1,";
         sql += " mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) values"; 
         sql += " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
         conn =Dbconn.getConnection();
         
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, member.getUserid());
         pstmt.setString(2, member.getUserpw());
         pstmt.setString(3, member.getUsername());
         pstmt.setString(4, member.getHp());
         pstmt.setString(5, member.getEmail());
         String hobbystr = "";
         for(String hobby : member.getHobby()) { 
            hobbystr = hobbystr + hobby + " ";
         }
         pstmt.setString(6, hobbystr);
         pstmt.setString(7, member.getSsn1());
         pstmt.setString(8, member.getSsn2());
         pstmt.setString(9, member.getZipcode());
         pstmt.setString(10, member.getAdress1());
         pstmt.setString(11, member.getAdress2());
         pstmt.setString(12, member.getAdress3());
         if(pstmt.executeUpdate() != 0) { 
            return 1;
         }
      }catch (Exception e) {
            e.printStackTrace();
      }
      return 0;
   }
}