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
		/*String addr = ((Map)dataMap).get("addr").toString();
		if(addr.equals("10")){
			((Map)dataMap).put("addr", "경기도");
		}else if(addr.equals("20")) {
			((Map)dataMap).put("addr","전라도");
		}else {
			((Map)dataMap).put("addr", "경상도");
		}
		
		String hobb = ((Map)dataMap).get("hobbies").toString();
		if(hobb.equals("100")) {
			((Map)dataMap).put("bobbies", "수영");
		}else if(hobb.equals("200")) {
			((Map)dataMap).put("hobbies", "음악감상");
		}else {
			((Map)dataMap).put("hobbies", "공부");
		}*/
		
		
		
	}
}
