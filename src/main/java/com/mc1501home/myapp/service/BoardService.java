package com.mc1501home.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.BoardDao;

@Service
public class BoardService {
	
	@Autowired
	private BoardDao dao;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object saveObject(String sqlMapId, Object dataMap) {
		sqlMapId = "";
		
		Object resultObject = dao.saveObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object getList(String sqlMapId, Object dataMap) {
		sqlMapId = "board.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object deleteObject(String sqlMapId, Object dataMap) {
		sqlMapId = "";
		
		Object resultObject = dao.deleteObject(sqlMapId, dataMap);
		
		return resultObject;
	}
}
