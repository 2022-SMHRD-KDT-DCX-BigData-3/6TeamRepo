package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class LoginCon implements Command{
		
		public String excute(HttpServletRequest request, HttpServletResponse response) {
			
			//데이터 받아오기
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			//데이터 묶어주기
			MemberDTO dto = new MemberDTO(id, pw);
			
			MemberDTO info = new MemberDAO().login(dto);
			
			//성공실패 여부
			
			if(info != null) {

				
				//session에 로그인 정보 유지
				HttpSession session = request.getSession();
				session.setAttribute("info", info);
			}else {
				System.out.println("로그인 실패");
			}
			request.setAttribute("id", id);
			
			return "index.jsp";
		}
		
}
