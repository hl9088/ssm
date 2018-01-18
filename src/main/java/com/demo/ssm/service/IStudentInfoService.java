package com.demo.ssm.service;

import java.util.List;
import java.util.Map;

public interface IStudentInfoService {
	
	/**
	 * 获取学生信息数量
	 * @return
	 * @throws Exception
	 */
	public Integer countStuInfo() throws Exception;
	
	/**
	 * 获取学生信息
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> retrieveStuInfoByPage(Map<String, Object> paramMap) throws Exception;

	/**
	 * 根据id获取学生信息
	 * @param stuId
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> retrieveStuInfoById(String stuId) throws Exception;
}
