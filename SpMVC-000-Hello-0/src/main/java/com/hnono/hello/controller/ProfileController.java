package com.hnono.hello.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hnono.hello.models.ProfileVO;

@Controller
public class ProfileController {
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model){
		model.addAttribute("PROFILE");
		return null;
	}
	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public ProfileVO profile(ProfileVO profileVO, Model model) {
	
		List<ProfileVO> profile = new ArrayList<ProfileVO>();
		model.addAttribute("PROFILE", profile);
		return null;
	}
}
