package org.zerock.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.mapper.BoardMapper;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class UserController {

	private BoardService service;
	private BoardMapper mapper;

	@GetMapping("/")
	public String movelogin(Model model, Criteria cri) {
		mapper.getList().forEach(board -> log.info(board));
		
		model.addAttribute("list", service.getList(cri));
		

		//히히히히히히히 잘되나?ㅋㅋㅋㅋ
		int total = service.getTotal(cri);

		log.info("cri - log - list: " + cri);
		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "/board/index";
	}


}
