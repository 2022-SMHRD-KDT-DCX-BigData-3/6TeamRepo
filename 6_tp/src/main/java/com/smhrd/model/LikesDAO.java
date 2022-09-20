package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class LikesDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<LikesDTO> LikesBd(){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<LikesDTO> likesBd = session.selectList("LikesBd");
		session.close();
		
		return likesBd;
	}
	
	public List<LikesDTO> LikesAll(){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<LikesDTO> likesAll = session.selectList("LikesAll");
		session.close();
		
		return likesAll;
	}
}
