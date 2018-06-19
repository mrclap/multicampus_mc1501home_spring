package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.SignupDao;

@Service
public class SignupService {
	
	@Autowired
	private SignupDao dao;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object saveObject(String sqlMapId, Object dataMap) {
		Object resultObject = dao.saveObject(sqlMapId, dataMap);
		
		return resultObject;
	}
}
