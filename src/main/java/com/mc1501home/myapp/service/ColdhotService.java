package com.mc1501home.myapp.service;

import java.math.BigDecimal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.ColdhotDao;
import com.mc1501home.myapp.util.CommonUtil;

@Service
public class ColdhotService {
	@Autowired
	private ColdhotDao dao;
	
	@Autowired
	private CommonUtil util;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		sqlMapId = "coldhot.user";
		Object resultMap = dao.getObject(sqlMapId, dataMap);
		
		sqlMapId = "coldhot.read";
		Object resultObject = dao.getObject(sqlMapId, resultMap);
		
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
			sqlMapId = "coldhot.user";
			Object resultMap = dao.getObject(sqlMapId, dataMap);
			((Map)dataMap).put("USER_SEQ", ((Map)resultMap).get("USER_SEQ"));
		}
		
		sqlMapId = "coldhot.merge";
		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		
		BigDecimal coldCount = new BigDecimal("0");
		BigDecimal hotCount = new BigDecimal("0");
		
		
		sqlMapId = "index.hotCount";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		if(resultObject != null) {
			hotCount = (BigDecimal)((Map)resultObject).get("HOT_COUNT");
		}
		
		
		sqlMapId = "index.coldCount";
		Object coldObject = dao.getObject(sqlMapId, dataMap);
		if(coldObject != null) {
			coldCount = (BigDecimal)((Map)coldObject).get("COLD_COUNT");
		}
		
		BigDecimal coldhotCount = hotCount.subtract(coldCount);
		
		
		((Map)resultObject).put("HOT_COUNT", hotCount);
		((Map)resultObject).put("COLD_COUNT", coldCount);
		((Map)resultObject).put("COLD_HOT_COUNT", coldhotCount);
		
		
		return resultObject;
	}
	
	public Object getList(String sqlMapId, Object dataMap) {
		sqlMapId = "sulgo.list";
		
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
