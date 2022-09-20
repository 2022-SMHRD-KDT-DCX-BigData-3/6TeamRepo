package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class UpdateCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String id = request.getParameter("id");
		String nick = request.getParameter("nick");
		
		MemberDTO dto = new MemberDTO(id, nick);
		
		int row = new MemberDAO().update(dto);
		
		if(row>0) {
			System.out.println("회원정보 수정 성공");
			
			//바뀐 정보로 info 세션을 업데이트
			HttpSession session = request.getSession();
			session.setAttribute("info", dto);
		} else {
			System.out.println("회원정보 수정 실패");
		}
		
		return "profile.jsp";
	}

}
