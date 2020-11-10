package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MyController {

	@RequestMapping("/")
	public String testPage() {
		return "test";
	}
	
	@RequestMapping("/test")
	public String redirectTest() {
		
		return "test";
	}

}
