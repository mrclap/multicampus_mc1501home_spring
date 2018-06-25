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

import com.mc1501home.myapp.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private final static String MAPPING = "board/";
	
	@Autowired
	private BoardService service;

//	@RequestMapping(value="/{action}", method= {RequestMethod.GET, RequestMethod.POST})
//	public ModelAndView edit(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
//		String viewName="board/";
//		Map<String, Object> resultMap = new HashMap<String, Object>();
//		if("board".equalsIgnoreCase(action)) {
//			viewName = viewName + action;
//			resultMap = paramMap;
//		}else if("write".equals(action)) {
//			viewName = viewName+action;
//		}else {
//			viewName = viewName+"board";
//		}
//		
//		modelandView.setViewName(viewName);
//		modelandView.addObject("resultMap", resultMap);
//		return modelandView;
//	}
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView, Principal principal) {

		String viewName = MAPPING + action;
		String forwardView = (String) paramMap.get("forwardView") ;

		Map<String, Object> resultMap = new HashMap<String, Object>() ;
		List<Object> resultList = new ArrayList<Object>();

		// divided depending on action value
		if ("write".equalsIgnoreCase(action)) {
		} else if ("insert".equalsIgnoreCase(action)) {
			if(principal != null) {
				paramMap.put("USER_SEQ", principal.getName());
				resultList = (List<Object>)service.saveObject("", paramMap);
				viewName = MAPPING + "board";
			}
		} else if ("update".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.updateObject("", paramMap);
			viewName = MAPPING + "read";
		} else if ("read".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject("", paramMap);
		} else if ("board".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList("", paramMap);
		} else if ("delete".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.deleteObject("", paramMap);
			viewName = MAPPING + "board";
		} else if ("modify".equalsIgnoreCase(action)) {
			resultMap = paramMap;
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
