package com.mc1501home.myapp.controller;

import java.security.Principal;
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

import com.mc1501home.myapp.service.SulgoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SulgoController {
	
	private final static String MAPPING = "sul-go/";
	
	@Autowired
	private SulgoService service;
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView, Principal principal) {

		String viewName = MAPPING + action;
		String forwardView = (String) paramMap.get("forwardView") ;

		Map<String, Object> resultMap = new HashMap<String, Object>() ;
		List<Object> resultList = new ArrayList<Object>();

		// divided depending on action value
		if ("sul-go".equalsIgnoreCase(action)) {
			if(principal != null) {
				paramMap.put("USER_ID", principal.getName());
				resultMap = (Map<String, Object>)service.getObject("", paramMap);
				resultList = (List<Object>)service.getList("", paramMap);
			}
		} else if("merge".equals(action)) {
			if(principal != null) {
				paramMap.put("USER_ID", principal.getName());
				resultMap = (Map)service.saveObject("", paramMap);
				viewName = "index";
			}
		}
			
		
		
		else {
			viewName = MAPPING + "sul-go";
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
