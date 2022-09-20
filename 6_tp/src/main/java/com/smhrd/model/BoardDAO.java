package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<BoardDTO> selectAllBoard() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<BoardDTO> bdList = session.selectList("selectAllBoard");
		session.close();
		
		return bdList;
	}
	
	// 게시물 삽입메서드
	public int insertBoard(BoardDTO b_vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.Mapper.BoardMapper.insertBoard", b_vo);
		session.close();
		
		return cnt;
	}
	
	//한 게시물 정보만 조회
	public BoardDTO selectOneBoard(int bd_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		//selectOne(한 행만)
		BoardDTO board = session.selectOne("com.smhrd.mapper.BoardMapper.selectOneBoard", bd_seq);
		session.close();
		return board;
	}
	
	public int deleteOneBoard(int bd_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int rowOne = session.delete("deleteOneBoard", bd_seq);
		session.close();
		
		return rowOne;
	}

}
