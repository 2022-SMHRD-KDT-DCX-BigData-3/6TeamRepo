package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.MemberDTO;

public class CommentCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bd_seq = Integer.parseInt(request.getParameter("bd_seq"));
		String comment = request.getParameter("comment");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String id = info.getMem_id();
		
		CommentDTO rep = new CommentDTO(bd_seq, comment, id);
		CommentDAO dao = new CommentDAO();
		int cnt = dao.insertComment(rep);
		PrintWriter out = response.getWriter();
		if(cnt>0) {
			System.out.println("성공");
			out.print("success");
		}else {
			System.out.println("실패");
			out.print("fail");
		}
		
		return null;
	}

}
