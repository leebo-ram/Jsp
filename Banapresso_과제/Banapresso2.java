package com.koreait;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

/* 
 * 과제
 * 바나프레소 매장정보 크롤링
 * 접속주소 : https://www.banapresso.com/store
 */


public class Banapresso2 {

	public static void main(String[] args) {
		String DRIVER_ID = "webdriver.chrome.driver"; // 드라이버 이름이 정해져 있음
		String DRIVER_PATH = "C:/AAA/Jsp/chromedriver.exe"; //드라이버 위치 
		
		System.setProperty(DRIVER_ID, DRIVER_PATH);
		WebDriver driver = new ChromeDriver();
		// 크롬과 연결하기 //! 반드시 Build patch 꼭 해주기!! 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "";
		String url = "jdbc:mysql://localhost:3306/banapresso1";
		String uid = "root";
		String upw = "1234";
		// ========== mySql 연결
		
		String banapreeso_url = "https://www.banapresso.com/store";
	
		try {
			driver.get(banapreeso_url);
			Thread.sleep(2000);		// 시작시 2초 지연
			
			int pageNum = 2;
			String store_name = null;
			String store_addr = null;
			
			while (true) {
				List<WebElement> store = driver.findElements(By.className(".store_name_map > i"));		// 매장이름
				List<WebElement> addr = driver.findElements(By.className(".store_name_map > span"));	// 매장주소
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection(url, uid, upw);
					
					if(conn != null) {
						sql = "insert into tb_store (store_name, store_addr) values (?, ?)";
						pstmt = conn.prepareStatement(sql);
						
						for(int i=0; i<=store.size(); i++) {
							store_name = store.get(i).getText();
							store_addr = addr.get(i).getText();
							// 리스트 배열에 저장되어 있는 것을 한줄씩 출력
							
							System.out.println(store_name);	// 매장명 출력
							System.out.println(store_addr);	// 매장주소 출력
							
							pstmt.setString(1, store_name);	// DB저장
							pstmt.setString(2, store_addr);
							pstmt.executeUpdate();
						}
					}
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				if (pageNum <=5) {
					WebElement Nextpage = driver.findElement(
					By.cssSelector(".pagination > ul > li:nth-child("+ pageNum +")"));
					Nextpage.click();
					Thread.sleep(2000);
					pageNum++;
				} else {
					WebElement Nexttab = driver.findElement(By.cssSelector(".store_list_box > .pagination > .btn_page_next > a"));
					Nexttab.click();
					Thread.sleep(2000);
					pageNum = 2;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		driver.close();
		
	}	// 본문 종료

}
