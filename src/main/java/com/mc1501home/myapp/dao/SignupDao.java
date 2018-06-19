package com.mc1501home.myapp.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SignupDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectOne(sqlMapId, dataMap);
		
		return result;
	}
	
	public Object saveObject(String sqlMapId, Object dataMap) {
		Integer result = sqlSession.insert(sqlMapId, dataMap);
		return result;
	}
	
}
