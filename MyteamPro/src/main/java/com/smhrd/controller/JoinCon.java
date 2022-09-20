package com.smhrd.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class JoinCon implements Command {
		
		public String excute(HttpServletRequest request, HttpServletResponse response) {
			// 데이터 받아오기
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String nick = request.getParameter("nick");
			String birth = request.getParameter("birth");
			String gender = request.getParameter("gender");
			if(gender.equals("남성")) {
				gender = "M";
			}else {
				gender = "F";
			}
			String type = "N";
			
			// 데이터 묶기
			MemberDTO dto = new MemberDTO(id, pw, name, nick, birth, gender, type);
			
			int row = new MemberDAO().join(dto);
			String moveURL;
			//성공실패
			if(row>0) {
				System.out.println("회원가입 성공");
				request.setAttribute("id", id);
				moveURL="./Login.jsp";
			}else {
				System.out.println("회원가입 실패");
				moveURL="./Login.jsp";
			}
			
			return moveURL;
		}
		
}
