package com.demo.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.ssm.dao.IStudentInfoDao;
import com.demo.ssm.service.IStudentInfoService;

@Service(value="studentInfoService")
public class StudentInfoServiceImpl implements IStudentInfoService {

	@Autowired
	private IStudentInfoDao studentInfoDao;
	
	public Integer countStuInfo() throws Exception{
		return studentInfoDao.countStuInfo();
	}
	
	@Override
	public List<Map<String, Object>> retrieveStuInfoByPage(Map<String, Object> paramMap) throws Exception {
		return studentInfoDao.retrieveStuInfoByPage(paramMap);
	}

	/**
	 * 根据id获取学生信息
	 * @param stuId
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> retrieveStuInfoById(String stuId) throws Exception {
		return studentInfoDao.retrieveStuInfoById(stuId);
	}
}
