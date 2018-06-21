package com.mc1501home.myapp.service;

import java.math.BigDecimal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.IndexDao;
import com.mc1501home.myapp.util.CommonUtil;

@Service
public class IndexService {
	@Autowired
	private IndexDao dao;
	
	@Autowired
	private CommonUtil util;
	
	public Object getObject(String sqlMapId, Object dataMap) {
//		sqlMapId = "index.user";
//		Object resultMap = dao.getObject(sqlMapId, dataMap);
		BigDecimal nopeCount = new BigDecimal("0");
		BigDecimal sulgoCount = new BigDecimal("0");
		
		
		sqlMapId = "index.sulgoCount";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		if(resultObject != null) {
			sulgoCount = (BigDecimal)((Map)resultObject).get("SULGO_COUNT");
		}
		
		
		sqlMapId = "index.nopeCount";
		Object nopeObject = dao.getObject(sqlMapId, dataMap);
		if(nopeObject != null) {
			nopeCount = (BigDecimal)((Map)nopeObject).get("NOPE_COUNT");
		}
		
		
		((Map)resultObject).put("SULGO_COUNT", sulgoCount);
		((Map)resultObject).put("NOPE_COUNT", nopeCount);
		
		
		return resultObject;
	}
	
	public Object updateObject(String sqlMapId, Object dataMap) {
		sqlMapId = "board.update";
		Object resultKey = dao.updateObject(sqlMapId, dataMap);
		
		sqlMapId = "board.read";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object saveObject(String sqlMapId, Object dataMap) {
		if(((Map)dataMap).get("USER_SEQ") == null || ((Map)dataMap).get("USER_SEQ") == "") {
			sqlMapId = "sulgo.user";
			Object resultMap = dao.getObject(sqlMapId, dataMap);
			((Map)dataMap).put("USER_SEQ", ((Map)resultMap).get("USER_SEQ"));
		}
		
		sqlMapId = "sulgo.merge";
		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		
		return resultKey;
	}
	
	public Object getList(String sqlMapId, Object dataMap) {
		sqlMapId = "board.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object deleteObject(String sqlMapId, Object dataMap) {
		sqlMapId = "board.delete";
		Object resultKey = dao.deleteObject(sqlMapId, dataMap);
		
		sqlMapId = "board.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
}
