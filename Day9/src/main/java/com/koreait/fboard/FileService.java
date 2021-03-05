
package com.koreait.fboard;

import java.io.File;

public class FileService {
   private FboardDAO fboardDAO = null;
   public static String SAVE_PATH = "C:/AAA/Jsp/Day9/uploads";
   
   public FileService() {
      fboardDAO = new FboardDAO();
   }
   
   public boolean dataUpload(String userid, String username, String title, String content, File file) {
      FboardDTO fboardDTO = new FboardDTO();
      fboardDTO.setUserid(userid);
      fboardDTO.setUsername(username);
      fboardDTO.setTitle(title);
      fboardDTO.setContent(content);
      fboardDTO.setFile(file.getName());  // 원본 파일명
      // System.out.println(fboardDTO);
      boolean isSuccess = fboardDAO.insertData(fboardDTO);
      return isSuccess;
   }
}