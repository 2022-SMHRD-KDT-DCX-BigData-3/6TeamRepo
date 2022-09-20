package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
		
		private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
		//회원가입
		public int join(MemberDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.insert("join", dto);
			session.close();
			
			return row;
		}
		// 로그인
		public MemberDTO login(MemberDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			MemberDTO info = session.selectOne("login", dto);
			session.close();
			
			return info;
		}
		
		//회원정보수정
		
		public int update(MemberDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.update("update", dto);
			session.close();
			
			return row;
		}
		
		// 아이디 중복체크
		public boolean idCheck(String mem_id) {
			boolean result = false;
			SqlSession session = sqlSessionFactory.openSession(true);
			String set = session.selectOne("idCheck", mem_id);
			// id가 null이 아니면 중복되는 email 값이 존재한다
			if(set != null) {
				result = true;
			}
			
			return result;
		}
		
		public List<MemberDTO> Member() {
			SqlSession session = sqlSessionFactory.openSession(true);
			List<MemberDTO> getMember = session.selectList("getMember");
			session.close();
			
			return getMember;
		}
		
}
