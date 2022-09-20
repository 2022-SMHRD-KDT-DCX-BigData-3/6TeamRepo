package com.smhrd.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.BoardCon;
import com.smhrd.controller.IdCheckCon;
import com.smhrd.controller.JoinCon;
import com.smhrd.controller.LoginCon;
import com.smhrd.controller.LogoutCon;
import com.smhrd.controller.UpdateCon;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// url mapping *.do
			// * == 전체
			// .do 확장자가 붙으면 전부 FrontController로 요청하도록 만든 것
			
			request.setCharacterEncoding("UTF-8");
		
			String uri = request.getRequestURI();
			// /maven_MessageSystem_board/LoginCon.do
			String project = request.getContextPath();
			// /maven_MessageSystem_board
			
			// 문자열 잘라내기 substring
			String requestURI = uri.substring(project.length()+1);
			// LoginCon.do
			
			// 로그인 메소드
			if(requestURI.equals("LoginCon.do")) {
				LoginCon con = new LoginCon();
				String moveURL = con.excute(request, response);
				RequestDispatcher rd = request.getRequestDispatcher(moveURL);
				rd.forward(request, response);
			}
			//회원가입 메소드
			else if(requestURI.equals("JoinCon.do")) {
				JoinCon con = new JoinCon();	
				String moveURL = con.excute(request, response);
				RequestDispatcher rd = request.getRequestDispatcher(moveURL);
				rd.forward(request, response);
			}
			
			// 로그아웃 메소드
			else if(requestURI.equals("LogoutCon.do")) {
				LogoutCon con = new LogoutCon();	
				String moveURL = con.excute(request, response);
				RequestDispatcher rd = request.getRequestDispatcher(moveURL);
				rd.forward(request, response);
			}
			// 업데이트 기능
			else if(requestURI.equals("UpdateCon.do")) {
				UpdateCon con = new UpdateCon();
				String moveURL = con.excute(request, response);
				RequestDispatcher rd = request.getRequestDispatcher(moveURL);
				rd.forward(request, response);
			}
			
			else if(requestURI.equals("IdCheckCon.do")) {
				IdCheckCon con = new IdCheckCon();
				String moveURL = con.excute(request, response);
				if(moveURL != null) {
					RequestDispatcher rd = request.getRequestDispatcher(moveURL);
					rd.forward(request, response);
				}
			}
			
			else if(requestURI.equals("BoardCon.do")) {
				BoardCon con = new BoardCon();
				String moveURL = con.excute(request, response);
				RequestDispatcher rd = request.getRequestDispatcher(moveURL);
				rd.forward(request, response);
			}
			
			
			
	}

}
