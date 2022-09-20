package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;

public class LogoutCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		
		// 로그아웃 기능 : 로그인 정보를 삭제하기!
		HttpSession session = request.getSession();
		session.removeAttribute("info");
		// session.invalidate(); -> 전체삭제
		
		return "Main.jsp";
	}

}
