package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CommentDAO {
   private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   //댓글 등록
   public int insertComment(CommentDTO c_to) {
      SqlSession session = sqlSessionFactory.openSession(true);
       int cnt =  session.insert("com.smhrd.mapper.CommentMapper.insertComment",c_to);
      session.close();
      return cnt;
   }
   
   //댓글 삭제
   public int deleteComment(CommentDTO c_to) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt = session.insert("com.smhrd.mapper.CommentMapper.deleteComment",c_to) ;
      session.close();
      return cnt ;
   }
   //댓글 수정
   public int updateComment(CommentDTO c_to) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt = session.update("com.smhrd.mapper.CommentMapper.updateComment",c_to) ;
      session.close();
      return cnt ;
   }
   //댓글 전체보기
   public List<CommentDTO> selectAllComment(int c_to) {
      SqlSession session = sqlSessionFactory.openSession(true);
      List cmt_list = session.selectList("com.smhrd.mapper.CommentMapper.selectAllComment",c_to) ;
      session.close();
      return cmt_list ;
   }
   
   public List<CommentDTO> AllComment(){
	   SqlSession session = sqlSessionFactory.openSession(true);
	   List<CommentDTO> cList = session.selectList("AllComment");
	   session.close();
	   
	   return cList;
   }
}