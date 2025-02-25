package com.callor.student.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	@RequestMapping(value = "/insert", method=RequestMethod.GET)
	public String input() {
		return "student/input";
	}
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {
		return "student/detail";
	}
}
