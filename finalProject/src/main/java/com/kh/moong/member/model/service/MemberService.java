package com.kh.moong.member.model.service;

import com.kh.moong.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m);
	
	int insertMember(Member m);
	
	//int updateMember(Member m);
		
	//int deleteMember(String userId);
		
	int idCheck(String chkId);
}
