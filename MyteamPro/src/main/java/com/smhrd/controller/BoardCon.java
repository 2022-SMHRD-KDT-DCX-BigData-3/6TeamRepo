package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class BoardCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		
		String title = request.getParameter("title");
		String id = request.getParameter("id");
		String file = request.getParameter("file");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO(title, id, file, content);
		
		int row = new BoardDAO().insertBoard(dto);
		String moveURL;
		if(row>0) {
			System.out.println("게시글 성공");
			moveURL="./Board.jsp";
		}else {
			System.out.println("게시글 실패");
			moveURL="./Board.jsp";
		}
		
		return moveURL;
	}

}
