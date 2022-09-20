package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class FollowDAO {
   private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   
   //팔로우 목록 조회
//   public List<FollowDTO> selectAllFollow(FollowDTO f_to) {
//      SqlSession session = sqlSessionFactory.openSession(true);
//      List<FollowDTO> list = session.selectList("selectAllFollow",f_to);
//      session.close();
//      return list;
//   }
   //팔로우 신청
   public int insertFollow(FollowDTO f_to) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt = session.insert("insertFollow",f_to) ;
      session.close();
      return cnt ;
   }
   //팔로우 취소
   public int deleteFollow(FollowDTO f_to) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt = session.delete("deleteFollow",f_to) ;
      session.close();
      return cnt ;
   }
   
   public List<FollowDTO> selectAllFollowing() {
	   SqlSession session = sqlSessionFactory.openSession(true);
	   List<FollowDTO> Follow = session.selectList("selectAllFollowing");
	   session.close();
	   return Follow;
   }
   
   public List<FollowDTO> FollowingRank(){
	   SqlSession session = sqlSessionFactory.openSession(true);
	   List<FollowDTO> Following = session.selectList("Following");
	   session.close();
	   return Following;
   }
   
}
