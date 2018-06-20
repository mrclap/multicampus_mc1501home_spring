package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.SignupDao;
import com.mc1501home.myapp.util.CommonUtil;

@Service
public class SignupService {
	
	@Autowired
	private SignupDao dao;
	
	@Autowired
	private CommonUtil util;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object saveObject(String sqlMapId, Object dataMap) {
		
		sqlMapId = "signup.insert";
		//Map<String, Object> resultMap = (Map)dataMap;
		((Map)dataMap).put("USER_SEQ", util.getUniqueSequence());
		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		
		sqlMapId = "auth.insert";
		Object resultKey1 = dao.saveObject(sqlMapId, dataMap);
		
		
		return resultKey;
	}
	
	
}
