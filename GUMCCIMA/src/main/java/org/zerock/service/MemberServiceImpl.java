package org.zerock.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {


	@Setter(onMethod_ = @Autowired)
	private MemberMapper membermapper;

	@Override
	public void signup(MemberVO member) {
		membermapper.signup(member);
	}

}
