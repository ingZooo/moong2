package com.kh.moong.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.moong.member.model.vo.Member;

import org.springframework.stereotype.Controller;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.kh.moong.member.model.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("login.me")
	public String login() {
		return "member/login";
	}
	

	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		
		return "member/memberEnrollForm";
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m
							  ,HttpSession session
							  ,Model model) {
		
		int result = memberService.insertMember(m);
		
		if(result>0) {
			session.setAttribute("alertMsg", "회원가입 성공");
			return "redirect:/";
		}else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	
	
	@RequestMapping("loginMember.me")
	public String loginMember(Member m
								,HttpSession session
								,Model model) {
		System.out.println(m);
		Member loginUser = memberService.loginMember(m);
		System.out.println(loginUser);
		if(loginUser == null) {
			model.addAttribute("errorMsg", "로그인 실패");
			return "common/errorPage";
		}else {
			session.setAttribute("loginUser", loginUser);
			return "redirect:/";
		}
		
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		
		session.removeAttribute("loginUser");
		
		return "redirect:/";
	}
	
	
	
	@RequestMapping("idCheck.me")
	@ResponseBody
	public String idCheck(String checkId) {
		
		int count = memberService.idCheck(checkId);
			
		return (count>0) ? "NNNNN" : "NNNNY";
	}
	

}
