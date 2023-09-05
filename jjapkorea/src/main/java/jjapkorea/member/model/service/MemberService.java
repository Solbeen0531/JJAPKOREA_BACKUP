package jjapkorea.member.model.service;


import org.apache.ibatis.session.SqlSession;

import jjapkorea.common.MybatisTemplate;
import jjapkorea.member.model.dao.MemberDao;
import jjapkorea.member.model.vo.BusinessVo;
import jjapkorea.member.model.vo.MemberVo;
import jjapkorea.member.model.vo.PersonVo;

public class MemberService {
	private MemberDao dao = new MemberDao();

// login 
	public String login(String mid) {
		String result = null;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.login(session, mid);
		session.close();
		return result;
	}
//businesslogin
	public String businessLogin(String mid) {
		String result = null;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.businessLogin(session, mid);
		session.close();
		return result;
	}
//개인 회원가입 
	public int pSignup(MemberVo vo) {
		int result = 0;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.pSignup(session, vo);
		session.close();
		return result;
	}
	public int personSignup(PersonVo vo) {
		int result = 0;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.personSignup(session, vo);
		session.close();
		return result;
	}
//기업 회원가입 
	public int bSignUp(MemberVo vo) {
		int result = 0;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.bSignUp(session, vo);
		session.close();
		return result;
	}
	public int businessSignUp(BusinessVo vo) {
		int result = 0;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.businessSignUp(session, vo);
		session.close();
		return result;
	}
	public int delete(String mid) {
		int result = 0;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.delete(session, mid);
		session.close();
		return result;
	}
	public void insert() {
		SqlSession session = MybatisTemplate.getSqlSession();
		dao.insert(session);
		session.close();
	}
	public String indexLogin(String mid) {
		String result = null;
		SqlSession session = MybatisTemplate.getSqlSession();
		result = dao.indexLogin(session, mid);
		session.close();
		return result;
	}	
}