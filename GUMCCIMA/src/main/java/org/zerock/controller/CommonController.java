package org.zerock.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.MemberVO;
import org.zerock.service.BoardService;
import org.zerock.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class CommonController {

	private MemberService service;
	
	@GetMapping("/accessError")
	public String accessDenied(Authentication auth, Model model) {

		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
		return "/board/accessError";
	}

	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {

		log.info("error: " + error);
		log.info("logout: " + logout);

		if (error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}
	
	
	@GetMapping("/customSignup")
	public String signupGet(Model model) {
		model.addAttribute("member", new MemberVO());
	    return "/board/customSignup";
		
	}

	@PostMapping("/customSignup")
	public String signupPost(MemberVO member, Model model) {
		try {
			service.signup(member);
		} catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "회원 가입이 완료되었습니다.");
		log.info("signup!");
		
		return "redirect:/board/customLogin";
	}
	
	
	        

	@GetMapping("/customLogout")
	public void logoutGET() {
		

		SecurityContextHolder.getContext().setAuthentication(null);
		log.info("custom logout");
	}

	@PostMapping("/customLogout")
	public void logoutPost() {
	

		SecurityContextHolder.getContext().setAuthentication(null);
		log.info("post custom logout");
	}

}
