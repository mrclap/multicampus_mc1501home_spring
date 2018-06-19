package com.mc1501home.myapp.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.BoardDao;
import com.mc1501home.myapp.util.CommonUtil;

@Service
public class BoardService {
	
	@Autowired
	private BoardDao dao;
	
	@Autowired
	private CommonUtil util;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		sqlMapId = "board.read";
		
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object saveObject(String sqlMapId, Object dataMap) {
		sqlMapId = "board.insert";
		Map<String, Object>resultMap = (Map)dataMap;
		
		resultMap.put("BOARD_SEQ", util.getUniqueSequence());
		Object resultKey = dao.saveObject(sqlMapId, resultMap);
		
		sqlMapId = "board.list";
		Object resultObject = dao.getList(sqlMapId, resultMap);
		
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
