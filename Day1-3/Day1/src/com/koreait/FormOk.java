package com.koreait;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormOk
 */
@WebServlet("/FormOk")
public class FormOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); // 한글 안깨짐
		System.out.println("doGet 호출!");
		String data = request.getParameter("data");
		PrintWriter out = response.getWriter();
//		ctrl + shfit + O 누르기
		out.println("<p>데이터 : " + data + "</p>");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); // 한글 안깨짐
		System.out.println("doPost 호출!!");
		String data = request.getParameter("data");
		PrintWriter out = response.getWriter();
//		ctrl + shfit + O 누르기
		out.println("<p>데이터 : " + data + "</p>");

	}

}
