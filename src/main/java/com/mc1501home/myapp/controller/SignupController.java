package com.mc1501home.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mc1501home.myapp.service.SignupService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "signup")
public class SignupController {
	
	private final static String MAPPING = "/signup/";
	
	@Autowired
	private SignupService service;

//	@RequestMapping(value="/{action}", method= {RequestMethod.GET, RequestMethod.POST} )
//	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap,
//							@PathVariable String action, ModelAndView modelandView) {
//		String viewName = "signup";
//		Map<String, Object> resultMap = new HashMap<String, Object>();
//		
//		if("read".equalsIgnoreCase(action)) {
//			resultMap = (Map<String, Object>) service.getObject("", paramMap);
//			modelandView.addObject("resultMap", resultMap);
//			action = "/read";
//		} else{
//			//ȸ������â���� �̵�
//			System.out.println("Entering signup mode");
//			action = "/signup";
//		}
//			
//		viewName = viewName + action;
//		modelandView.setViewName(viewName);
//		
//		return modelandView;
//	}
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {

		String viewName = MAPPING + action ;
		String forwardView = (String) paramMap.get("forwardView") ;

		Map<String, Object> resultMap = new HashMap<String, Object>() ;
		List<Object> resultList = new ArrayList<Object>();

		// divided depending on action value
		if ("signup".equalsIgnoreCase(action)) {
		} else if ("update".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("", paramMap);
			paramMap.put("action", action);
		} else if ("insert".equalsIgnoreCase(action)) {
			service.saveObject("", paramMap);
			paramMap.put("action", "index");
		}
		
		if(forwardView != null){
			viewName = forwardView;
		}
		
		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
	}
}
