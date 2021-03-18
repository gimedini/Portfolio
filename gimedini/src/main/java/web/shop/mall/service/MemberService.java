package web.shop.mall.service;

import javax.servlet.http.HttpSession;

import web.shop.mall.domain.MemberVO;

public interface MemberService {


	// 회원가입
	public void signup(MemberVO vo) throws Exception;
		
	// 로그인
	public MemberVO signin(MemberVO vo) throws Exception;
		
	// 로그아웃
	public void signout(HttpSession session) throws Exception;	
	
	// 아이디 중복확인
	public MemberVO idCheck(String userId) throws Exception;
	
	// 회원정보 수정
	public void modify(MemberVO vo) throws Exception;
	
	// 닉네임 중복확인
	public MemberVO nameCheck(String userName) throws Exception;
	
	// 회원 탈퇴
	public void withdrawal(MemberVO vo) throws Exception;
	

}
