package com.runsystem.booking.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 

@Controller
public class DemoController {

	@RequestMapping("/events")  
	@ResponseBody
	public String events(HttpServletRequest request)  {
		CustomRecEventsManager evs = new CustomRecEventsManager(request); 
		return evs.run();
	}

	@RequestMapping("/")
	public ModelAndView scheduler(HttpServletRequest request) throws Exception {
		ModelAndView mnv = new ModelAndView("layout", "admin","isnotadmin");
		return mnv;
	}
	
	@RequestMapping("/admin@123")
	public ModelAndView scheduleradmin(HttpServletRequest request) throws Exception {
		ModelAndView mnv = new ModelAndView("layout", "admin","isadmin"); 
		return mnv;
	}
}
